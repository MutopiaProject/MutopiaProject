\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaffB <<
      { s2.*6 \break s2._"Basson seul et violoncelles" }
      \global \includeNotes "basson"
    >>
    \new Staff \withLyrics <<
      \characterName \markup Diane
      \global \includeNotes "diane"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
