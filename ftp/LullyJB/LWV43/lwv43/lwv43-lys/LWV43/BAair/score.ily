
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
