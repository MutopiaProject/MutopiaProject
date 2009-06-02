\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \instrumentName \markup Violons
                           \keepWithTag #'() \global
                           \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaff << \instrumentName \markup Haute-contres
                           \keepWithTag #'() \global
                           \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff << \instrumentName \markup Tailles
                           \keepWithTag #'() \global
                           \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff << \instrumentName \markup Basses
                           \keepWithTag #'() \global
                           \clef "basse" \includeNotes "basse" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup "La Pythonisse"
      \keepWithTag #'didascalies \global
      \clef "vhaute-contre" \includeNotes "pythonisse"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}