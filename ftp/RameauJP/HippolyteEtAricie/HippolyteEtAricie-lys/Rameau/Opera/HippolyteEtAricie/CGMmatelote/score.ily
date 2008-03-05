\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup { Hautbois \smaller seul }
                    \global \includeNotes "hautbois" >>
      \new Staff << \instrumentName \markup Violons
                    \global \includeNotes "violon" >>
      \new Staff << \instrumentName \markup { Basson \smaller seul }
                    \global \includeNotes "basson" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Matelote
      \global \includeNotes "matelote"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
