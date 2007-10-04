\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
