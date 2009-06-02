\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      { s1*2 s2. s1 s1*2 s2.*2 s1*5 s1 s2. s1*2 s2. \break }
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}