\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "armide-renaud-ubalde-chevalier"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1*4 s2. s1*6 s2.*2 s1*4 s2. \bar "" \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
