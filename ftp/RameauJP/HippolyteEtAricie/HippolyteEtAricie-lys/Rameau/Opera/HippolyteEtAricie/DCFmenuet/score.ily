\score {
  \new StaffGroup <<
    \new Staff << \instrumentName \markup Hautbois
                  { s2.*16 \break }
                  \global \includeNotes "hautbois" >>
    \new Staff << \instrumentName \markup Bassons
                  \global \includeNotes "basson" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
