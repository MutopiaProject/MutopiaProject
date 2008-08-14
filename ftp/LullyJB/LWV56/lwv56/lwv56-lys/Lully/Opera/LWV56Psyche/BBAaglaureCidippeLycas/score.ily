\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaffB \withLyrics << 
      \global
      \clef "vbas-dessus" \includeNotes "aglaure"
    >> \includeLyrics "paroles-aglaure"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "cidippe" 
    >> \includeLyrics "paroles-cidippe"
    \newHaraKiriStaff \withLyrics << 
      \global \includeNotes "aglaure-cidippe-lycas"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      {
        s1*3 s2. s1*2 s2. s1 s2. s1*2 s1 s2. s1*3 s2. s1
        \break
        s1 s2.*3 s1*5 s1*2 s1*3 s2. 
        s1 s2.*3 s1*3 s2. s1*2 s2. s1 s2.*2 s1
        \break
        s1*6 s1 s1 s1*11
        \break
        s1*5
        \break
        s1*31
      }
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
