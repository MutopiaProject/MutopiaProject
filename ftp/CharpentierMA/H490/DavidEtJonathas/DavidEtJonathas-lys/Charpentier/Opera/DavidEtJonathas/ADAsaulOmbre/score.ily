\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \keepWithTag #'() \global
                           \clef "basse" \includeNotes "basse1" >>
      \newHaraKiriStaff << \keepWithTag #'() \global
                           \clef "basse" \includeNotes "basse2" >>
      \newHaraKiriStaff << \keepWithTag #'() \global
                           \clef "basse" \includeNotes "basse3" >>
    >>
    \new Staff \withLyrics <<
      \keepWithTag #'didascalies \global
      \includeNotes "saul-ombre"
    >> \includeLyrics "paroles"
    \new Staff << \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}