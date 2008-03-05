\score {
  \new StaffGroup <<
    \new Staff <<
      \instrumentName \markup \center-align {
        \line { Violons I } \line { Hautbois I }
      }
      \global \includeNotes "dessus1"
    >>
    \new Staff <<
      \instrumentName \markup \center-align {
        \line { Violons II } \line { Hautbois II }
      }
      \global \includeNotes "dessus2"
    >>
    \new Staff <<
      \instrumentName \markup \center-align { Haute-contres Tailles }
      \global \includeNotes "haute-contre-taille"
    >>
    \new Staff <<
      \instrumentName \markup Bassons
      \global \includeNotes "basson"
    >>
    \new Staff <<
      \instrumentName \markup Basses
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } }
}
