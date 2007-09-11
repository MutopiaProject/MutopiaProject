\score {
  \new StaffGroup <<
    \newStaff << \instrumentName \markup Flûtes 
                 \global \includeNotes "flutes" >>
    \newStaff << \instrumentName \markup Violons 
                 \global \includeNotes "violons" >>
    \newStaff << \instrumentName \markup Haute-contre
                 \global \includeNotes "haute-contre" >>
    \newStaff << \instrumentName \markup Taille
                 \global \includeNotes "taille" >>
    \newStaff << \instrumentName \markup Basses
                 \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
