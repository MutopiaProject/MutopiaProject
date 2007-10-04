\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \voixHauteContre \includeNotes "chevalier"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
