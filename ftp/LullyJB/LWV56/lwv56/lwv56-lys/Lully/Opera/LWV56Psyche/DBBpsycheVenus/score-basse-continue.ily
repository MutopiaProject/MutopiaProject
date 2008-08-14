\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "psyche-venus"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s2.*4 s1*4 s2.*2 s1 s1 s1 s1 \pageBreak
        s1*4 s1 s2.*4 s1*2 s2. s1 s2. s1 s1 \pageBreak
        s2. s1 s1 s1*21 s1 \pageBreak
      }
    >>
  >>
  \layout { }
}
