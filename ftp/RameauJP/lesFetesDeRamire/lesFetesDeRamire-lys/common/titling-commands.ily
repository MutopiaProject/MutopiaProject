
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Markup commands for page headers
%%%
#(define-public add-odd-page-header-text #f)
#(define-public add-even-page-header-text #f)
#(define header-markup-aux #f)
#(let ((odd-label-header-table (list))
       (odd-page-header-table (list))
       (even-label-header-table (list))
       (even-page-header-table (list)))
  (set! header-markup-aux
   (lambda (layout props odd)
     (define (page-text page-number table)
       (if (null? table)
           ""
           (let* ((elment (car table))
                  (p (car elment))
                  (text (cadr elment))
                  (display-1st (caddr elment)))
             (cond ((and (= page-number p) (not display-1st)) #f)
                   ((>= page-number p) text)
                   (else (page-text page-number (cdr table)))))))
     (ly:make-stencil
       `(delay-stencil-evaluation
          ,(delay (ly:stencil-expr
                    (begin
                     (if (or (and odd (null? odd-page-header-table))
                             (and (not odd) (null? even-page-header-table)))
                         (let ((page-header-table (list)))
                          (for-each (lambda (label-header)
                                      (let* ((label (car label-header))
                                             (text-disp (cdr label-header))
                                             (table (ly:output-def-lookup layout 'label-page-table))
                                             (label-page (and (list? table) (assoc label table)))
                                             (page-number (and label-page (cdr label-page)))
                                             (prev-value (and page-number (assoc page-number page-header-table))))
                                        (if (not prev-value)
                                            (set! page-header-table (cons (cons page-number text-disp)
                                                                          page-header-table))
                                            (set! page-header-table
                                                  (assoc-set! page-header-table
                                                              page-number
                                                              (list (car text-disp) (caddr prev-value)))))))
                                    (reverse (if odd odd-label-header-table even-label-header-table)))
                          (if odd
                              (set! odd-page-header-table page-header-table)
                              (set! even-page-header-table page-header-table))))
                     (interpret-markup layout props
                       (let* ((page-number (chain-assoc-get 'page:page-number props -1))
                              (text (page-text page-number (if odd odd-page-header-table even-page-header-table)))
                              (text-markup (markup #:italic (or text "")))
                              (page-number-markup (number->string page-number)))
                         (cond ((or (= 1 page-number) (not text)) (markup #:null))
                               (odd (markup #:fill-line (#:null text-markup page-number-markup)))
                               (else (markup #:fill-line (page-number-markup text-markup #:null))))))))))
       (cons 0 0)
       (ly:stencil-extent (interpret-markup layout props "XXX") Y))))
  (set! add-odd-page-header-text
   (lambda (parser text display-1st)
     (let ((label (gensym "header")))
       (set! odd-label-header-table
             (cons (list label text display-1st)
                   odd-label-header-table))
       (collect-music-for-book parser
         (make-music 'Music
          'page-marker #t
          'page-label label)))))
  (set! add-even-page-header-text
   (lambda (parser text display-1st)
     (let ((label (gensym "header")))
       (set! even-label-header-table
             (cons (list label text display-1st)
                   even-label-header-table))
       (collect-music-for-book parser
         (make-music 'Music
          'page-marker #t
          'page-label label))))))

#(define-markup-command (odd-header layout props) ()
   (header-markup-aux layout props #t))

#(define-markup-command (even-header layout props) ()
   (header-markup-aux layout props #f))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Table-of-contents and page header custom markups
%%%
\paper {
  tocTitleMarkup = \markup \column {
    \vspace #2
    \fontsize #6 \fill-line { \line { TABLE DES MATIÈRES } }
    \vspace #2
  }
  tocPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.7 \fill-line {
      \line { \fromproperty #'toc:text }
      \fromproperty #'toc:page
    }
  }
  evenHeaderMarkup = \markup \even-header
  oddHeaderMarkup = \markup \odd-header
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Utilities for adding (no-)page breaks, toplevel markups
%%%
#(define (add-page-break parser)
  (collect-music-for-book parser 
   (make-music 'Music
	       'page-marker #t
	       'line-break-permission 'force
	       'page-break-permission 'force)))

#(define (add-no-page-break parser)
  (collect-music-for-book parser 
   (make-music 'Music
	       'page-marker #t
	       'page-break-permission 'forbid)))

#(define (add-toplevel-markup parser text)
  (collect-scores-for-book parser (list text)))

#(define (add-toc-item parser markup-symbol text)
  (collect-music-for-book parser
   (add-toc-item! markup-symbol text)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title page
%%%
\paper {
  bookTitleMarkup = \markup \when-property #'header:title \column {
    \vspace #8
    \fill-line { \fontsize #10 \italic \fromproperty #'header:composer }
    \vspace #1
    \fill-line { \fontsize #10 \italic \fromproperty #'header:poet }
    \vspace #8
    \fill-line { \fontsize #12 \fromproperty #'header:title }
    \vspace #8
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #8
    \fill-line { \fontsize #5 \fromproperty #'header:date }
    \vspace #1 
    \fill-line {
      \when-property #'header:arrangement \column {
        \vspace #5
        \fill-line { \fontsize #3 \fromproperty #'header:arrangement }
      }
    }
  }
  scoreTitleMarkup = \markup \null
}