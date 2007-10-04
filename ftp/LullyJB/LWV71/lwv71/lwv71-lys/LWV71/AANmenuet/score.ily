\score {
  \new StaffGroup <<
    \newStaff <<
      \instrumentName \markup { \null \translate #'(0 . -10) "Hautbois" }
      \global \dessus \includeNotes "hautbois1"
    >>
    \newStaff <<
      \global \dessus \includeNotes "hautbois2"
    >>
    \newStaff <<
      \global \basse \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
