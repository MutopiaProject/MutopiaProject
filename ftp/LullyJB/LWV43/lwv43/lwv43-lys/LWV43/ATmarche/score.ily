
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Marche pour la cérémonie des Turcs"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
