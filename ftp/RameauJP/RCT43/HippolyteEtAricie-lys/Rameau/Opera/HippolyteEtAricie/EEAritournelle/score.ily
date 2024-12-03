\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Dessus
                  \global \includeNotes "dessus" >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
