\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup \instruments \smallCaps { "Une autre" Grace }
      \global \includeNotes "grace"
    >> \includeLyrics "paroles"
    \newStaff <<
      \instrumentName \markup \instruments { Basse Continue }
      \global \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
