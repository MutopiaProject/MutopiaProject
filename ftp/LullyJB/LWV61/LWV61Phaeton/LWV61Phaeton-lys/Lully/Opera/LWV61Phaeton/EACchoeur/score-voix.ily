\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \markUpBegin \mark \markup \column \smaller \smallCaps {
        "Chœur des heures du jour" "et des quatre saisons"
      }
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
  >>
  \layout { }
}