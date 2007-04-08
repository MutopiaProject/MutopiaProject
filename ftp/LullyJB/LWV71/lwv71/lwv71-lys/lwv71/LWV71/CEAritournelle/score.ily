\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "dessus" >>
    \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
    \newStaff << \global \taille \includeNotes "taille" >>
    \newStaff << \global \quinte \includeNotes "quinte" >>
    \newStaff <<
      \scoreInit \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { 
    scene = "SCÈNE CINQUIÈME"
    sceneDescription = \markup \center-align {
      \line { \smallCaps Armide, \smallCaps Renaud endormi. }
    }
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
