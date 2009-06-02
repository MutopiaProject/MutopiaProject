\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "pythonisse"
    >> \includeLyrics "paroles-pythonisse"
    \new Staff \withLyrics <<
      \characterName \markup Saül
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles-saul"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \instrumentName \markup { Basse continue }
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
