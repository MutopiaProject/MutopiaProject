\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup Ramire
      \global \includeNotes "ramire"
    >> \includeLyrics "paroles"
    \newStaff <<
      \instrumentName \markup \instruments { "Un Hautbois" seul }
      \global \includeNotes "hautbois"
    >>
    \newStaff <<
      \instrumentName \markup \instruments { Basse continue }
      \global \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
