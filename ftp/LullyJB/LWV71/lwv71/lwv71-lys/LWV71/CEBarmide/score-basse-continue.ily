\score {
  \new StaffGroupNoBar <<
    \newHaraKiriSmallStaff <<
      \newStaffWithLyrics <<
        \global \basDessus \includeNotes "armide"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1 s1*2 s2. s1 s2.*3 s1*7 s1 s1 s2. s1*4 s1 s1*2 s2.
                   s1*2 s2. s1*3 s2.*4 s1 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
