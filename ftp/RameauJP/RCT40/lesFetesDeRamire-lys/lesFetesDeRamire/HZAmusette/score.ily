\score {
  \new StaffGroup <<
    \newStaff <<
      \instrumentName \markup \instruments {
        \line { \concat { P \super rs } Violons }
        \line { et hautbois }
      }
      \global \includeNotes "dessus1"
    >>
    \newStaff <<
      \instrumentName \markup \instruments {
        \line { \concat { 2 \super es } Violons }
        \line { et hautbois }
      }
      \global \includeNotes "dessus2"
    >>
    \newStaff <<
      \instrumentName \markup \instruments { "Haute-contre" "et taille" }
      \global \includeNotes "haute-contre-taille"
    >>
    \newStaff <<
      \instrumentName \markup { \concat { P \super rs } Bassons }
      \global \includeNotes "basson1"
    >>
    \newStaff <<
      \instrumentName \markup \instruments { Basses "et bassons" }
      \global \includeNotes "basses"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
