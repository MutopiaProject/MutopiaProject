\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus2" \includeNotes "dessus" >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
