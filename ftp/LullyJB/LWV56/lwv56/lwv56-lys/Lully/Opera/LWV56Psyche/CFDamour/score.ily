\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup "L'Amour"
      \global \clef "vhaute-contre" \includeNotes "amour" 
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
