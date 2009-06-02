\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus" \includeNotes "dessus"
                  { s4 s1*7 s2. \break } >>
    \new Staff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
    \new Staff << \global \clef "taille" \includeNotes "taille" >>
    \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { }
}
