\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \characterName \markup "La Pythonisse"
      \keepWithTag #'() \global
      \clef "vhaute-contre" \includeNotes "pythonisse"
      { s1*13 \break s1*21 \break }
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}