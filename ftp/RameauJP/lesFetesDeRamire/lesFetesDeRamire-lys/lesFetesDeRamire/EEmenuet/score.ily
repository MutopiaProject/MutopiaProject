\score {
  \new StaffGroup <<
    \newStaff <<
      \global \includeNotes "hautbois1"
      \instrumentName \markup { \concat { P \super rs } hautbois }
    >>
    \newStaff <<
      \global \includeNotes "hautbois2"
      \instrumentName \markup { \concat { 2 \super es } hautbois }
    >>
    \newStaff <<
      \global \includeNotes "basson1"
      \instrumentName \markup { \concat { P \super rs } bassons }
    >>
    \newStaff <<
      \global \includeNotes "basson2"
      \instrumentName \markup { \concat { 2 \super es } bassons }
    >>
    \newStaff <<
      \global \includeNotes "basses"
      \instrumentName \markup Basses
      { s2.*16 \break }
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
