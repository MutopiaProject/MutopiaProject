\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff <<
        \instrumentName \markup Violons
        \global \includeNotes "dessus"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup Haute-contre
        \global \includeNotes "haute-contre"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup Tailles
        \global \includeNotes "taille"
      >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Thésée
      \global \includeNotes "thesee"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
