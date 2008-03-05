\score {
  \new StaffGroupNoBar <<
    \new Staff << \instrumentName \markup Violons
                  \global \includeNotes "violons" >>
    \new Staff \withLyrics <<
      \characterName \markup Tisiphone
      \global \includeNotes "tisiphone"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
