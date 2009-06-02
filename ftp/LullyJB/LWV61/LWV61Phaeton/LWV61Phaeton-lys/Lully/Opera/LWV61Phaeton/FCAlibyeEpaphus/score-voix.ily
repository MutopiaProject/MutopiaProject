\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "libye2"
    >> \includeLyrics "paroles-libye2"
    \new Staff \withLyrics <<
      \global \includeNotes "libye-epaphus"
    >> \includeLyrics "paroles"
  >>
  \layout { }
}
