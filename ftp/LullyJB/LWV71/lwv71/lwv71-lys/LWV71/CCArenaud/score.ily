\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \keepWithTag #'violons \global
                   \dessus \includeNotes "dessus" >>
      \newStaff << \keepWithTag #'violons \global 
                   \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \keepWithTag #'violons \global
                   \taille \includeNotes "taille" >>
      \newStaff << \keepWithTag #'violons \global
                   \quinte \includeNotes "quinte" >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup "Renaud"
      \keepWithTag #'() \global
      \voixHauteContre \includeNotes "renaud"
    >> \includeLyrics "paroles"
    \newStaff <<
      \keepWithTag #'() \global
      \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } }
}
