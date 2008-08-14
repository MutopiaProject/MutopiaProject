\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "venus-vulcain"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}
