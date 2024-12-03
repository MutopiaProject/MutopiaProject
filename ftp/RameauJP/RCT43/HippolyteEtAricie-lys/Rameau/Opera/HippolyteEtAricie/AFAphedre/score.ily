\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaff <<
      \instrumentName \markup Violons
      \global \includeNotes "violon" >>
    \new Staff \withLyrics <<
      \characterName \markup Phèdre
      \global \includeNotes "phedre"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                 %{ s2 s1*3 s1*5 s1*3 \break %}
                 \global \includeNotes "basse" >>
  >>
  \layout { 
    indent = \largeindent
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
