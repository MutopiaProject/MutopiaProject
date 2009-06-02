\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \new Staff \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
  >>
  \layout { }
}