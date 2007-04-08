% -*- Mode: Scheme -*-
#(use-modules (scm layout-page-dump)
              (ice-9 format)
              (ice-9 pretty-print))

#(define (book-post-process-pages layout pages)
  "If the write-page-layout paper variable is true, dumps page breaks
  and tweaks."
  (if (ly:output-def-lookup layout 'write-page-layout #f)
      (write-page-breaks-and-score-indices pages)))

#(define (write-page-breaks-and-score-indices pages)
   (write-page-breaks pages)
   ;; dump two tables:
   ;; 1/ (page-number . (list of score ids))
   ;; 2/ (score-id . page-number)
   (let* ((paper (ly:paper-book-paper (page-property  (car pages) 'paper-book)))
          (parser (ly:output-def-parser paper))
          (name	(format "~a-indices.ly"
                        (ly:parser-output-name parser)))
          (out-port (open-output-file name)))
     (ly:message "Writing score page number to ~a" name)
     (let* ((prev-key-in-book #f)
            (score-page-numbers (list))
            (page-scores
             (let extract-score-pages ((pages pages)
                                       (page-scores (list)))
               (if (null? pages)
                   (begin
                     (set! score-page-numbers (reverse! score-page-numbers))
                     (reverse! page-scores))
                   (let* ((page (first pages))
                          (page-number (page-property page 'page-number))
                          (prev-key-in-score #f))
                     (extract-score-pages
                      (cdr pages)
                      (cons (let loop-page-line ((lines (page-property page 'lines))
                                                 (this-page-scores (list)))
                              (if (null? lines)
                                  (cons page-number (reverse! this-page-scores))
                                  (let* ((line (car lines))
                                         (key-string (if (ly:prob-property? line 'is-title)
                                                         #f
                                                         (ly:output-def-lookup
                                                          (ly:grob-layout
                                                           (ly:spanner-bound
                                                            (ly:prob-property (car lines)
                                                                              'system-grob)
                                                            LEFT))
                                                          'tweak-key
                                                          #f)))
                                         (key (and key-string (string->symbol key-string)))
                                         (is-new-key-in-score (and key
                                                                (not (eq? key prev-key-in-score))))
                                         (is-new-key-in-book (and key
                                                                (not (eq? key prev-key-in-book)))))
                                    (set! prev-key-in-book key)
                                    (set! prev-key-in-score key)
                                    (if is-new-key-in-book
                                        (set! score-page-numbers
                                              (cons (cons key page-number)
                                                    score-page-numbers)))
                                    (loop-page-line (cdr lines)
                                                    (if is-new-key-in-score
                                                        (cons key this-page-scores)
                                                        this-page-scores)))))
                            page-scores)))))))
       (format out-port "pageScoreKeys = ~%#'")
       (pretty-print page-scores out-port)
       (format out-port "~%scorePageNumbers = ~%#'")
       (pretty-print score-page-numbers out-port)
       (close-port out-port))))

\paper {
  #(define page-post-process book-post-process-pages)
}

#(define page-score-keys #f)
#(define score-page-numbers #f)

includePageIndexFile =
#(define-music-function (parser location) ()
   (if (not (ly:get-option 'dump-tweaks))
       (let ((index-filename (format #f "~a-indices.ly"
				     (ly:parser-output-name parser))))
	 (if (access? index-filename R_OK)
	     (let ((page-index-parser (ly:parser-clone parser)))
	       (ly:message "Including page index file ~a" index-filename)
	       (ly:parser-parse-string page-index-parser
                                       (format #f "\\include \"~a\""
                                               index-filename))
               (set! page-score-keys (ly:parser-lookup page-index-parser
                                                       'pageScoreKeys))
               (set! score-page-numbers (ly:parser-lookup page-index-parser
                                                       'scorePageNumbers))))))
   (make-music 'SequentialMusic 'void #t))

#(define-public (page-number->score-keys page)
   "Return a list of score keys, for scores found on that page."
   (if page-score-keys
       (let ((page-keys (assoc page page-score-keys =)))
         (if page-keys
             (cdr page-keys)
             (list)))
       (list)))

#(define-public (score-key->page-number key)
   "Return the page number on which score begins,
   or #f if the key is not found."
   (if score-page-numbers
       (let ((score-page (assoc key score-page-numbers)))
         (if score-page
             (cdr score-page)
             #f))
       #f))

#(define-markup-command (toc-body layout props texts) (markup-list?)
   (interpret-markup
    layout props
    (markup #:fill-line (#:null
                         #:override '(line-width . 80)
                         #:override '(baseline-skip . 3.5)
                         (make-center-align-markup texts)
                         #:null))))

#(define-markup-command (toc-title layout props text) (markup?)
   (interpret-markup layout props
                     (markup #:column (#:vspace 3
                                       #:fill-line (#:fontsize 6 text)
                                       #:vspace 2))))

#(define-markup-command (toc-score layout props score-key text) (symbol? markup?)
   (let ((page-number (score-key->page-number score-key)))
     (interpret-markup layout props
                       (markup #:fill-line (text (if page-number
                                                     (number->string page-number)
                                                     "?"))))))

#(define-markup-command (toc-titleA layout props text)
                        (markup?)
  (interpret-markup layout props
   (markup #:fontsize 4 #:fill-line (#:null text #:null))))

#(define-markup-command (toc-titleB layout props text)
                        (markup?)
  (interpret-markup layout props
   (markup #:fontsize 2 #:fill-line (text #:null))))

#(define-markup-command (toc-titleC layout props text)
                        (markup?)
  (interpret-markup layout props
   (markup #:fontsize 1 #:fill-line (text #:null))))

#(define-markup-command (ref-score-page layout props score-key format-string)
                        (symbol? string?)
   (interpret-markup layout props
     (markup #:simple (format #f format-string
                              (or (score-key->page-number score-key)
                                  "?")))))
