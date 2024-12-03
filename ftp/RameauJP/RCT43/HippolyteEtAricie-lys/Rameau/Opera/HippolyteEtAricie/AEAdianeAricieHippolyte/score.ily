\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "diane-aricie"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB \withLyrics <<
      { s1 s1 s1*3 s2. s1*3 s1 s1 s1 s1 s1*2 s1*3 s2. s1*6
        s1 \noBreak }
      \global \includeNotes "hippolyte"
    >> \includeLyrics "paroles-hippolyte"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
