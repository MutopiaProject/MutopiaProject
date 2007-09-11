\score {
  \new StaffGroup <<
    \newStaff << \global \includeNotes "dessus"
                 \instrumentName \markup \instruments { "Violons" 
                                                        "sans hautbois" } >>
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup Basses >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
