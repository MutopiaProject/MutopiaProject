
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air pour les braves jaloux"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
