\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "clymene"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "merops"
    >> \includeLyrics "paroles2"
  >>
  \layout { }
}