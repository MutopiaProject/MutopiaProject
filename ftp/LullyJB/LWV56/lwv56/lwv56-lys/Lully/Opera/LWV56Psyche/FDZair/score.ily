\score {
  \new StaffGroup <<
    \new InnerStaffGroup <<
      \new Staff << \instrumentName \markup Dessus
                    \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \clef "taille" \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Quintes
                    \global \clef "quinte" \includeNotes "quinte" >>
      \new Staff << \instrumentName \markup Basses
                    \global \clef "basse" \includeNotes "basse" >>
    >>
    \new InnerStaffGroup <<
      \new Staff << \instrumentName \markup Trompette
                    \global \clef "dessus" \includeNotes "trompette" >>
      \new Staff << \instrumentName \markup Tambour
                    \global \clef "basse" \includeNotes "tambour" >>
      \new Staff << \instrumentName \markup Timbales
                    \global \clef "basse" \includeNotes "timbales" >>
    >>
    \new Staff << \instrumentName \markup \center-align { Basse continue }
                  \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
