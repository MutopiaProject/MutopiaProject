\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Dessus
                 \global \includeNotes "dessus" >>
    \new Staff << \instrumentName \markup \center-align { Hautes-contres Tailles }
                 \global \includeNotes "haute-contre" >>
    \new Staff << \instrumentName \markup Bassons
                 \global \includeNotes "bassons" >>
    \new Staff << \instrumentName \markup { Basse continue }
                 \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
