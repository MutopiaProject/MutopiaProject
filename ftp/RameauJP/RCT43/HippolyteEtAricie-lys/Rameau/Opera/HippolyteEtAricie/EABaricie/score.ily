\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \instrumentName \markup { Flûtes I }
        \global \includeNotes "flute1"
      >>
      \new Staff <<
        \instrumentName \markup { Flûtes II }
        \global \includeNotes "flute2"
      >>
      \new Staff <<
        \instrumentName \markup { Violons I }
        \global \includeNotes "violon1"
      >>
      \new Staff <<
        \instrumentName \markup { Violons II }
        \global \includeNotes "violon2"
      >>
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Aricie
      \global \includeNotes "aricie"
      >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 96 4) } }
}
