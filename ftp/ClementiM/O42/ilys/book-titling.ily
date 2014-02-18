%%% book-titling.ily  -- a titling stylesheet for use in books
%%% 
%%% Author: Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Utility markups

%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces an invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))

#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
  (if (chain-assoc-get symbol props)
      (interpret-markup layout props markp)
      (ly:make-stencil '()  '(1 . -1) '(1 . -1))))

#(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
   (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
           arg)))

%%% Guile does not deal with accented letters
#(use-modules (ice-9 regex))
%%;; actually defined below, in a closure
#(define-public string-upper-case #f)
#(define accented-char-upper-case? #f)
#(define accented-char-lower-case? #f)

%%;; an accented character is seen as two characters by guile
#(let ((lower-case-accented-string "éèêëáàâäíìîïóòôöúùûüçœæ")
       (upper-case-accented-string "ÉÈÊËÁÀÂÄÍÌÎÏÓÒÔÖÚÙÛÜÇŒÆ"))
   (define (group-by-2 chars result)
      (if (or (null? chars) (null? (cdr chars)))
          (reverse! result)
          (group-by-2 (cddr chars)
                      (cons (string (car chars) (cadr chars))
                            result))))
   (let ((lower-case-accented-chars
          (group-by-2 (string->list lower-case-accented-string) (list)))
         (upper-case-accented-chars
          (group-by-2 (string->list upper-case-accented-string) (list))))
     (set! string-upper-case
           (lambda (str)
             (define (replace-chars str froms tos)
               (if (null? froms)
                   str
                   (replace-chars (regexp-substitute/global #f (car froms) str
                                                            'pre (car tos) 'post)
                                  (cdr froms)
                                  (cdr tos))))
             (string-upcase (replace-chars str
                                           lower-case-accented-chars
                                           upper-case-accented-chars))))
     (set! accented-char-upper-case?
           (lambda (char1 char2)
             (member (string char1 char2) upper-case-accented-chars string=?)))
     (set! accented-char-lower-case?
           (lambda (char1 char2)
             (member (string char1 char2) lower-case-accented-chars string=?)))))

#(define-markup-command (smallCaps layout props text) (markup?)
  "Turn @code{text}, which should be a string, to small caps.
@example
\\markup \\small-caps \"Text between double quotes\"
@end example"
  (define (string-list->markup strings lower)
    (let ((final-string (string-upper-case
                         (apply string-append (reverse strings)))))
      (if lower
          (markup #:fontsize -2 final-string)
          final-string)))
  (define (make-small-caps rest-chars currents current-is-lower prev-result)
    (if (null? rest-chars)
        (make-concat-markup (reverse! (cons (string-list->markup
                                              currents current-is-lower)
                                            prev-result)))
        (let* ((ch1 (car rest-chars))
               (ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
               (this-char-string (string ch1))
               (is-lower (char-lower-case? ch1))
               (next-rest-chars (cdr rest-chars)))
          (cond ((and ch2 (accented-char-lower-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #t)
                 (set! next-rest-chars (cddr rest-chars)))
                ((and ch2 (accented-char-upper-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #f)
                 (set! next-rest-chars (cddr rest-chars))))
          (if (or (and current-is-lower is-lower)
                  (and (not current-is-lower) (not is-lower)))
              (make-small-caps next-rest-chars
                               (cons this-char-string currents)
                               is-lower
                               prev-result)
              (make-small-caps next-rest-chars
                               (list this-char-string)
                               is-lower
                               (if (null? currents)
                                   prev-result
                                   (cons (string-list->markup
                                            currents current-is-lower)
                                         prev-result)))))))
  (interpret-markup layout props
    (if (string? text)
        (make-small-caps (string->list text) (list) #f (list))
        text)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title page
%%%
\paper {
  bookTitleMarkup = \markup \when-property #'header:title \column {
    \vspace #3
    \fill-line { \italic \fontsize #5.45 \fromproperty #'header:coverLineOne }
    \vspace #1
    \fill-line { \italic \fontsize #5 \fromproperty #'header:coverLineTwo }
    \vspace #4
    \fill-line { \fromproperty #'header:coverScrollTop }
    \vspace #2
    \fill-line { \fontsize #10.3 \fromproperty #'header:coverLineThree }
    \vspace #1
    \fill-line { \fontsize #9 \fromproperty #'header:coverLineFour }
    \vspace #1.5
    \fill-line { \fontsize #11 \fromproperty #'header:coverLineFive }
    \vspace #2.2
    \fill-line { \fromproperty #'header:coverScrollBottom }
  } 
  scoreTitleMarkup = \markup \null
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Table of contents
%%%
#(define-markup-command (paper-prop layout props name default)
  (symbol? markup?)
  "Get the value of a \\paper property, or defaults to some value"
  (let ((val (ly:output-def-lookup layout name)))
    (interpret-markup layout props (if (markup? val)
                                      val
                                      default))))
\paper {
  tocTitleMarkup = \markup \column {
    \vspace #2
    \fontsize #6 \fill-line { \paper-prop #'tocTitle "TABLE OF CONTENTS" }
    \vspace #2
  }
  tocPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.7 \fill-line {
      \line { \fromproperty #'toc:text }
      \fromproperty #'toc:page
    }
  }
  tocSectionMarkup = \markup \italic \left-column {
  	  \concat { \hspace #13 \fromproperty #'toc:text }
  }
  tocChapterMarkup = \markup \large \italic \left-column {
    \vspace #1
    \fontsize #2 \concat { \hspace #13 \fromproperty #'toc:text } 
    \vspace #1
  }
}

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

\paper {

       %--Function to detect positive page numbers
       #(define (print-positive-page-number layout props arg)
         (if (> (chain-assoc-get 'page:page-number props -1) 0)
             (create-page-number-stencil layout props arg)
             empty-stencil))
	
             evenHeaderMarkup = \markup { \column { \on-the-fly #print-positive-page-number { \abs-fontsize #10 \even-header \null } } }
             oddHeaderMarkup =  \markup { \column { \on-the-fly #print-positive-page-number { \abs-fontsize #10 \odd-header  \null } } }
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Rehearsal numbers
%%%
#(define-public rehearsal-number #f)
#(define-public increase-rehearsal-major-number #f)
#(let ((major-number 0)
       (minor-number 0))
  (set! increase-rehearsal-major-number
        (lambda ()
          (set! major-number (1+ major-number))
          (set! minor-number 0)))
  (set! rehearsal-number 
        (lambda ()
          (set! minor-number (1+ minor-number))
          (format #f "~a-~a" major-number minor-number))))

#(define-public (add-rehearsal-number parser)
   (collect-scores-for-book parser
    (list (markup #:huge #:bold (rehearsal-number)))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Commands
%%%

#(use-modules (srfi srfi-39))
#(define *book-title* (make-parameter ""))
#(define *use-rehearsal-numbers* (make-parameter #f))

useRehearsalNumbers =
#(define-music-function (parser location use-numbers) (boolean?)
  (*use-rehearsal-numbers* use-numbers)
   (make-music 'Music 'void #t))

bookTitle =
#(define-music-function (parser location title) (string?)
   (*book-title* title)
   (make-music 'Music 'void #t))

chapter =
#(define-music-function (parser location title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocChapterMarkup title)
  (add-even-page-header-text parser (string-upper-case (*book-title*)) #f)
  (add-odd-page-header-text parser (string-upper-case title) #f)
  (add-toplevel-markup parser (markup #:chapter-title (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

section =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocSectionMarkup title)
  (add-toplevel-markup parser (markup #:section-title (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))
                        
piece =
#(define-music-function (parser location title) (markup?)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-no-page-break parser)
  (if (*use-rehearsal-numbers*)
      (add-toplevel-markup parser (markup #:rehearsal-number (rehearsal-number))))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))
                        
titledPiece =
#(define-music-function (parser location title) (markup?)
  (add-toc-item parser 'tocPieceMarkup title)
  (if (*use-rehearsal-numbers*)
      (add-toplevel-markup parser
        (markup #:piece-title-with-number (rehearsal-number) (string-upper-case title)))
      (add-toplevel-markup parser (markup #:piece-title (string-upper-case title))))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

#(define-markup-command (chapter-title layout props title) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 3
                     #:pad-markup 3 #:fill-line (#:fontsize 5 title)))))

#(define-markup-command (section-title layout props title) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:fontsize 3 title)
                     #:vspace 1))))

#(define-markup-command (piece-title layout props title) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:override '(line-width . 80) #:bold title))))

#(define-markup-command (rehearsal-number layout props number) (markup?)
  (interpret-markup layout props
   (markup #:huge #:bold number)))

#(define-markup-command (piece-title-with-number layout props number title)
                        (markup? markup?)
  (interpret-markup layout props
    (markup #:rehearsal-number number
            #:hspace 1
            #:huge title)))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

