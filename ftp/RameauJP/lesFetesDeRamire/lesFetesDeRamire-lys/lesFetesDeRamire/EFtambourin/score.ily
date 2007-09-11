\score {
  \new StaffGroup <<
    \newStaff << \global \includeNotes "dessus"
                 \instrumentName \markup Violons >>
    \newStaff << \global \includeNotes "haute-contre"
                 \instrumentName \markup "Haute-contre" >>
    \newStaff << \global \includeNotes "taille"
                 \instrumentName \markup Taille >>
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup Basses
                 { s2 s1*7 s2 \break } >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } }
}
