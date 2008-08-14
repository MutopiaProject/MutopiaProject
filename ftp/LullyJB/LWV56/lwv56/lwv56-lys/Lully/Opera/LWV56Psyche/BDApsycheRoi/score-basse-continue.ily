\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "psyche-roi" 
    >> \includeLyrics "paroles"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s1 s2.*2 s1 s2. s1 \pageBreak
        s2.*3 s1
        s2.\noBreak s2.\noBreak s2.\noBreak s1
        s1*3
        s1*4
        s1*3
        s2.\noBreak s1\noBreak s1\noBreak s1

        s1 s2.*2
        s2.\noBreak s2.\noBreak s1
        s1 s2. s1
        s1*3
        s2.\noBreak s2.\noBreak s1\noBreak s1
        s2.\noBreak s1\noBreak s1

        s1*2 s2.*3 s1*2 s2. s1 s2. s1*6 s2.*2 s1 s2. s1*2 s2. s1
        s2.*2 s1 s2. s1*2

      }
    >>
  >>
  \layout { }
}
