\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \instrumentName \markup { Violons I }
        \global \includeNotes "violon1" >>
      \new Staff <<
        \instrumentName \markup { Violons II }
        \global \includeNotes "violon2" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Phèdre
      \global \includeNotes "phedre"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup \center-align { "Violons III" Clavecin }
      \global \includeNotes "violon3" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
