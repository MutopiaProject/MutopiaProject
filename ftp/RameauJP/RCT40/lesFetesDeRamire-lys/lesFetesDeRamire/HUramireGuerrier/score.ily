\score {
  <<
    \new StaffGroup <<
      \newStaff <<
        \instrumentName \markup { \concat { P \super rs } Violons }
        \global \includeNotes "violon1" >>
      \newStaff <<
        \instrumentName \markup { \concat { 2 \super es } Violons }
        \global \includeNotes "violon2" >>
      \newStaff <<
        \instrumentName \markup Bassons
        \global \includeNotes "bassons" >>
    >>
    \new StaffGroupNoBar <<
      \newStaffWithLyrics <<
        \global \includeNotes "ramire"
        \characterName \markup Ramire
      >> \includeLyrics "paroles-ramire"
      \newStaffWithLyrics <<
        \characterName \markup "Un Guerrier"
        \global \includeNotes "guerrier"
      >> \includeLyrics "paroles-guerrier"
    >>
    \newStaff <<
      \instrumentName \markup Basses
      \global \includeNotes "basses"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
