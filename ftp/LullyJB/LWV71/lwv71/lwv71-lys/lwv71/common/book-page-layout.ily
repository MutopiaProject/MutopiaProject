%%% -*- Mode: Scheme -*-
%%%)
#(begin

(use-modules (oop goops describe)
	     (oop goops)
             (srfi srfi-1)
             (srfi srfi-39)
             (ice-9 format)
             (ice-9 pretty-print)
	     (scm paper-system)
	     (scm page))

;;;
;;; utilities from scm/layout-page-layout.scm before it was broken
;;; 

(define (page-breaking-wrapper paper-book)
  "Compute line and page breaks by calling the page-breaking paper variable,
  then performs the post process function using the page-post-process paper
  variable. Finally, return the pages."
  (let* ((paper (ly:paper-book-paper paper-book))
         (pages ((ly:output-def-lookup paper 'page-breaking) paper-book)))
    ((ly:output-def-lookup paper 'page-post-process) paper pages)
    pages))

(define (post-process-pages layout pages)
  "If the write-page-layout paper variable is true, dumps page breaks
  and tweaks."
  (if (ly:output-def-lookup layout 'write-page-layout #f)
      (write-page-breaks pages)))

;;;
;;; Utilities for computing line distances and positions
;;;
(define (line-extent line)
  "Return the extent of the line (its lowest and highest Y-coordinates)."
  (paper-system-extent line Y))

(define (line-height line)
  "Return the system height, that is the length of its vertical extent."
  (interval-length (line-extent line)))

(define (line-next-space line next-line layout)
  "Return space to use between `line' and `next-line'.
  `next-line' can be #f, meaning that `line' is the last line."
  (let* ((title (paper-system-title? line))
	 (next-title (and next-line (paper-system-title? next-line))))
    (cond ((and title next-title)
	   (ly:output-def-lookup layout 'between-title-space))
	  (title
	   (ly:output-def-lookup layout 'after-title-space))
	  (next-title
	   (ly:output-def-lookup layout 'before-title-space))
	  (else
	   (ly:prob-property
	    line 'next-space
	    (ly:output-def-lookup layout 'between-system-space))))))

(define (line-next-padding line next-line layout)
  "Return padding to use between `line' and `next-line'.
  `next-line' can be #f, meaning that `line' is the last line."
  (ly:prob-property
   line 'next-padding
   (ly:output-def-lookup layout 'between-system-padding)))


(define (line-minimum-distance line next-line layout ignore-padding)
  "Minimum distance between `line' reference position and `next-line'
 reference position. If next-line is #f, return #f."
  (and next-line
       (max 0 (- (+ (interval-end (line-extent next-line))
		    (if ignore-padding 0 (line-next-padding line next-line layout)))
		 (interval-start (line-extent line))))))

(define (line-ideal-distance line next-line layout ignore-padding)
  "Ideal distance between `line' reference position and `next-line'
 reference position. If next-line is #f, return #f."
  (and next-line
       (+ (max 0 (- (+ (interval-end (paper-system-staff-extents next-line))
		       (if ignore-padding 0 (line-next-padding line next-line layout)))
		    (interval-start (paper-system-staff-extents line))))
	  (line-next-space line next-line layout))))

(define (first-line-position line layout)
  "Position of the first line on page"
  (max (+ (ly:output-def-lookup layout 'page-top-space)
	  (interval-end (paper-system-staff-extents line)))
       (interval-end (line-extent line))))

(define (line-ideal-relative-position line prev-line layout ignore-padding)
  "Return ideal position of `line', relative to `prev-line' position.
  `prev-line' can be #f, meaning that `line' is the first line."
  (if (not prev-line)
      ;; first line on page
      (first-line-position line layout)
      ;; not the first line on page
      (max (line-minimum-distance prev-line line layout ignore-padding)
	   (line-ideal-distance prev-line line layout ignore-padding))))

(define (line-minimum-relative-position line prev-line layout ignore-padding)
  "Return position of `line', relative to `prev-line' position.
  `prev-line' can be #f, meaning that `line' is the first line."
  (if (not prev-line)
      ;; first line on page
      (first-line-position line layout)
      ;; not the first line on page
      (line-minimum-distance prev-line line layout ignore-padding)))

(define (line-minimum-position-on-page line prev-line prev-position page)
  "If `line' fits on `page' after `prev-line', which position on page is
  `prev-position', then return the line's postion on page, otherwise #f.
  `prev-line' can be #f, meaning that `line' is the first line."
  (let* ((layout (ly:paper-book-paper (page-property page 'paper-book)))
         (position (+ (line-minimum-relative-position line prev-line layout #f)
                      (if prev-line prev-position 0.0)))
         (bottom-position (- position
                             (interval-start (line-extent line)))))
    (and (or (not prev-line)
             (< bottom-position (page-printable-height page)))
         position)))

(define (stretchable-line? line)
  "Say whether a system can be stretched."
  (not (ly:prob-property? line 'is-title)))
;;	   (let ((system-extent (paper-system-staff-extents line)))
;;	     (= (interval-start system-extent)
;;		(interval-end	system-extent))))))

(define (page-maximum-space-to-fill page lines paper)
  "Return the space between the first line top position and the last line
  bottom position. This constitutes the maximum space to fill on `page'
  with `lines'."
  (let ((last-line (car (last-pair lines))))
    (- (page-printable-height page)
       (first-line-position (first lines) paper)
       (ly:prob-property last-line
			 'bottom-space 0.0)
       (- (interval-start (line-extent last-line))))))

(define (page-maximum-space-left page)
  (let ((paper (ly:paper-book-paper (page-property page 'paper-book))))
    (let bottom-position ((lines (page-property page 'lines))
                          (prev-line #f)
                          (prev-position #f))
      (if (null? lines)
          (page-printable-height page)
          (let* ((line (first lines))
                 (position (line-minimum-position-on-page
                            line prev-line prev-position page)))
            (if (null? (cdr lines))
                (and position
                     (- (page-printable-height page)
                        (- position
                           (interval-start (line-extent line)))))
                (bottom-position (cdr lines) line position)))))))

;;;
;;; Utilities for distributing systems on a page
;;;

(define (space-systems space-to-fill lines ragged paper ignore-padding)
  "Compute lines positions on page: return force and line positions as a pair.
 force is #f if lines do not fit on page."
  (let* ((empty-stencil (ly:make-stencil '() '(0 . 0) '(0 . 0)))
	 (empty-prob (ly:make-prob 'paper-system (list `(stencil . ,empty-stencil))))
	 (cdr-lines (append (cdr lines)
			    (if (<= (length lines) 1)
				(list empty-prob)
				'())))
	 (springs (map (lambda (prev-line line)
			 (list (line-ideal-distance prev-line line paper ignore-padding)
			       (/ 1.0 (line-next-space prev-line line paper))))
		       lines
		       cdr-lines))
	 (rods (map (let ((i -1))
		      (lambda (prev-line line)
			(set! i (1+ i))
			(list i (1+ i)
			      (line-minimum-distance prev-line line paper ignore-padding))))
		       lines
		       cdr-lines))
	 (space-result
	  (ly:solve-spring-rod-problem springs rods space-to-fill ragged)))
    (cons (car space-result)
	  (map (let ((topskip (first-line-position (first lines) paper)))
		 (lambda (y)
		   (+ y topskip)))
	       (cdr space-result)))))


;;;
;;; Page breaking
;;;

(define (maximum-lines-fitting-on-page page lines)
  "Return a three element list containing lines fitting on page
  and the rest lines.
  Page break requests are accounted for."
  (loop for rest-lines = (cdr lines) then (if (null? rest-lines)
                                              (list)
                                              (cdr rest-lines))
        for prev-line = #f then line
        for line in lines
        for next-line = (and (not (null? rest-lines))
                             (first rest-lines))
        for prev-position = #f then position
        for position = (line-minimum-position-on-page
                        line prev-line prev-position page)
        for add-line? = (or (not prev-line)
                            (and
                             ;; the line fits on page
                             position
                             ;; a page break was not required before this line
                             (> (ly:prob-property line 'penalty 0.0) -9999)
                             ;; if next line exists, and this line is a score title,
                             ;; then next line should also fit on page
                             (or (not next-line)
                                 (not (eq? #t (ly:prob-property? line
                                                                 'score-title)))
                                 (line-minimum-position-on-page
                                  next-line line position page))))
        while add-line?
        collect line into page-lines
        finally (return (list page-lines
                              (if add-line?
                                  rest-lines ;; null
                                  (cons line rest-lines))))))

(define (page-minimum-last-position page)
  (loop for line in (page-property page 'lines)
        for prev-line = #f then line
        for prev-position = #f then position
        for position = (line-minimum-position-on-page
                        line prev-line prev-position page)
        finally (return position)))

(define (make-filled-pages paper-book book-lines first-page-number last-pages)
  "Return a list of pages containg all lines. Their positions are not computed."
  (let* ((layout (ly:paper-book-paper paper-book))
         (pages (loop for lines = book-lines then rest-lines
                      while (not (null? lines))
                      for page-number from first-page-number
                      by 1
                      for page = (make-page paper-book
                                            'is-last #f
                                            'page-number page-number)
                      for result = (maximum-lines-fitting-on-page page lines)
                      for page-lines = (first result)
                      for rest-lines = (second result)
                      do (begin
                           (format #t "[~a]" page-number)
                           (page-set-property! page 'lines page-lines))
                      collect page)))
    (if (not last-pages)
        ;; there are other pages coming after ==> no last page treatment
        pages
        ;; last page final treatment
        (let* ((reversed-pages (reverse! pages))
               (last-page (make-page
                           paper-book
                           'is-last #t
                           'page-number (page-property (car reversed-pages)
                                                       'page-number)
                           'lines       (page-property (car reversed-pages)
                                                       'lines)))
               (last-space-left (page-maximum-space-left last-page)))
          (if (and last-space-left (> last-space-left 0.0))
              ;; lines fit on last page, done
              (reverse! (cons last-page (cdr reversed-pages)))
              ;; extract one line from the so-said last page
              ;; and put it on the real last page
              (let* ((one-but-last (car reversed-pages))
                     (rev-last-lines (reverse! (page-property one-but-last
                                                              'lines)))
                     (real-last (make-page
                                 paper-book
                                 'is-last #t
                                 'lines (list (car rev-last-lines))
                                 'page-number (1+ (page-property last-page
                                                                 'page-number)))))
                (page-set-property! one-but-last 'lines
                                    (reverse (cdr rev-last-lines)))
                (reverse! (cons real-last
                                (cons one-but-last (cdr reversed-pages))))))))))

(define (page-stretched-line-position page space-to-fill ragged?)
  (cdr (space-systems space-to-fill
                      (page-property page 'lines)
                      ragged?
                      (ly:paper-book-paper (page-property page 'paper-book))
                      #f)))

(define (page-set-line-positions! page ragged?)
  (let* ((layout (ly:paper-book-paper (page-property page 'paper-book)))
         (lines (page-property page 'lines))
         (space (min (page-maximum-space-to-fill page lines layout)
                     (* (ly:output-def-lookup layout 'space-stretch-factor)
                        (page-minimum-last-position page)))))
    (if (null? (cdr lines))
        (page-set-property! page 'configuration
                            (list (first-line-position (car lines)
                                                       layout)))
        (page-set-property! page 'configuration
                            (page-stretched-line-position page space ragged?)))))

(define (naive-page-breaks book-lines paper-book
                             first-page-number last-lines ragged-last)
  "Return pages as a list starting with 1st page. Each page is a 'page Prob."
  (if (null? book-lines)
      (list (make-page paper-book
                       'is-last #f
                       'page-number first-page-number
                       'lines (list)))
      (let ((book-pages (make-filled-pages paper-book book-lines
                                           first-page-number last-lines))
            (layout (ly:paper-book-paper paper-book)))
        ;; compute line positions
        (loop for page in book-pages
              for page-number from first-page-number by 1
              for rest-pages = book-pages then (cdr rest-pages)
              for last? = (null? (cdr rest-pages))
              for ragged? = (or (and last? ragged-last)
                                (eq? #t (ly:output-def-lookup layout
                                                              'ragged-bottom)))
              do (page-set-line-positions! page ragged?))
        book-pages)))

(define (my-page-break-wrapper-aux paper-book break-page-function
                                lines current-lines previous-pages current-page-number)
  (let ((layout (ly:paper-book-paper paper-book)))
    (if (null? lines)
        (if (null? current-lines)
            previous-pages
            (append! previous-pages
                     (break-page-function (reverse! current-lines)
                                          paper-book
                                          current-page-number
                                          #t
                                          (eq? #t (ly:output-def-lookup
                                                   layout
                                                   'ragged-last-bottom)))))
        (let ((line (first lines)))
          (if (eq? #t (ly:prob-property line 'break-before #f))
              ;; a page break is requested here
              (let* ((last-line (null? (cdr lines)))
                     (ragged-last (or (eq? #t (ly:prob-property
                                               line 'ragged-bottom-before))
                                      (and last-line
                                           (eq? #t (ly:output-def-lookup
                                                    layout
                                                    'ragged-last-bottom)))))
                     (new-pages (break-page-function (reverse! current-lines)
                                                     paper-book
                                                     current-page-number
                                                     last-line
                                                     ragged-last))
                     (new-page-number (+ current-page-number
                                         (length new-pages))))
                (my-page-break-wrapper-aux paper-book
                                        break-page-function
                                        (if (eq? #t (ly:prob-property line 'void #f))
                                            (cdr lines)
                                            lines)
                                        (list)
                                        (append! previous-pages new-pages)
                                        new-page-number))
              ;; add the line to the current line list
              (my-page-break-wrapper-aux paper-book
                                      break-page-function
                                      (cdr lines)
                                      (cons line current-lines)
                                      previous-pages
                                      current-page-number))))))

(define-public (my-page-break-wrapper paper-book)
  "Computes the book pages from:
 - look for page break requests in book-lines
 - call the page breaking function on each chunk of lines
 - computes page stencils
 - call the page post process function
 - finally, return the page list.
The page breaking and post process functions are the
page-breaking-function and page-post-process-function defined in the
\\paper block, respectively."
  (let ((layout (ly:paper-book-paper paper-book))
        (book-lines (ly:paper-book-systems paper-book)))
    (ly:message (_ "Calculating page breaks... "))
    (let ((book-pages (my-page-break-wrapper-aux
                       paper-book
                       naive-page-breaks
                       book-lines
                       (list)
                       (list)
                       (ly:output-def-lookup
                        layout 'first-page-number))))
      book-pages)))

) % matches opening #(

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% \paper block
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\paper {
  #(define-public score-title-properties
     '((is-title . #t)
       (score-title . #t)
       (book-title . #f)))
  #(define-public book-title-properties
     '((is-title . #t)
       (score-title . #t)
       (book-title . #t)))
  
  space-stretch-factor = #1.3
  
  #(define page-breaking my-page-break-wrapper)
}

newPage = 
#(define-music-function (parser location) ()
  #{ 
    \overrideProperty #"Score.NonMusicalPaperColumn"
      #'line-break-system-details #'((void . #t) (break-before . #t))
    r
  #})

newChapter = 
#(define-music-function (parser location) ()
  #{
    \overrideProperty #"Score.NonMusicalPaperColumn"
      #'line-break-system-details
      #'((void . #t) (break-before . #t) (ragged-bottom-before . #t))
    r
  #})
