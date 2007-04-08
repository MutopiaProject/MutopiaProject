%%% -*- Mode: Scheme -*-
%%%)
#(begin

(use-modules (oop goops describe)
	     (oop goops)
             (ice-9 pretty-print)
	     (scm paper-system)
	     (scm page))

(define (write-page-tweaks pages)
  "Dump page breaks and tweaks"
  (define tweaks (make-hash-table 100))
  
  (define (record what property-pairs)
    (let ((key (ly:output-def-lookup (ly:grob-layout what)
                                     'tweak-key
                                     "tweaks"))
          (when (ly:grob-property what 'when)))
      (if (not (hash-ref tweaks key))
	  (hash-set! tweaks key '()))
      (hash-set! tweaks key
		 (acons when property-pairs
			(hash-ref tweaks key)))))
  
  (define (graceless-moment mom)
    (ly:make-moment (ly:moment-main-numerator mom)
                    (ly:moment-main-denominator mom)
                    0
                    0))
  
  (define (moment->skip mom)
    (let ((main (if (> (ly:moment-main-numerator mom) 0)
                    (format "\\skip 1*~a/~a"
                            (ly:moment-main-numerator mom)
                            (ly:moment-main-denominator mom))
                    ""))
          (grace (if (< (ly:moment-grace-numerator mom) 0)
                     (format "\\grace { \\skip 1*~a/~a }"
                             (- (ly:moment-grace-numerator mom))
                             (ly:moment-grace-denominator mom))
                     "")))
      (format "~a~a" main grace)))
  
  (define (dump-tweaks out-port tweak-list last-moment)
    (if (not (null? tweak-list))
	(let* ((now (caar tweak-list))
               (these-tweaks (cdar tweak-list)))
	  (format out-port "~a~%~a~%\\spacingTweaks #'~a~%"
                  (moment->skip (ly:moment-sub now last-moment))
                  (cond (#f;(assoc-get 'page-break these-tweaks #f)
                         "\\pageBreak\n")
                        (#f;(assoc-get 'line-break these-tweaks #f)
                         "\\break\n")
                        (else ""))
                  (with-output-to-string
                    (lambda ()
                      (pretty-print
                       (assoc-get 'spacing-parameters these-tweaks '())))))
	  (dump-tweaks out-port (cdr tweak-list) (graceless-moment now)))))

  (define (dump-all-tweaks)
    (let* ((paper (ly:paper-book-paper (page-property  (car pages) 'paper-book)))
           (parser (ly:output-def-parser paper))
           (name  (format "~a-page-layout.ly"
                          (ly:parser-output-name parser)))
           (out-port (open-output-file name)))
      (ly:progress "~%Writing page layout to ~a" name)
      (hash-for-each
       (lambda (key val)
         (format out-port "~%~a = {" key)
         (dump-tweaks out-port (reverse val) (ly:make-moment 0 1))
	 (display "}" out-port))
       tweaks)
      (close-port out-port)))

  (define (handle-page page)
    (define index 0)
    (define line-heights
      (map (lambda (line)
             (interval-length (paper-system-extent line Y)))
           (page-lines page)))
    (define line-paddings
      (map (lambda (line)
             (ly:prob-property
              line 'next-padding
              (ly:output-def-lookup (ly:paper-book-paper
                                     (page-property page 'paper-book))
                                    'between-system-padding)))
           (page-lines page)))
    (define music-lines
      (map (lambda (line)
             (not (ly:prob-property? line 'is-title)))
           (page-lines page)))
    (define system-count (length (page-lines page)))
    (define (handle-system sys)
      (let* ((paper (ly:paper-book-paper (page-property page 'paper-book)))
             (props `((line-break . #t)
                      (spacing-parameters
                       . ((page-number . ,(page-property page 'page-number))
                          (this-system-index . ,index)
                          (system-count . ,system-count)
                          (system-heights . ,line-heights)
                          (system-paddings . ,line-paddings)
                          (music-systems . ,music-lines)
                          (page-space-left . ,(page-property page 'space-left)))))))
	(if (equal? (car (page-lines page)) sys)
	    (set! props (cons '(page-break . #t)
			      props)))
	(if (not (ly:prob-property? sys 'is-title))
	    (record  (ly:spanner-bound (ly:prob-property sys 'system-grob) LEFT)
		     props))
	(set! index (1+ index))))
    (for-each handle-system (page-lines page)))

  (for-each handle-page pages)
  (dump-all-tweaks))

(define (post-process-pages layout pages)
  (if (ly:output-def-lookup layout 'write-page-layout #f)
      (write-page-tweaks pages)))

(define-public (naive-page-breaks book-lines paper-book)
  "Return pages as a list starting with 1st page. Each page is a 'page Prob."

  (define make-new-page
    (let* ((paper (ly:paper-book-paper paper-book))
           (page-alist (layout->page-init paper))
           (current-page-num (1- (ly:output-def-lookup paper 'first-page-number))))
      (lambda (last?)
        "make an empty page"
        (set! current-page-num (1+ current-page-num))
        (if (= 0 (modulo current-page-num 4))
            (format #t "[~a]" current-page-num))
        (make-page page-alist
                   'paper-book paper-book
                   'is-last last?
                   'page-number current-page-num))))

  (define (copy-page-last page)
    (make-page (layout->page-init (ly:paper-book-paper paper-book))
               'paper-book paper-book
               'is-last #t
               'page-number (page-property page 'page-number)
               'bottom-position (page-property page 'bottom-position)
               'configuration (page-property page 'configuration)
               'lines (page-property page 'lines)))

  (define (line-height line)
    (interval-length (paper-system-extent line Y)))

  (define (after-line-padding line)
    (ly:prob-property line 'next-padding
                      (ly:output-def-lookup (ly:paper-book-paper paper-book)
                                            'between-system-padding)))
  
  (define (fix-line-extent! line)
    (let ((stencil (paper-system-stencil line))
          (amount (- (interval-end (paper-system-extent line Y)))))
      (set! (ly:prob-property line 'stencil)
            (ly:stencil-translate-axis stencil amount Y))
      line))
  
  (define (push-line! page lines)
    "If there is enough space left on page, add line and return #t.
     Otherwise return #f."
    (let ((previous-line (and (not (null? (page-property page 'lines)))
                              (car (page-property page 'lines))))
           (line (car lines))
           (next-line (and (not (null? (cdr lines)))
                           (cadr lines))))
      (cond ((not previous-line)
             ;; first line to be inserted in this page
             (page-set-property! page 'lines (list line))
             (page-set-property! page 'configuration (list 0.0))
             (page-set-property! page 'bottom-position
                                 (line-height line))
             #t)
            ((< (ly:prob-property line 'penalty 0.0) -9999)
             ;; if page break asked, this page is finished
             #f)
            ((and next-line
                  (not (ly:prob-property? next-line 'is-title))
                  (> (ly:prob-property next-line 'penalty 0.0) 9999)
                  (> (+ (page-property page 'bottom-position)
                        (after-line-padding previous-line)
                        (line-height line)
                        (after-line-padding line)
                        (line-height next-line))
                     (page-printable-height page)))
             ;; if a no page break asked after this line,
             ;; and this line + next line don't fit in the page,
             ;; then this page is finished
             #f)
            ((> (+ (page-property page 'bottom-position)
                   (after-line-padding previous-line)
                   (line-height line))
                (page-printable-height page))
             ;; not enough space for this line 
             ;; this page is finished
             #f)
            (else
             ;; this line is inserted in the page
             (page-set-property! page 'lines
                                 (cons line
                                       (page-property page 'lines)))
             (page-set-property! page 'configuration
                                 (cons (+ (page-property page 'bottom-position)
                                          (after-line-padding previous-line))
                                       (page-property page 'configuration)))
             (page-set-property! page 'bottom-position
                                 (+ (page-property page 'bottom-position)
                                    (after-line-padding previous-line)
                                    (line-height line)))
             #t))))

  (define (fill-page! page lines)
    "Return a page, filled with some lines, and the rest lines, as a cons."
    (if (null? lines)
        (cons page (list))
        (let ((result (push-line! page lines)))
          (if result
              (fill-page! page (cdr lines))
              (cons page lines)))))
      
  (define (fill-pages-with-lines previous-pages lines)
    "Return a list of pages, in reverse order, filled with the lines."
    (if (null? lines)
        previous-pages
        (let* ((page+rest-lines (fill-page! (make-new-page #f) lines))
               (page (car page+rest-lines))
               (rest-lines (cdr page+rest-lines)))
          (fill-pages-with-lines (cons page previous-pages) rest-lines))))

  (define (get-pages lines)
    "Get all pages of the book, filled with lines."
    (let ((pages (fill-pages-with-lines (list) lines)))
      ;; last page special treatement
      (let* ((last-page (copy-page-last (car pages)))
             (bottom-position (page-property last-page 'bottom-position)))
        (if (< bottom-position (page-printable-height last-page))
            (reverse! (cons last-page (cdr pages)))
            ;; we need an extra page
            (let* ((real-last (make-new-page #t))
                   (one-but-last (car pages))
                   (last-lines (page-property one-but-last 'lines)))
              (page-set-property! one-but-last 'lines
                                  (cdr last-lines))
              (page-set-property! one-but-last 'configuration
                                  (cdr (page-property one-but-last
                                                      'configuration)))
              (page-set-property! real-last 'lines (list (car last-lines)))
              (page-set-property! real-last 'configuration (list 0.0))
              (reverse! (cons real-last
                              (cons one-but-last (cdr pages)))))))))
        
    (ly:message (_ "Calculating page breaks... "))
    (let ((book-pages (get-pages (map fix-line-extent! book-lines))))
      ;; re-order page lines
      (for-each (lambda (page)
                  (page-set-property! page 'lines
                                      (reverse! (page-property page 'lines)))
                  (page-set-property! page 'configuration
                                      (reverse! (page-property page 'configuration))))
                book-pages)
      (for-each page-stencil book-pages)
      (post-process-pages (ly:paper-book-paper paper-book)
                          book-pages)
      book-pages))

) % matches opening #(
