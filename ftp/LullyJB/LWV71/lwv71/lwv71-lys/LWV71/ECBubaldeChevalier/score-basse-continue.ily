\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "ubalde-chevalier"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s2.*14 s1*17 s2. s1.*15 s1 s1*5 s1*2 s1 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
