\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "phaeton2"
    >> \includeLyrics "paroles-phaeton2"
    \new Staff \withLyrics <<
      \global \includeNotes "epaphus-phaeton"
    >> \includeLyrics "paroles"
  >>
  \layout { }
}