\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaffB \withLyrics <<
      { s2.*8 \break }
      \global \includeNotes "mercure-venus"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
