\score {
  \new Staff << \global \clef "dessus" \includeNotes "dessus" >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}