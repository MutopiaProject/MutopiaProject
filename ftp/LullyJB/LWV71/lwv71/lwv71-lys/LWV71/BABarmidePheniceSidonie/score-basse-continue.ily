\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \basDessus \includeNotes "armide-phenice-sidonie"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s2 s2.*12 s1*10 \pageBreak s1*20 s1.*7 \pageBreak
                   s1.*8 s1*2 s1 s2.*2 s1 s2.*3 \pageBreak
                   s1*4 s2. s1 s2.*5 s1*2 s2. s1*2 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
