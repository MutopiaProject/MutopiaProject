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
	     (scm page)
             (scm layout-page-layout)
             (scm layout-page-dump))

;;;
;;; Page breaking
;;;

(define (line-minimum-position-on-page line prev-line prev-position page)
  "If `line' fits on `page' after `prev-line', which position on page is
  `prev-position', then return the line's postion on page, otherwise #f.
  `prev-line' can be #f, meaning that `line' is the first line."
  (let* ((layout (ly:paper-book-paper (page-property page 'paper-book)))
         (position (+ (line-minimum-relative-position line prev-line layout)
                      (if prev-line prev-position 0.0)))
         (bottom-position (- position
                             (interval-start (paper-system-extent line Y)))))
    (and (or (not prev-line)
             (< bottom-position (page-printable-height page)))
         position)))

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

(define (page-maximum-space-left page)
  (loop for line in (page-property page 'lines)
        for prev-line = #f then line
        for prev-position = #f then position
        for position = (line-minimum-position-on-page
                        line prev-line prev-position page)
        finally (return (and position
                             (- (page-printable-height page)
                                (- position
                                   (interval-start (paper-system-extent line Y))))))))

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
                      (ly:paper-book-paper (page-property page 'paper-book)))))

(define (page-set-line-positions! page ragged?)
  (let* ((layout (ly:paper-book-paper (page-property page 'paper-book)))
         (lines (page-property page 'lines))
         (last-line (car (last-pair lines)))
         (space (min (max 0 (- (page-printable-height page)
                               (first-line-position (car lines) layout)
                               (ly:prob-property last-line
                                                 'bottom-space 0.0)
                               (- (interval-start (paper-system-extent
                                                   last-line Y)))))
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

(define (page-break-wrapper-aux paper-book break-page-function
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
                (page-break-wrapper-aux paper-book
                                        break-page-function
                                        (if (eq? #t (ly:prob-property line 'void #f))
                                            (cdr lines)
                                            lines)
                                        (list)
                                        (append! previous-pages new-pages)
                                        new-page-number))
              ;; add the line to the current line list
              (page-break-wrapper-aux paper-book
                                      break-page-function
                                      (cdr lines)
                                      (cons line current-lines)
                                      previous-pages
                                      current-page-number))))))

(define-public (page-break-wrapper paper-book)
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
    (let ((book-pages (page-break-wrapper-aux
                       paper-book
                       (ly:output-def-lookup layout 'page-breaking-function)
                       book-lines
                       (list)
                       (list)
                       (ly:output-def-lookup
                        layout 'first-page-number))))
      (for-each page-stencil book-pages)
      ((ly:output-def-lookup layout 'page-post-process-function)
       layout book-pages)
      book-pages)))

(define (post-process-pages layout pages)
  (if (ly:output-def-lookup layout 'write-page-layout #f)
      (write-page-tweaks pages)))

;;;
;;; Page layout output
;;;

(define (write-page-tweaks pages)
  "Dump page breaks and tweaks"
  (let ((tweaks (make-hash-table 60)))
    (define (handle-page page)
      (let* ((lines (page-property page 'lines))
             (page-number (page-property page 'page-number))
             (space-left (page-maximum-space-left page))
             (total-music-height (loop for line in lines
                                       if (not (ly:prob-property? line 'is-title))
                                       sum (interval-length
                                            (paper-system-extent line Y))))
             (sorted-data (sort (loop for i from 0
                                      for line in lines
                                      collect (list
                                               i
                                               (interval-length
                                                (paper-system-extent line Y))
                                               (not (ly:prob-property? line 'is-title))))
                                (lambda (e1 e2)
                                  (< (second e1) (second e2)))))
             (sorted-stretches (loop for rest-height = total-music-height
                                     then (if music?
                                              (- rest-height height)
                                              rest-height)
                                     for left = space-left
                                     then (- left real-stretch)
                                     for i-h-m? in sorted-data
                                     for i = (first i-h-m?)
                                     for height = (second i-h-m?)
                                     for music? = (third i-h-m?)
                                     for stretch = (if (and music? (> rest-height 0.0))
                                                       (/ (* height left)
                                                          rest-height)
                                                       0.0)
                                     for real-stretch = (if music?
                                                            (min stretch
                                                                 (/ (* height height)
                                                                    80.0))
                                                            0.0)
                                     collect (list i real-stretch)))
             (re-sorted-stretches (map second
                                       (sort sorted-stretches
                                             (lambda (e1 e2)
                                               (< (first e1) (first e2)))))))
        (loop for stretch in re-sorted-stretches
              for line in lines
              for first-line? = #t then #f
              for index from 0
              if (not (ly:prob-property? line 'is-title))
              do (record-tweaks (ly:spanner-bound (ly:prob-property line 'system-grob) LEFT)
                                `((line-break . #t)
                                  (page-break . ,first-line?)
                                  (spacing-parameters
                                   . ((page-number . ,page-number)
                                      (system-index . ,index)
                                      (system-stretch . ,stretch))))
                                tweaks))))

    (for-each handle-page pages)
    (dump-all-tweaks pages tweaks)))


) % matches opening #(

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Semi-automatic vertical spacement
%%
%% -d write-tweaks to write the tweaks file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *write-tweaks* (make-parameter (ly:get-option 'write-tweaks)))

%%%
%%% spacingTweaks function
%%%
spacingTweaks = 
#(define-music-function (parser location props) (list?)
   #{
     \overrideProperty #"Score.NonMusicalPaperColumn"
     #'line-break-system-details
     #$(list (cons 'alignment-extra-space (cdr (assoc 'system-stretch props))))
   #})

includeTweakFile = 
#(define-music-function (parser location) ()
   (if (not (*write-tweaks*))
       (let ((tweak-filename (format #f "~a-page-layout.ly"
                                     (ly:parser-output-name parser))))
         (if (access? tweak-filename R_OK)
             (begin
               (format #t "~%Including tweak file ~a~%" tweak-filename)
               (ly:parser-parse-string
                parser
                (format #f "\\include \"~a\"" tweak-filename))))))
   (make-music 'SequentialMusic 'void #t))

includeTweak = 
#(define-music-function (parser location name) (string?)
   (let ((tweak-music (ly:parser-lookup parser (string->symbol name))))
     (if (ly:music? tweak-music)
         tweak-music
         (make-music 'SequentialMusic))))

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
  #(define write-page-layout (*write-tweaks*))
  
  #(define page-breaking page-break-wrapper)
  #(define page-breaking-function naive-page-breaks)
  #(define page-post-process-function post-process-pages)
}

newPage = 
#(define-music-function (parser location) ()
  #{ 
    \overrideProperty #"Score.NonMusicalPaperColumn"
      #'line-break-system-details #'((void . #t) (break-before . #t))
    do'
  #})

newChapter = 
#(define-music-function (parser location) ()
  #{
    \overrideProperty #"Score.NonMusicalPaperColumn"
      #'line-break-system-details
      #'((void . #t) (break-before . #t) (ragged-bottom-before . #t))
    do'
  #})
