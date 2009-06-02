\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      { s1*13 s1*2 s2.*2 s1*2 s1 \break s1.*3 s1 s1. s1 s1. s1
        s1. s1*3 s1. s1 \break s1*2 s2.*2 s1 s2.*2 s1*3 s2. s1*4
        s2.*13 s2. s1*3 s2.*2 s1*4 s1*3 s1 \break s1*5 s1 s1 s1*3
        s1. s1*5 s1. s1*2 \break s2.*2 s1 s2.*2 s1 s1 s2. s1*2 s2.
        \break s2.*7 s2. s2. s2.*32 \break s1*6 }
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}