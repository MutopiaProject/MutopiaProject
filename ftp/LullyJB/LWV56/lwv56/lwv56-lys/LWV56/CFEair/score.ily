\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 132 }
}

