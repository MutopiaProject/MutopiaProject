\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    scene = "Scène Dernière"
    titre = "Prélude"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 68 }
}
