\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "bas-dessus"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
