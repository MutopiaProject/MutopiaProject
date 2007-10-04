\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "armide-renaud"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1*4 s2. s1 s2. s1*6 s2.*3 s1*4 s2. s1 s1 s2. s1*2
                   s2.*4 s1 s2. s1 s2. \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
