\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "nymphes"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
}
