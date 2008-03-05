\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "thesee-debut"
    >> \includeLyrics "paroles-debut"
    \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "thesee-oenone"
      >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
