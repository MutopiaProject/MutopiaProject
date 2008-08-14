\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup Apollon
      \global \clef "vhaute-contre" \includeNotes "apollon" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
