\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup "Armide"
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
