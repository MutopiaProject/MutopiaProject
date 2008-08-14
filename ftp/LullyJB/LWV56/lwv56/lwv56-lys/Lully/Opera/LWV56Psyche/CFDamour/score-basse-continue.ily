\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \characterName \markup "L'Amour"
      \global \clef "vhaute-contre" \includeNotes "amour" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}
