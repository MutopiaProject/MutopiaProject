\score {
  \new StaffGroup <<
    \new InnerStaffGroup <<
      \new Staff << \instrumentName \markup Dessus
                    \keepWithTag #'violons \global
                   \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \keepWithTag #'violons \global
                   \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \keepWithTag #'violons \global
                   \clef "taille" \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Quintes
                    \keepWithTag #'violons \global
                   \clef "quinte" \includeNotes "quinte" >>
      \new Staff << \instrumentName \markup Basses
                    \keepWithTag #'violons \global
                    \clef "basse" \includeNotes "basse" >>
    >>
    \new InnerStaffGroup <<
      \new Staff << \instrumentName \markup Trompette
                    \keepWithTag #'() \global
                    \clef "dessus" \includeNotes "trompette" >>
      \new Staff << \instrumentName \markup Timbales
                    \keepWithTag #'() \global
                    \clef "basse" \includeNotes "timbales" >>
    >>
    \new Staff << \instrumentName \markup \center-align { Basse continue }
                  \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse-continue" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}