\score {
  \dessusHauteContreTailleQuinteBasse
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 92 }
}
