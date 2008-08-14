\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "soeurs"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "cidippe" 
    >> \includeLyrics "paroles2"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      {
        s1 s2.*2 s1*4 \break
        s1*4 \break
        s1*6 \break
      }
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
