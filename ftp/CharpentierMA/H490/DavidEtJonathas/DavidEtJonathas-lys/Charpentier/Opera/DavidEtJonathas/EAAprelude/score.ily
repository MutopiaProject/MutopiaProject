\score {
  \new StaffGroup <<
    \new GrandStaff <<
      \new Staff << \global \clef "dessus"
                    { \includeNotes "dessus-a"
                      << \includeNotes "dessus-b1" \\ \includeNotes "dessus-b2" >>
                      \includeNotes "dessus-c"
                      \includeNotes "dessus-d1"
                      \includeNotes "dessus-e" } >>
      \newHaraKiriStaffB << \global \clef "dessus"
                            { s1*26 s1*4 s1*4 \break
                              \includeNotes "dessus-d2" \break } >>
    >>
    \newHaraKiriStaff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
    \newHaraKiriStaff << \global \clef "taille" \includeNotes "taille" >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}