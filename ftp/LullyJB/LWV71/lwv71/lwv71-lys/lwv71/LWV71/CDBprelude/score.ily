\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes "dessus1" >>
    \newStaff << \global \dessus \includeNotes "dessus2" >>
    \newStaff << \global \quinte \includeNotes "quinte" 
                 \includeFigures "chiffres" >>
  >>
  \header { 
    titre = "PRÉLUDE"
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
