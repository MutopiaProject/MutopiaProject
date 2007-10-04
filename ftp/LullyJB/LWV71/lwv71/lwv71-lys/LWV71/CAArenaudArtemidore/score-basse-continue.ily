\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "artemidore-renaud"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1*7 s2.*2 s1 s2.*2 s1 s2.*2 s1*2 s2. s1*2 s1 s1*2 s2.
                   s1 s2. s1 s2. s1 s1 s2.*2 s1*13 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
