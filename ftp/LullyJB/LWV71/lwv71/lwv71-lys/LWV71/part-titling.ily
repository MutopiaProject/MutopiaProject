\paper {
  tocPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.8 \fill-line {
      \line { \fromproperty #'toc:text }
      \fromproperty #'toc:page
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

%% pieces

air =
#(define-music-function (parser location name title) (string? markup?)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-toplevel-markup parser (markup #:huge #:bold (rehearsal-number)
                                      #:hspace 1
                                      title))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

airTitre =
#(define-music-function (parser location name title toc-title) (string? markup? markup?)
  (add-toc-item parser 'tocPieceMarkup toc-title)
  (add-toplevel-markup parser (markup #:huge #:bold (rehearsal-number)
                                      #:hspace 1
                                      #:huge title))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

piece =
#(define-music-function (parser location name title) (string? string?)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-toplevel-markup parser (markup #:huge #:bold (rehearsal-number)
                                      #:hspace 1
                                      #:huge (string-upper-case title)))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

pieceNoToc =
#(define-music-function (parser location name title) (string? string?)
  (add-toplevel-markup parser (markup #:huge #:bold (rehearsal-number)
                                      #:hspace 1
                                      #:huge (string-upper-case title)))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

includeScore =
#(define-music-function (parser location name) (string?)
  (add-toplevel-markup parser (markup #:huge #:bold (rehearsal-number)))
  (add-no-page-break parser)
   (include-score parser name)
   (make-music 'SequentialMusic 'void #t))

%% sections

prologue =
#(define-music-function (parser location title) (string?)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup title)
  (add-even-page-header-text parser (string-upper-case (*current-opus-title*)) #f)
  (add-odd-page-header-text parser (string-upper-case title) #f)
  (add-toplevel-markup parser (markup #:column (#:act (string-upper-case title))))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

#(use-modules (srfi srfi-39))
#(define-public *current-act-title* (make-parameter ""))

act =
#(define-music-function (parser location act-title scene-title description)
                        (string? string? markup?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup act-title)
  (add-toc-item parser 'tocSceneMarkup scene-title)
  (add-even-page-header-text parser (string-upper-case (*current-opus-title*)) #f)
  (*current-act-title* act-title)
  (add-odd-page-header-text parser
                            (format #f "~a, ~a."
                                    (string-upper-case (*current-act-title*))
                                    (string-upper-case scene-title))
                            #f)
  (add-toplevel-markup parser
   (markup #:column (#:act (string-upper-case act-title)
                     #:scene (string-upper-case scene-title))))
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
#(define-music-function (parser location title description)
                        (string? markup?)
  (add-toc-item parser 'tocSceneMarkup title)
  (add-odd-page-header-text parser (format #f "~a, ~a."
                                    (string-upper-case (*current-act-title*))
                                    (string-upper-case title)) #t)
  (add-toplevel-markup parser
   (markup #:column (#:scene (string-upper-case title))))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

%%%%
%%% Actes, scènes
#(define-markup-command (act layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 3
                     #:pad-markup 3 #:fill-line (#:fontsize 5 arg)))))

#(define-markup-command (scene layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:fontsize 3 arg)
                     #:vspace 1))))

#(define-markup-command (sceneDescription layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:fill-line (#:override '(line-width . 80)
                                  #:fontsize 2 arg)
                     #:vspace 1))))

#(define-markup-command (titre layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:override '(line-width . 80) arg))))