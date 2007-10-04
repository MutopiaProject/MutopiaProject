\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "dessus1" >>
    \newStaff << \global \dessus \includeNotes "dessus2" >>
    \newStaff << \global \quinte \includeNotes "quinte" 
                 \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
