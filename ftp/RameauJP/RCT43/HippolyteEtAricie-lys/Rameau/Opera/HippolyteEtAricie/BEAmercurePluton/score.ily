\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \instrumentName \markup { Flûtes I }
                           \global \includeNotes "flute1" >>
      \newHaraKiriStaff << \instrumentName \markup { Flûtes II }
                           \global \includeNotes "flute2" >>
      \newHaraKiriStaff << \instrumentName \markup { Violons I }
                           \global \includeNotes "violon1" >>
      \newHaraKiriStaff << \instrumentName \markup { Violons II }
                           \global \includeNotes "violon2" >>
    >>
    \new Staff \withLyrics <<
      \global \includeNotes "mercure-pluton"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  { s2.*8 s1 \break }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
