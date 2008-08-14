\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaff \withLyrics << 
      \global
      \clef "vpetite-haute-contre" \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics << 
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles2"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
