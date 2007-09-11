\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup Ramire
      \global \includeNotes "ramire"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse Continue } >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
