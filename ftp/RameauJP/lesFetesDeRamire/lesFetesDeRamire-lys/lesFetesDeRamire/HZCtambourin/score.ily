\score {
  \new StaffGroup <<
    \newStaff << \instrumentName \markup Violons
                 \global \includeNotes "dessus" >>
    \newStaff << \instrumentName \markup Haute-contre
                 \global \includeNotes "haute-contre" >>
    \newStaff << \instrumentName \markup Taille
                 \global \includeNotes "taille" >>
    \newStaff << \instrumentName \markup Bassons
                 \global \includeNotes "bassons" >>
    \newStaff << \instrumentName \markup Basses
                 \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 96 4) } }
}
