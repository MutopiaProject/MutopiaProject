
\score {
  \dessusHauteContreTailleBasse
  \header {
    titleB = "Chansons d'une coquette"
    titleC = "Ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
