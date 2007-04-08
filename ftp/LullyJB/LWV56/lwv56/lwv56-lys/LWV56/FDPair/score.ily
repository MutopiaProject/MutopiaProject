\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Premier Air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 120 }
}
