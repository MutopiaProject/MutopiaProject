\score {
  \new StaffGroup <<
    \newStaff << \global \includeNotes "dessus1"
                 \instrumentName \markup { \concat { P \super rs } violons } >>
    \newStaff << \global \includeNotes "dessus2"
                 \instrumentName \markup { \concat { 2 \super es } violons } >>
    \newStaff << \global \includeNotes "cor1"
                 \instrumentName \markup { \concat { P \super rs } cors } >>
    \newStaff << \global \includeNotes "cor2"
                 \instrumentName \markup { \concat { 2 \super es } cors } >>
    \newStaff << \global \includeNotes "haute-contre"
                 \instrumentName \markup \instruments { Haute contres } >>
    \newStaff << \global \includeNotes "tailles"
                 \instrumentName \markup Tailles >>
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse continue } >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
