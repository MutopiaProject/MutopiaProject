\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Air des Furies"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 80 }
}
