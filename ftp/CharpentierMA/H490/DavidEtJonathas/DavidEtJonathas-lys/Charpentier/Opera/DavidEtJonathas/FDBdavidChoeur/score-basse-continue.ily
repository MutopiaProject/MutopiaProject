\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "reduction"
      { s1.*21 \break }
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}
