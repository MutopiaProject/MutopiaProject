\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup \center-align { Hautbois Violons }
                  { s2.*8 \break }
                  \keepWithTag #'autres \global
                  \includeNotes "dessus" >>
    \new Staff << \instrumentName \markup Cors
                  \keepWithTag #'cor \global
                  \includeNotes "cor" >>
    \new Staff << \instrumentName \markup Haute-contres
                  \keepWithTag #'autres \global
                  \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Tailles
                  \keepWithTag #'autres \global
                  \includeNotes "taille" >>
    \new Staff << \instrumentName \markup \center-align { Bassons Basses }
                  \keepWithTag #'autres \global
                  \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } }
}
