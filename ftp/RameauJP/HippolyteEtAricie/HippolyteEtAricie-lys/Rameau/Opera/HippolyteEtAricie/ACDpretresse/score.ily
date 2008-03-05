\score {
  \new StaffGroupNoBar <<
    \new Staff << \instrumentName \markup { Hautbois seul }
                  \global \includeNotes "hautbois" >>
    \new Staff \withLyrics <<
      \characterName \markup { Une Prêtresse }
      \global \includeNotes "pretresse"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
