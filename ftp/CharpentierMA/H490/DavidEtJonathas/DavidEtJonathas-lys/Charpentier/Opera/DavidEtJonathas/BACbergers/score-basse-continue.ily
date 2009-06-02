\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \characterName \markup "Une Bergère"
      \global \clef "vdessus" \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}
