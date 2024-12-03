%%% titling.ily -- commands for defining titles
%%%
%%% Author: Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%
%%% Options
%%% =======
%%%   use-rehearsal-numbers
%%%     If #t, add rehearsal numbers to piece titles.
%%%
%%% Scheme functions
%%% ================
%%%
%%%   (add-page-break parser)
%%%     add a page break at the current point.
%%%
%%%   (add-no-page-break parser)
%%%     forbid page break at current point.
%%%
%%%   (add-toplevel-markup parser text)
%%%     add a markup at current point.
%%%
%%%   (add-toc-item parser markup-symbol text)
%%%     add an item in the table of content, using markup style
%%%     `markup-symbol' and `text', referencing the page occuring
%%%     at current point.
%%%
%%%   (rehearsal-number)
%%%     return a new x.y rehearsal number.
%%%
%%%   (increase-rehearsal-major-number)
%%%     increase the major part of rehearsal numbers (ie the x in x.y)
%%%     and reset the minor part.
%%%
%%% Markup commands
%%% ===============
%%%
%%%   \act <title>
%%%     Markup command to be used for act titles
%%%
%%%   \scene <title>
%%%     Markup command to be used for scene titles
%%%
%%%   \title <title>
%%%     Markup command to be used for piece titles
%%%
%%%   \scene-desription <markup>
%%%     Markup command to be used for entering a scene description.
%%%
%%% Table of contexts \paper variables
%%% ==================================
%%%
%%%   tocTitle
%%%     a string used as the table of contents title
%%%
%%%   tocPieceMarkup
%%%     markup used for pieces
%%%
%%%   tocSceneMarkup
%%%     markup used for scene titles
%%%
%%%   tocActMarkup
%%%     markup used for act titles
%%%
%%% Music functions
%%% ===============
%%% Piece titling:
%%%
%%%   \pieceToc <title-markup>
%%%     add a piece title in the table of contents.
%%%
%%%   \pieceTocTitle <title-string>
%%%     add the piece title in the table of contents and at current 
%%%     point of the book (upper cased).
%%%
%%%   \pieceTitle <title-string>
%%%     add the upper cased piece title at the current point of the book.
%%%
%%%   \pieceTocAndTitle <toc-markup> <title-markup>
%%%     add a piece title in the table of content, and a different
%%%     title at the current point of the book.
%%%
%%% Sectionning:
%%%
%%%   \opusTitle <title-string>
%%%
%%%   \ouverture <title-string>
%%%   \act <title-string>
%%%   \scene <title-string>
%%%   \sceneDescription <description-markup>
%%%
%%%   \actEnd
%%%     Print an act end text.
%%%
%%% Dependencies
%%% ============
\include "common/fancy-headers.ily"
\include "common/markup.ily"

%%%
%%% Utilities for adding (no-)page breaks and toplevel markups
%%%
#(define-public (add-page-break parser)
  (collect-music-for-book parser 
   (make-music 'Music
	       'page-marker #t
	       'line-break-permission 'force
	       'page-break-permission 'force)))

#(define-public (add-no-page-break parser)
  (collect-music-for-book parser 
   (make-music 'Music
	       'page-marker #t
	       'page-break-permission 'forbid)))

#(define-public (add-toplevel-markup parser text)
  (collect-scores-for-book parser (list text)))

#(define-public (add-toc-item parser markup-symbol text)
  (collect-music-for-book parser
   (add-toc-item! markup-symbol text)))

%%%
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

%%%
%%% Markup commands
%%%
#(define-markup-command (rehearsal-number layout props text) (string?)
   (interpret-markup layout props
     (markup #:huge #:bold text)))

#(define-markup-command (rehearsal-number-toc layout props text) (string?)
  (let* ((gauge-stencil (interpret-markup layout props "8-88"))
	 (x-ext (ly:stencil-extent gauge-stencil X))
	 (y-ext (ly:stencil-extent gauge-stencil Y))
         (stencil (interpret-markup layout props text))
         (gap (- (interval-length x-ext)
                 (interval-length (ly:stencil-extent stencil X)))))
    (interpret-markup layout props
      (markup #:concat (#:hspace gap text #:hspace 1)))))

#(define-markup-command (act layout props arg) (markup?)
  (interpret-markup layout props
    (markup #:column (#:vspace 3
                      #:pad-markup 3 #:fill-line (#:fontsize 6 arg)))))

#(define-markup-command (scene layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:fontsize 4 arg)
                     #:vspace 1))))

#(define-markup-command (scene-description layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:fill-line (#:override '(line-width . 80)
                                  #:fontsize 2 arg))
                     #:vspace 1)))

#(define-markup-command (title layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:override '(line-width . 80)
                        #:fontsize 2 arg))))

%%%
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
  tocBoldPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.7 \fill-line {
      \line { \bold \fromproperty #'toc:text }
      \bold \fromproperty #'toc:page
    }
  }
  tocSceneMarkup = \markup \italic \column {
    \fill-line { \fromproperty #'toc:text }
  }
  tocActMarkup = \markup \large \italic \column {
    \vspace #1
    \fontsize #2 \fill-line { \fromproperty #'toc:text }
    \vspace #1
  }
}

%%%
%%% Music functions
%%%

%%% Pieces
pieceToc =
#(define-music-function (parser location title) (markup?)
  (let ((rehearsal (rehearsal-number)))
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal title)
          title))
    (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
        (begin
         (add-toplevel-markup parser (markup #:rehearsal-number rehearsal))
         (add-no-page-break parser)))
    (make-music 'Music 'void #t)))

pieceTocTitle =
#(define-music-function (parser location title) (string?)
  (let ((rehearsal (rehearsal-number)))
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal title)
          title))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge (string-upper-case title))
          (markup #:title (string-upper-case title))))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceTitle =
#(define-music-function (parser location title) (string?)
  (let ((rehearsal (rehearsal-number)))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge (string-upper-case title))
          (markup #:title (string-upper-case title))))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceTocAndTitle =
#(define-music-function (parser location title toc-title) (markup? markup?)
  (let ((rehearsal (rehearsal-number)))
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal toc-title)
          toc-title))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge title)
          (markup #:title title)))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceNoTitle =
#(define-music-function (parser location) ()
  (let ((rehearsal (rehearsal-number)))
    (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
        (begin
         (add-toplevel-markup parser (markup #:rehearsal-number rehearsal))
         (add-no-page-break parser)))
    (make-music 'Music 'void #t)))

%%% Sections
#(use-modules (srfi srfi-39))
#(define-public *current-opus-title* (make-parameter ""))
#(define-public *current-act-title* (make-parameter ""))

opusTitle =
#(define-music-function (parser location title) (string?)
   (*current-opus-title* title)
   (make-music 'Music 'void #t))

ouverture =
#(define-music-function (parser location title) (string?)
  (add-page-break parser)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-even-page-header-text parser (string-upper-case (*current-opus-title*)) #f)
  (add-odd-page-header-text parser (string-upper-case title) #f)
  (add-toplevel-markup parser (markup #:act (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

act =
#(define-music-function (parser location act-title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup act-title)
  (add-even-page-header-text parser (string-upper-case (*current-opus-title*)) #f)
  (*current-act-title* act-title)
  (add-odd-page-header-text
    parser
    (format #f "~a." (string-upper-case (*current-act-title*)))
    #f)
  (add-toplevel-markup parser
    (markup #:act (string-upper-case act-title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

actEnd =
#(define-music-function (parser location text) (markup?)
  (add-no-page-break parser)
  (add-toplevel-markup parser (markup #:fontsize 4 #:fill-line (text)))
  (add-no-page-break parser)
  (add-toplevel-markup parser (markup #:null))
  (make-music 'Music 'void #t))

scene =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocSceneMarkup title)
  (add-odd-page-header-text
    parser
    (format #f "~a, ~a."
           (string-upper-case (*current-act-title*))
           (string-upper-case title))
    #t)
  (add-toplevel-markup parser
    (markup #:scene (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

sceneDescription =
#(define-music-function (parser location description) (markup?)
  (add-toplevel-markup parser
   (markup #:scene-description description))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))
