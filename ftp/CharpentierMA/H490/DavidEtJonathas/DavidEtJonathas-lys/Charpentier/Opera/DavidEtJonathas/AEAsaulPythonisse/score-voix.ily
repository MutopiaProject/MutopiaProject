\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "pythonisse"
    >> \includeLyrics "paroles-pythonisse"
    \new Staff \withLyrics <<
      \characterName \markup Saül
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles-saul"
  >>
  \layout { indent = \largeindent }
}
