\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \includeNotes "venus-psyche"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 88 4) } }
}
