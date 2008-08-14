\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \includeNotes "aglaure-cidippe" 
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres" 
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
