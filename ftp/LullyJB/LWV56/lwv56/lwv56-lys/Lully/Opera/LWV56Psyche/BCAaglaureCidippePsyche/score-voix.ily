\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "soeurs"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "cidippe" 
    >> \includeLyrics "paroles2"
  >>
  \layout { }
}
