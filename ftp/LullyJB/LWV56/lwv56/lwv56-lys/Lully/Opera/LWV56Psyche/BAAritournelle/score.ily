\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus" \includeNotes "dessus1" >>
    \new Staff << \global \clef "dessus" \includeNotes "dessus2" >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
