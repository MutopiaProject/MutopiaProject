\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Entrée pour la suite de Mome"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 120 }
}
