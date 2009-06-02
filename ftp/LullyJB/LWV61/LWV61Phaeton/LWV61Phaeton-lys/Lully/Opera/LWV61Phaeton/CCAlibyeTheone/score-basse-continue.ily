\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      { s2.*41 s1.*3 s1*7 s1.*4 s1 s1.*2 s1*4 s1.*37 \break }
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}