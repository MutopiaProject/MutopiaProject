\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \characterName \markup Flore
      \global \clef "vbas-dessus" \includeNotes "flore" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}
