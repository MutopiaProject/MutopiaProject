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
      \global \includeNotes "basson"
      \instrumentName \markup Bassons
    >>
  >>
  \layout {
    indent = \largeindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
