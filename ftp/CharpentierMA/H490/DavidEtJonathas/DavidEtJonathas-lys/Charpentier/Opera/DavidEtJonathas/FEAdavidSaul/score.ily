\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "david-saul"
    >> \includeLyrics "paroles"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}
