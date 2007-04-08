
\score {
  \dessusHauteContreTailleBasse
  \header {
    titre = "Deuxième ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
