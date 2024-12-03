\score {
  <<
    \new StaffGroup <<
      \newStaff <<
        \global \includeNotes "trompette1"
        \instrumentName \markup { \concat { P \super rs } trompettes }
      >>
      \newStaff <<
        \global \includeNotes "trompette2"
        \instrumentName \markup { \concat { 2 \super es } trompettes }
      >>
    >>
    \new StaffGroup <<
      \newStaff <<
        \global \includeNotes "dessus1"
        \instrumentName \markup \instruments {
          \line { \concat { P \super rs } violons }
          \line { et hautbois }
        }
      >>
      \newStaff <<
        \global \includeNotes "dessus2"
        \instrumentName \markup \instruments {
          \line { \concat { 2 \super es } violons }
          \line { et hautbois }
        }
      >>
      \newStaff <<
        \global \includeNotes "haute-contre"
        \instrumentName \markup "Haute-contre"
      >>
      \newStaff <<
        \global \includeNotes "taille"
        \instrumentName \markup Taille
      >>
    >>
    \new StaffGroup <<
      \newStaff <<
        \global \includeNotes "timbales"
        \instrumentName \markup Timbales
      >>
      \newStaff <<
        \global \includeNotes "basse"
        \instrumentName \markup \instruments { Basse continue }
      >>
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 200 4) } }
}
