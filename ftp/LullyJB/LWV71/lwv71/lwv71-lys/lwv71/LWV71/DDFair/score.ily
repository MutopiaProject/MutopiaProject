\score {
  \dessusHauteContreTailleQuinteBasse
  \header { titre = "AIR" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
