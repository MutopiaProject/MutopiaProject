\score {
  \new StaffGroupNoBar <<
    \new ChoirStaff <<
      \newTinyHaraKiriStaff \withLyrics <<
        \characterName \markup David
        \global \clef "vhaute-contre" \includeNotes "reduction"
      >> \includeLyrics "paroles-reduction"
    >>
    \new Staff << \instrumentName \markup Basses
                  \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}