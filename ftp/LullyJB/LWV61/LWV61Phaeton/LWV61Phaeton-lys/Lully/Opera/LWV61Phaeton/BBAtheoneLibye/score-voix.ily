\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "theone-libye"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "libye2"
    >> \includeLyrics "paroles-libye2"
  >>
  \layout { }
}