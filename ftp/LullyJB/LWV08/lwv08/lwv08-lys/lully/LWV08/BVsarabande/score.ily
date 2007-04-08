
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Sarabande et dernier air."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
