\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup \center-align { Trompettes Hautbois }
                  \global \includeNotes "trompettes-hautbois" >>
    \new Staff << \instrumentName \markup { Violons I }
                  \global \includeNotes "violon1" >>
    \new Staff << \instrumentName \markup { Violons II }
                  \global \includeNotes "violon2" >>
    \new Staff << \instrumentName \markup Haute-contres
                  \global \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Tailles
                  \global \includeNotes "taille" >>
    \new Staff << \instrumentName \markup Timbales
                  \global \includeNotes "timbales" >>
    \new Staff << \instrumentName \markup Basses
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
