\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \basDessus \includeNotes "armide-sidonie"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse-continue"
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
