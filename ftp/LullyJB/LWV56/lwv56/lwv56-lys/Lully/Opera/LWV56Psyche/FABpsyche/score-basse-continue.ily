\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \characterName \markup Psyché
      \global \clef "vbas-dessus" \includeNotes "psyche" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
}
