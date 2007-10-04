\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Lucinde"
      \global \voixDessus \includeNotes "lucinde"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } }
}
