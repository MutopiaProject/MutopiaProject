\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaff << \global \includeNotes "violon" >>
    \new Staff \withLyrics <<
      \global \includeNotes "thesee-tisiphone"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
