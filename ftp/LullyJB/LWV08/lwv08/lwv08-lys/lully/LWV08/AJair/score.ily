
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Troisième air pour le concert du divertissement."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
