\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "mars" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
