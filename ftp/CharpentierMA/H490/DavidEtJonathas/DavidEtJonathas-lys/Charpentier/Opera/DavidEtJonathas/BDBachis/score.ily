\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \global \clef "dessus" \includeNotes "dessus1" >>
      \new Staff << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Achis
      \global \clef "vbasse" \includeNotes "achis"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}