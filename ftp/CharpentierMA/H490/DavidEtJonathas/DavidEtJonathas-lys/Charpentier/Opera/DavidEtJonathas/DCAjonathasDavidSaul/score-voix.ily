\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "jonathas"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics <<
      \global \clef "vdessus" \includeNotes "jonathas-saul-david"
    >> \includeLyrics "paroles1"
  >>
  \layout { }
}