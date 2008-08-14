\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \includeNotes "psyche-roi" 
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
