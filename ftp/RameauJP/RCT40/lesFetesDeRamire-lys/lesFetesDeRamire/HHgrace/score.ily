\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup \instruments \smallCaps { "La meme" Grace }
      \global \includeNotes "grace"
    >> \includeLyrics "paroles"
    \newStaff <<
      \instrumentName \markup \instruments { Basse Continue }
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
