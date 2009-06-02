\score {
  \new StaffGroup <<
    \new Staff << \global \clef "basse"
                  { \includeNotes "basse-a"
                    \includeNotes "basse-b1"
                    \includeNotes "basse-c"
                    \includeNotes "basse-d"
                    \includeNotes "basse-e1"
                    \includeNotes "basse-f"
                    \includeNotes "basse-g1"
                    \includeNotes "basse-h" }
                  { s1*10 \break s1*13 \break s1*80 \break s1*7 \break
                    s1*28 \break s1*7 \break } >>
    \newHaraKiriStaffB << \global \clef "basse"
                          { s1*10 
                            \includeNotes "basse-b2"
                            s1*80
                            \includeNotes "basse-e2"
                            s1*28 
                            \includeNotes "basse-g2" } >>
    \newHaraKiriStaffB << \global \clef "basse"
                          { s1*10
                            \includeNotes "basse-b3"
                            s1*80
                            \includeNotes "basse-e3"
                            s1*28
                            \includeNotes "basse-g3" } >>
  >>
  \layout { }
}