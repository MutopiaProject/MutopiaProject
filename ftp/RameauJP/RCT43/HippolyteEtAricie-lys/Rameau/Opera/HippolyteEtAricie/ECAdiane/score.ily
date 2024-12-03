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
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Diane
      \global \includeNotes "diane"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup \center-align { Violons Clavecin }
      \global \includeNotes "violon-clavecin"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 96 4) } }
}
