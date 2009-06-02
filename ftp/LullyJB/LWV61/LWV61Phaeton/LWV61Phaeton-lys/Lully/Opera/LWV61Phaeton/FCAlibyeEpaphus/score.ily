\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus2" \includeNotes "dessus" >>
      \newHaraKiriStaff << \global \clef "haute-contre2" \includeNotes "haute-contre" >>
      \newHaraKiriStaff << \global \clef "taille2" \includeNotes "taille" >>
      \newHaraKiriStaff << \global \clef "quinte" \includeNotes "quinte" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "libye2"
    >> \includeLyrics "paroles-libye2"
    \new Staff \withLyrics <<
      \global \includeNotes "libye-epaphus"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}
