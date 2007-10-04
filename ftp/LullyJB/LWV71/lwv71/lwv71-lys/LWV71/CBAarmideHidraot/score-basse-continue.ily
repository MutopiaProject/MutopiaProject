\score {
  \new StaffGroupNoBar <<
    \newHaraKiriSmallStaff <<
      \newStaffWithLyrics <<
        \global \includeNotes "armide-hidraot-partiel"
      >> \includeLyrics "paroles-partiel"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1*15 s1*6 s2. s1 s2. s1 \break }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
