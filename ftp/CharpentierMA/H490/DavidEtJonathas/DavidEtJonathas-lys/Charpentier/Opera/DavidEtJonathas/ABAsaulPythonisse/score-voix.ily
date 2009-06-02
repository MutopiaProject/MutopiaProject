\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup "La Pythonisse"
      \global \clef "vhaute-contre" \includeNotes "pythonisse"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \characterName \markup Saül
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles2"
  >>
  \layout { indent = \largeindent }
}