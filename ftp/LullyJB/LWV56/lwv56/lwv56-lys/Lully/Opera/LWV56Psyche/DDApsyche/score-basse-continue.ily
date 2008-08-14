\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \characterName \markup Psyche
      \global \clef "vbas-dessus" \includeNotes "psyche" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres"
                  { s2. s1 s1*3 s1 s2. s1*2 s2.*3 s1 s1\pageBreak } >>
  >>
  \layout { indent = \largeindent }
}
