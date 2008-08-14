\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup Flore
      \global \clef "vbas-dessus" \includeNotes "flore" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
