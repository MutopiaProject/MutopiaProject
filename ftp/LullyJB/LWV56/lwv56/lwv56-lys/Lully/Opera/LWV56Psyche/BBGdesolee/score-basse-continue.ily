\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "bas-dessus"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
}
