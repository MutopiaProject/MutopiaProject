\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "hautbois"
                 \instrumentName \markup Hautbois >>
    \newStaffWithLyrics <<
      \characterName \markup "Un Guerrier"
      \global \includeNotes "guerrier"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse Continue }
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
