\score {
  \dessusHauteContreTailleQuinteBasse
  \layout {
    indent = \noindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
