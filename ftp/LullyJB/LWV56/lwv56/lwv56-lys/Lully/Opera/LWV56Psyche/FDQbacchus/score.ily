\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup Bacchus
      \global \clef "vtaille" \includeNotes "bacchus" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
