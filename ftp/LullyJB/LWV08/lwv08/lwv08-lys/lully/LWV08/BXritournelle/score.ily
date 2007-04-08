
\score {
  \dessusHauteContreTailleBasse
  \header {
    titre = "Première ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
