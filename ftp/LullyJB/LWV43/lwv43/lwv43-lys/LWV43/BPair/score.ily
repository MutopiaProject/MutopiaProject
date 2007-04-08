
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air des Espagnols"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
