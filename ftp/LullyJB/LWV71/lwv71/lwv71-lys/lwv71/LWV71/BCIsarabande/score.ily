\score {
  \dessusHauteContreTailleQuinteBasse
  \header { titre = "SARABANDE" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
