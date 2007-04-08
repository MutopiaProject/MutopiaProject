
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air pour les mêmes Jean Doucet"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
