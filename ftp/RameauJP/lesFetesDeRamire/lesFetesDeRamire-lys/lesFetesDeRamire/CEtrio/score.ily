\score {
  \new StaffGroup <<
    \newStaff << \global \includeNotes "dessus1" >>
    \newStaff << \global \includeNotes "dessus2" >>
    \newStaff << \global \includeNotes "basse" >>
  >>
  \header { titre = "AIR EN TRIO" }
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
