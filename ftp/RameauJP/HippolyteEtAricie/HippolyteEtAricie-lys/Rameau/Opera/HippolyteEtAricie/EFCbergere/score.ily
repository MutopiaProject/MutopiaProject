\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup "Une bergère"
      \global \includeNotes "bergere"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
