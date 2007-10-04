\score {
  \new StaffGroupNoBar <<
    \newHaraKiriSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "armide-hidraot"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
