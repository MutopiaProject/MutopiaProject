\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Un Devin"
      \global \includeNotes "devin"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse Continue }
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 84 4) } }
}
