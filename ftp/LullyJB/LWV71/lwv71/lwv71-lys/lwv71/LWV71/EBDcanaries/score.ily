\score {
  \dessusHauteContreTailleQuinteBasse
  \header { titre = "CANARIES" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } }
}
