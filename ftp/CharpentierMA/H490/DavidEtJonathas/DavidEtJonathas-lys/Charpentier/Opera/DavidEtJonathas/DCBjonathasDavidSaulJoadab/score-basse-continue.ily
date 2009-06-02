\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-reduction"
      { s1*15 s2.*6 \break s2.*13 \break}
    >> \includeLyrics "paroles-reduction"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}