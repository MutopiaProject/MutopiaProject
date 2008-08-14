\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "aglaure-cidippe" 
    >> \includeLyrics "paroles"
    \new Staff <<
      { s1*5 s1 \pageBreak
        s2. s1*9 s2. \pageBreak
        s2.*6 s2. s2. s2.*12 s1 s2.
        s2.*5 s2. s2. s2.*11 \pageBreak }
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres" 
    >>
  >>
  \layout { }
}
