\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième Air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 120 }
}
