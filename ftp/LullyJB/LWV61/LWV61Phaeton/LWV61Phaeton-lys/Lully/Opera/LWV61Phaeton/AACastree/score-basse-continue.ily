\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      { s2.*47\break s1*2 s1. s1*3 s1.*5 s1 s1.*2 s1*2 s2.\break }
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}