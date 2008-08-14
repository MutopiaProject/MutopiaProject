\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \clef "vhaute-contre" \includeNotes "furie1"
    >> \includeLyrics "paroles"
    \new Staff \withLyrics << 
      \global \clef "vtaille" \includeNotes "furie2"
    >> \includeLyrics "paroles"
    \new Staff \withLyrics << 
      \global \clef "vbasse" \includeNotes "furie3"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 240 8) } }
}
