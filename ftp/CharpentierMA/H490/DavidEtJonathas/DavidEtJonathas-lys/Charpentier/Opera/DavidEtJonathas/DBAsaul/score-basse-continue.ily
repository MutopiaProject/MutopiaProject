\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "reduction"
      { s1*28 s1*8 s1*24 s1*7 s1*10 s1*7 \break s2.*15 \break s1*5 \break }
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres" >>
  >>
  \layout { }
}
