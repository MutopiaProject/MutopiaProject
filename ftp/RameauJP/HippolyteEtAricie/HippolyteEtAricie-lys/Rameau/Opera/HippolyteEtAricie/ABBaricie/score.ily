\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup "Flûte seule"
                    \global \includeNotes "flute" >>
      \new Staff << \instrumentName \markup { Violons I }
                   \global \includeNotes "violon1" >>
      \new Staff << \instrumentName \markup { Violons II }
                   \global \includeNotes "violon2" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Aricie
      \global \includeNotes "aricie"
    >> \includeLyrics "paroles"
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
