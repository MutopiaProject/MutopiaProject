\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \basDessus \includeNotes "gloire-sagesse"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1*43 s1.*3 s1*2 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
