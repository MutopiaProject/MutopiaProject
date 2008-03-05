\score {
  \new StaffGroup <<
    \new Staff <<
      \instrumentName \markup Hautbois
      \keepWithTag #'autres \global
      \includeNotes "hautbois"
    >>
    \new Staff <<
      \instrumentName \markup { Cors en ré }
      \keepWithTag #'cor \global
      \includeNotes "cor"
    >>
    \new Staff <<
      \instrumentName \markup Bassons
      \keepWithTag #'autres \global
      \includeNotes "basson"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
