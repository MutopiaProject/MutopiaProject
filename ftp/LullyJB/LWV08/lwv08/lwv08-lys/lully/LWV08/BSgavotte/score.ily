
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Gavotte pour les parents de la mariée."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
