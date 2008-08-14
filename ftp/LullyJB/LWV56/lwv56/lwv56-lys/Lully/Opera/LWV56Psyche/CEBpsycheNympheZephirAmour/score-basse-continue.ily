\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "psyche-nymphe-zephir-amour"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s1*4 s1*6 s1. s1*16 s1 s2.*26 s1*2 s2.*4 s1*2 s2. s1*2 \pageBreak s1*4 s2.*4 s1*6 }
    >>
  >>
  \layout { }
}
