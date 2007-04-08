\score {
  \dessusHauteContreTailleQuinteBasse
  \header { titre = "PREMIER AIR" }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
