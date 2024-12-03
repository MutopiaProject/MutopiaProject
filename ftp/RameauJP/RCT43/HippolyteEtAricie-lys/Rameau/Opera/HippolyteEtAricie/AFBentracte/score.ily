\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Flûtes
                  \global \includeNotes "flutes" >>
    \new Staff << \instrumentName \markup Violons
                  \global \includeNotes "violons" >>
    \new Staff << \instrumentName \markup Haute-contres
                  \global \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Tailles
                  \global \includeNotes "taille" >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
