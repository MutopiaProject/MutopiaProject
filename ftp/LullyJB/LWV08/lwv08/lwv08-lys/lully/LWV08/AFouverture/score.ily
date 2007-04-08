
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = \markup \column {
      \fill-line { "On commence le ballet." }
      \vspace #1
      \fill-line { "Ouverture pour le premier divertissement" }
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
