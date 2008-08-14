\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "fleuve-psyche"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}
