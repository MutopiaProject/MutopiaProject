\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "hippolyte-aricie"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse-continue" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
