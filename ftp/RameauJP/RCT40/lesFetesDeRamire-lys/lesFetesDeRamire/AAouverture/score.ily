\score {
  \new StaffGroup <<
    \newStaff << \global \includeNotes "dessus1"
                 \instrumentName \markup { \concat { P \super rs } Violons } >>
    \newStaff << \global \includeNotes "dessus2"
                 \instrumentName \markup { \concat { 2 \super es } Violons } >>
    \newStaff << \global \includeNotes "cor1"
                 \instrumentName \markup { \concat { P \super rs } Cors } >>
    \newStaff << \global \includeNotes "cor2"
                 \instrumentName \markup { \concat { 2 \super es } Cors } >>
    \newStaff << \global \includeNotes "haute-contre-taille"
                 \instrumentName \markup \instruments { "Haute-contre" 
                                                        "et tailles" } >>
    \newStaff << \global \includeNotes "basse"
                 \instrumentName \markup \instruments { Basse continue } >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
