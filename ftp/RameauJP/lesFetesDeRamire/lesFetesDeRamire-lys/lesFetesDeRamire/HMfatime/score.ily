\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup Fatime
      \global \includeNotes "fatime"
    >> \includeLyrics "paroles"
    \newStaff <<
      \global \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
