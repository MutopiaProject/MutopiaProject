\score {
  \new StaffGroup <<
    \new Staff << \global \clef "dessus" \includeNotes "dessus" >>
    \new Staff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
    \new Staff << \global \clef "taille" \includeNotes "taille"
                  \includeFigures "chiffres-taille" >>
    \new Staff << \global \clef "quinte" \includeNotes "quinte"
                  \includeFigures "chiffres-quinte" >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres-basse" >>
  >>
  \layout { }
  \midi { }
}
