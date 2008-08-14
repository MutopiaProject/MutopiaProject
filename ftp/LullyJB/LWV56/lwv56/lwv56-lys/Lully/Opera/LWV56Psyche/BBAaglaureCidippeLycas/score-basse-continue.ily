\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics << 
      \global
      \includeNotes "aglaure-cidippe"
    >> \includeLyrics "paroles-aglaure"
    \newTinyHaraKiriStaff \withLyrics << 
      \global \includeNotes "aglaure-cidippe-lycas"
    >> \includeLyrics "paroles"
    \new Staff << 
      \global
      {
        \clef "basse"
        \includeNotes "basse"
        \notemode { sol,4 sol, la, si, | \custosNote do4 }
      }
      \includeFigures "chiffres"
      {
        s1*3 s2.
        s1*2 s2. s1
        s2. s1*2 s1 %\break
        s2. s1*2 %\break
        s1 s2. s1*2 %\break 
        s2.*3 s1*5 s1*2 s1*3 \pageBreak
        s2. s1 s2.*3 s1*3 s2. s1*2 s2. s1 %\pageBreak
        s2.*2 s1
        \pageBreak
        s1*6 s1 s1 s1*11
        %\break
        s1*3 s1*2
        %\break
        s1*3 \pageBreak s1*28
      }
    >>
  >>
  \layout { }
}
