\score {
  \dessusHauteContreTailleQuinteBasse
  \header { titre = "GAVOTTE" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 240 4) } }
}
