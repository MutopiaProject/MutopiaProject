\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Psyché
      \global \clef "vbas-dessus" \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
