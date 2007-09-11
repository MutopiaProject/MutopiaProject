\paper {
  tocPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.7 \fill-line {
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
  (include-score parser name)
  (make-music 'Music 'void #t))

airTitre =
#(define-music-function (parser location name title toc-title) (string? string? markup?)
  (add-toc-item parser 'tocPieceMarkup toc-title)
  (add-toplevel-markup parser (markup #:titre (string-upper-case title)))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

piece =
#(define-music-function (parser location name title) (string? string?)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-toplevel-markup parser (markup #:titre (string-upper-case title)))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

pieceNoToc =
#(define-music-function (parser location name title) (string? string?)
  (add-toplevel-markup parser (markup #:titre (string-upper-case title)))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

ouverture =
#(define-music-function (parser location name title) (string? string?)
  (add-toc-item parser 'tocPieceMarkup title)
  (add-odd-page-header-text parser (string-upper-case title) #t)
  (add-toplevel-markup parser (markup #:titre (string-upper-case title)))
  (add-no-page-break parser)
  (include-score parser name)
  (make-music 'Music 'void #t))

%% sections

act =
#(define-music-function (parser location title description)
                        (string? markup?)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup title)
  (add-even-page-header-text parser (string-upper-case (*current-opus-title*)) #f)
  (add-toplevel-markup parser
   (markup #:column (#:act (string-upper-case title)
                     #:sceneDescription description)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

scene =
#(define-music-function (parser location title description)
                        (string? markup?)
  (add-toc-item parser 'tocSceneMarkup title)
  (add-odd-page-header-text parser (string-upper-case title) #t)
  (add-toplevel-markup parser
   (markup #:column (#:scene (string-upper-case title)
                     #:sceneDescription description)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

entree =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocSceneMarkup title)
  (add-toplevel-markup parser
   (markup #:column (#:scene (string-upper-case title))))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

%%%%
%%% Actes, scènes
#(define-markup-command (act layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 3
                     #:pad-markup 3 #:fill-line (#:fontsize 6 arg)))))

#(define-markup-command (scene layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:vspace 1
                     #:fill-line (#:fontsize 4 arg)
                     #:vspace 1))))

#(define-markup-command (sceneDescription layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:column (#:fill-line (#:override '(line-width . 80)
                                  #:fontsize 2 arg)
                     #:vspace 1))))

#(define-markup-command (titre layout props arg) (markup?)
  (interpret-markup layout props
   (markup #:fill-line (#:override '(line-width . 80)
                        #:fontsize 2 arg))))
