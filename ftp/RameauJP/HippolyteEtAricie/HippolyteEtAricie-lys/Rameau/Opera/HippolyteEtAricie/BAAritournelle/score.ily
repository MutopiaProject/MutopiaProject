\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup { Violons I }
                  \global \includeNotes "violon1" >>
    \new Staff << \instrumentName \markup { Violons II }
                  \global \includeNotes "violon2" >>
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
