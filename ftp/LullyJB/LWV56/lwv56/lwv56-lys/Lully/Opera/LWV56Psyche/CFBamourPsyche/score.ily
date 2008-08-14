\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global \includeNotes "amour-psyche"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vhaute-contre" \includeNotes "amour"
    >> \includeLyrics "paroles-amour"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s1 s2.*2 s1*4 s1 s2. s1*3 s1*7 s1*4 s2. s1 
        s1*3 s2.*4 s1 s1*4 s2.*4 s1*2 s2.*2 \break
        s2.*17 s1 \break }
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
