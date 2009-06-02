\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \characterName \markup Saül
      \global \clef "vbasse" \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \instrumentName \markup { Basse continue }
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}
