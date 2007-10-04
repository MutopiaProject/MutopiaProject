\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "lucinde-ubalde-chevalier"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
