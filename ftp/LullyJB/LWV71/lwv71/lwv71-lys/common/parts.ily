%%% -*- Mode: Scheme -*-

\layout {
  \context {
    \Score skipBars = ##t
    %% \override SeparationItem #'padding = #2
  }
  \context {
    \Staff
    \override Clef #'full-size-change = ##t
  }
}

%% Staff size
#(set-global-staff-size 18)
#(define-public *instrument*
   (make-parameter
    (case (ly:get-option 'part)
      ((dessus1) "Premiers dessus de violon")
      ((dessus2) "Deuxièmes dessus de violon")
      ((haute-contre) "Haute-contres de violon")
      ((taille) "Tailles de violon")
      ((quinte) "Quintes de violon")
      ((basse) "Basses de violon")
      ((basse-continue) "Basse continue")
      (else ""))))

\paper {
  %% Page breaking
  %%#(define page-breaking ly:page-turn-breaking)
}

currentOpus =
#(define-music-function (parser location name title) (string? string?)
   (*current-opus* name)
   (*current-opus-title* (string-append title " - " (*instrument*)))
   (make-music 'SequentialMusic 'void #t))

#(define-public *current-part* (make-parameter (ly:get-option 'part)))
#(define-public *current-note-filename*
   (make-parameter ""))

#(define-public +parts-scores+ (list))

#(define-public (include-score parser name)
   (collect-music-for-book
    parser
    (make-music 'Music
                'page-marker #t
                'page-label (string->symbol name)))
   (parameterize ((*current-piece* name))
     (let* ((part-scores (assoc (*current-part*) +parts-scores+))
            (score-assoc (if part-scores
                             (assoc (string->symbol (*current-piece*))
                                    (cdr part-scores))
                             #f))
            (note-filename (symbol->string (or (and score-assoc
                                                    (cadddr score-assoc))
                                               (*current-part*)
                                               'unknown)))
            (pathname (and score-assoc
                           (if (cadr score-assoc)
                               (format #f "~a/~a/score-~a.ily"
                                       (*current-opus*)
                                       (*current-piece*)
                                       (cadr score-assoc))
                               (format #f "parts/score-~a.ily"
                                       (or (caddr score-assoc)
                                           (*current-part*)))))))
       (if pathname
           (parameterize ((*current-note-filename* note-filename))
             ;;(format #t "~%### ~a --> ~a~%" (*current-piece*) pathname)
             (ly:parser-parse-string
              (ly:parser-clone parser)
              (format #f "\\include \"~a\"" pathname)))))))

partPageBreak =
#(define-music-function (parser location syms) (list?)
   (if (memq (ly:get-option 'part) syms)
       (add-page-break parser))
   (make-music 'Music 'void #t))

partDoublePageBreak =
#(define-music-function (parser location syms) (list?)
   (if (memq (ly:get-option 'part) syms)
       (begin
         (add-page-break parser)
         (add-toplevel-markup parser (markup #:null))
         (add-page-break parser)))
   (make-music 'Music 'void #t))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title page
%%%
\paper {
  bookTitleMarkup = \markup \when-property #'header:title \column {
    \vspace #6
    \fill-line { \fontsize #8 \italic \fromproperty #'header:composer }
    \vspace #1
    \fill-line { \fontsize #8 \italic \fromproperty #'header:poet }
    \vspace #6
    \fill-line { \fontsize #9 \fromproperty #'header:title }
    \vspace #6
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #6
    \fill-line { \fontsize #4 \fromproperty #'header:opus }
    \vspace #1
    \fill-line { \fontsize #4 \fromproperty #'header:date }
    \vspace #6
    \fill-line { \fontsize #4 \fromproperty #'header:instrument }
    \fill-line {
      \when-property #'header:arrangement \column {
        \vspace #3
        \fill-line { \fontsize #3 \fromproperty #'header:arrangement }
      }
    }
  }
  scoreTitleMarkup = \markup \empty
}