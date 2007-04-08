
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    partie = "Prologue"
    entree = "Ouverture"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
