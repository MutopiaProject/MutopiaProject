\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup Jupiter
      \global \clef "vbasse" \includeNotes "jupiter" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 2) } }
}
