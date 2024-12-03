\score {
  \new StaffGroup <<
    \newStaff <<
      \global \includeNotes "trompette"
      \instrumentName \markup Trompettes
    >>
    \newStaff <<
      \global \includeNotes "dessus"
      \instrumentName \markup \instruments { "Violons et" hautbois }
    >>
    \newStaff <<
      \global \includeNotes "basse"
      \instrumentName \markup Basse
    >>
    \newStaff <<
      \global \includeNotes "timbales"
      \instrumentName \markup Timbales
    >>
  >>
  \layout {
    indent = \largeindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
