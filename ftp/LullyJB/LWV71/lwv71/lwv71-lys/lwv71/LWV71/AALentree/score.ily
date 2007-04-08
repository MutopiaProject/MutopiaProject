\score {
  \dessusHauteContreTailleQuinteBasse
  \header { titre = "ENTRÉE" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
