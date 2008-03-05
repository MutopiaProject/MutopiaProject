\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup \center-align { Hautbois Musettes }
                  \global \includeNotes "hautbois" >>
    \new Staff << \instrumentName \markup Violons
                  \global \includeNotes "violon" >>
    \new Staff << \instrumentName \markup Bassons
                  \global \includeNotes "basson" >>
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout {
    indent = \largeindent
    ragged-right = ##t
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
