\score {
  \new StaffGroup <<
    \newStaff <<
      \global \includeNotes "dessus"
      \instrumentName \markup \instruments { Violons "et flûtes" }
    >>
    \newStaff <<
      \global \includeNotes "haute-contre"
      \instrumentName \markup "Haute-contre"
    >>
    \newStaff <<
      \global \includeNotes "taille"
      \instrumentName \markup Taille
    >>
    \newStaff <<
      \global \includeNotes "basse"
      \instrumentName \markup \instruments { Basse continue }
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
