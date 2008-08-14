\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \includeNotes "venus-vulcain"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
