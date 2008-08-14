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
  >>
  \layout { }
}
