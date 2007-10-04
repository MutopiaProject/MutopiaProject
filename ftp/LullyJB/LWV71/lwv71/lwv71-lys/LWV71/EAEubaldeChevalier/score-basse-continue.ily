\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "ubalde-chevalier"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s2 s1*2 \pageBreak
                   s1*17 s2. s1 s2. \bar "" \pageBreak s4 }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
