\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup "Ubalde"
      \global \basse \includeNotes "ubalde"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
