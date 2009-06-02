\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus" \includeNotes "dessus" >>
    \new Staff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
    \new Staff << \global \clef "taille" \includeNotes "taille" >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { }
}