
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Gavotte pour le marié et la mariée."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
