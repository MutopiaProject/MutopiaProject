\score {
  \new StaffGroup <<
    \new Staff << \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse1" >>
    \new Staff << \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse2" >>
    \new Staff << \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse3" >>
    \new Staff << \keepWithTag #'() \global
                  \clef "basse" \includeNotes "basse4" >>
  >>
  \layout { }
}