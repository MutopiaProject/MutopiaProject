
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Sarabande pour le père et la mère du marié."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
