\score {
  \new StaffGroup <<
    \new GrandStaff <<
      \new Staff << \global \clef "dessus"
                    { \includeNotes "dessus-a"
                      \includeNotes "dessus-b1"
                      \includeNotes "dessus-c"
                      \includeNotes "dessus-d" } >>
      \newHaraKiriStaffB << \global \clef "dessus"
                            { s1*7 \break \includeNotes "dessus-b2" \break } >>
    >>
    \newHaraKiriStaff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
    \newHaraKiriStaff << \global \clef "taille" \includeNotes "taille" >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}