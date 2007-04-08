
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
