\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \characterName \markup "Un Guerrier"
      \global \clef "vtaille" \includeNotes "voix-reduction"
      { s2.*18 s1*12 s2. \break }
    >> \includeLyrics "paroles-reduction"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}
