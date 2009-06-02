\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "saul-achis"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "achis"
    >> \includeLyrics "paroles2"
  >>
  \layout { }
}