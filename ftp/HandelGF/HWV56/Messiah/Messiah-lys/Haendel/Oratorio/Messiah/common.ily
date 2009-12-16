\header {
  copyrightYear = "2009"
  composer = "George Frideric Handel"
  poet=" "
  opus = "HWV 56"
  date = "1741"
  editions = \markup \column {
    \fill-line { \line { Based upon the Deutsche Händelgesellschaft Edition } }
    \fill-line { \line { Edited by Frideric Chrysander } }
  }
}
\paper {
  tocTitle = "CONTENTS"
  #(define page-breaking (cond ((eqv? #f (ly:get-option 'part)) ly:optimal-breaking)
                               ((memq (ly:get-option 'part) '(vocal vocal-keyboard)) ly:optimal-breaking)
                               (else ly:page-turn-breaking)))
}

#(set-global-staff-size (cond ((eqv? #f (ly:get-option 'part)) 14)
                              ((memq (ly:get-option 'part) '(vocal vocal-keyboard keyboard)) 16)
                              (else 18)))
#(ly:set-option 'non-incipit #t)
#(ly:set-option 'use-rehearsal-numbers #t)

\include "italiano.ly"
\include "common/common.ily"
\setOpus "Haendel/Oratorio/Messiah"
\opusTitle "Messiah"

\opusPartSpecs #`(
  (violino1 "Violono I" () (#:notes "violino1"))
  (violino2 "Violino II" () (#:notes "violino2"))
  (violino3 "Violino III" ((violino2 #f)) (#:notes "violino3"))
  (viola "Viola" () (#:notes "viola" #:clef "alto"))
  (oboe1 "Oboe I" ((violino1 "Violino")) (#:notes "oboe1" #:instrument "Oboe"))
  (oboe2 "Oboe II" ((violino2 "Violino")) (#:notes "oboe2" #:instrument "Oboe"))
  (tromba1 "Tromba I" () (#:notes "tromba1"))
  (tromba2 "Tromba II" () (#:notes "tromba2"))
  (tympani "Timpani" () (#:notes "tympani" #:clef "bass"))
  (bassi "Bassi" () (#:notes "bassi" #:clef "bass" #:score-template "score-bassi"))
  (vocal "Vocal parts" () (#:score-template "score-vocal"))
  (vocal-keyboard "Vocal parts and keyboard reduction" () (#:score-template "score-vocal-keyboard"))
  (keyboard "Keyboard reduction" () (#:score-template "score-keyboard"))
)

part=
#(define-music-function (parser location act-title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup act-title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* act-title)
  (add-odd-page-header-text
    parser
    (format #f "~a" (string-upper-case (*act-title*)))
    #f)
  (add-toplevel-markup parser
    (markup #:act (string-upper-case act-title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

partNoBreak=
#(define-music-function (parser location act-title) (string?)
  (increase-rehearsal-major-number)
  (add-toc-item parser 'tocActMarkup act-title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* act-title)
  (add-odd-page-header-text
    parser
    (format #f "~a" (string-upper-case (*act-title*)))
    #f)
  (add-toplevel-markup parser
    (markup #:act (string-upper-case act-title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

fineMark = { \dacapoOverrides \mark \markup \right-align \italic Fine. }
