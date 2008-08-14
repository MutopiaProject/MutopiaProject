\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "psyche-venus"
    >> \includeLyrics "paroles"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s1 s1 s1 s1*2 s1 s2.*2 s1*3 s1 s1*4 s1 s2.*2 s1 s2.
        s1*4 s2. s1*2 s2. s1 \pageBreak
        s1 s1*3 s2. s1*6 s1 s1*8 s2.*5 s1*6 }
    >>
  >>
  \layout { }
}
