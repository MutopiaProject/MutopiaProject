\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \keepWithTag #'() \global \clef "vbasse"
      \includeNotes "saul"
      { s1.*7 \break }
    >> \includeLyrics "paroles-saul"
    \new Staff << \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}