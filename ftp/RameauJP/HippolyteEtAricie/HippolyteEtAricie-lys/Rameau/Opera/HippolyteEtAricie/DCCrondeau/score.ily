\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Hautbois
                  { s2 s2.*7 s4 \break
                    s2 s2.*7 s4 \break }
                  \keepWithTag #'autres \global
                  \includeNotes "hautbois" >>
    \new Staff << \instrumentName \markup Violons
                  \keepWithTag #'autres \global
                  \includeNotes "violon" >>
    \new Staff << \instrumentName \markup Cors
                  \keepWithTag #'cor \global
                  \includeNotes "cor" >>
    \new Staff << \instrumentName \markup Haute-contres
                  \keepWithTag #'autres \global
                  \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Tailles
                  \keepWithTag #'autres \global
                  \includeNotes "taille" >>
    \new Staff << \instrumentName \markup Bassons
                  \keepWithTag #'autres \global
                  \includeNotes "basse" >>
    \new Staff << \instrumentName \markup Basses
                  \keepWithTag #'autres \global
                  \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
