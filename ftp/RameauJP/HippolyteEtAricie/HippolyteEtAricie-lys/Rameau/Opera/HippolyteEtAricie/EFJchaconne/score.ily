\score {
  \new StaffGroupNoBar <<
    \new InnerStaffGroup <<
      \new Staff << \instrumentName \markup { Flûtes I }
                    \global \includeNotes "flute1" >>
      \new Staff << \instrumentName \markup { Flûtes II }
                    \global \includeNotes "flute2" >>
      \new Staff << \instrumentName \markup { Hautbois I }
                    \global \includeNotes "hautbois1" >>
      \new Staff << \instrumentName \markup { Hautbois II }
                    \global \includeNotes "hautbois2" >>
      \new Staff << \instrumentName \markup Bassons
                    \global \includeNotes "basson" >>
    >>
    \new InnerStaffGroup <<
      \new Staff << \instrumentName \markup { Violons I }
                    \global \includeNotes "violon1" >>
      \new Staff << \instrumentName \markup { Violons II }
                    \global \includeNotes "violon2" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Basses
                    \global \includeNotes "basse" >>
    >>
  >>
  \layout {
    indent = \largeindent
    incipit-width = #(* incipit-width 0.8)
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
