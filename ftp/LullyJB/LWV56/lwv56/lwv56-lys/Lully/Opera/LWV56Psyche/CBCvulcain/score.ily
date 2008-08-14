\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaffB << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaffB << \global \clef "quinte" \includeNotes "quinte" >>
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Vulcain
      \global \clef "vhaute-contre" \includeNotes "vulcain" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
