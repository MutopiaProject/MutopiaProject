\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "vulcain-zephir"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s1*2 s2. s1 s1*2 s2.*34 \pageBreak }
    >>
  >>
  \layout { }
}
