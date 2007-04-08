
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Troisième air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
