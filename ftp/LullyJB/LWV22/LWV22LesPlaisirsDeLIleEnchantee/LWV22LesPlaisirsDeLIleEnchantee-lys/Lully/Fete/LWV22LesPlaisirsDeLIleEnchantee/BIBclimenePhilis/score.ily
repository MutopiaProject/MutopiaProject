\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup Climène
      \global \clef "vbas-dessus" \includeNotes "climene"
    >> \includeLyrics "paroles-climene"
    \new Staff \withLyrics <<
      \characterName \markup Philis
      \global \clef "vbas-dessus" \includeNotes "philis"
    >> \includeLyrics "paroles-philis"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}