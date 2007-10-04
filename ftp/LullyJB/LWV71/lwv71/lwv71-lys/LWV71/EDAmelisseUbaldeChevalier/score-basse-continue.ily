\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "melisse-ubalde-chevalier"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s4 s2.*5 \pageBreak s2.*32 s2 \bar "" \pageBreak
                 s4 s2.*5 s1 s2.*22 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
