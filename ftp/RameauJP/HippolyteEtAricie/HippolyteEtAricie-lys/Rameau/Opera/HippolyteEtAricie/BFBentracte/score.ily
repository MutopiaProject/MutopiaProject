\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Violons
                  \global \includeNotes "dessus" >>
    \new Staff << \instrumentName \markup Haute-contres
                  \global \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Tailles
                  \global \includeNotes "taille" >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
    \new Staff << \instrumentName \markup Contre-basses
                  \global \includeNotes "contre-basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
