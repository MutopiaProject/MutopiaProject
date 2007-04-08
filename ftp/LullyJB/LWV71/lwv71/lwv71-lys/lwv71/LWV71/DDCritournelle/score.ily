\score {
  \dessusHauteContreTailleQuinteBasse
  \layout {
    indent = \noindent
    #(define tweak-key (*current-piece*))
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
