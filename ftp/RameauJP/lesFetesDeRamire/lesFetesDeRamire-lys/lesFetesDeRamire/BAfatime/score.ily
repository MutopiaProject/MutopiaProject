\score {
  \new StaffGroupNoBar <<
    \newStaff << \global \includeNotes "dessus"
                 \instrumentName \markup Violons >>
    \newStaffWithLyrics <<
      \characterName \markup Fatime
      \global \includeNotes "fatime"
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse Continue }
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
