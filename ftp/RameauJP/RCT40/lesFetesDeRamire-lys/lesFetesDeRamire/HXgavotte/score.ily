\score {
  \new StaffGroup <<
    \newStaff <<
      \instrumentName \markup Flûtes
      \global \includeNotes "flutes"
    >>
    \newStaff <<
      \instrumentName \markup { \concat { P \super rs } Violons }
      \global \includeNotes "violon1"
    >>
    \newStaff <<
      \instrumentName \markup { \concat { 2 \super es } Violons }
      \global \includeNotes "violon2"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
