\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \global \clef "vdessus" \includeNotes "reduction"
      { s1*9 s2.*13 s1*22 s1.*29 s1*4 s2.*11 s1*6 s2.*5 \break s1*3 s2.*5 s1*4 }
    >> \includeLyrics "paroles-reduction"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}