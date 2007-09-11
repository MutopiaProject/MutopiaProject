\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup { \concat { P \super re } \smallCaps Grace }
      \global \includeNotes "grace1"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics <<
      \characterName \markup { \concat { 2 \super e } \smallCaps Grace }
      \global \includeNotes "grace2"
    >> \includeLyrics "paroles23"
    \newStaffWithLyrics <<
      \characterName \markup { \concat { 3 \super e } \smallCaps Grace }
      \global \includeNotes "grace3"
    >> \includeLyrics "paroles23"
    \newStaff << \global \includeNotes "violons"
                 \instrumentName \markup Violons >>
    >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
