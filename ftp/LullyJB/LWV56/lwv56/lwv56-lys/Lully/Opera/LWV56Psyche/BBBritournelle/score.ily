\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus" \includeNotes "dessus1" >>
    \new Staff << \global \clef "dessus" \includeNotes "dessus2" >>
    \new Staff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
    \new Staff << \global \clef "taille" \includeNotes "taille" >>
    \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 192 4) } }
}
