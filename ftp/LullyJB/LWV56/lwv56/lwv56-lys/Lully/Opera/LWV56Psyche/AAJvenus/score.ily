\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup Vénus
      \global \clef "vbas-dessus" \includeNotes "venus" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
