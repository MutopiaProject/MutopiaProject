\score {
  \new StaffGroup <<
    \new InnerStaffGroup <<
      \newStaff << \keepWithTag #'violons \global
                   \dessus \includeNotes "dessus" >>
      \newStaff << \keepWithTag #'violons \global
                   \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \keepWithTag #'violons \global
                   \taille \includeNotes "taille" >>
      \newStaff << \keepWithTag #'violons \global
                   \quinte \includeNotes "quinte" >>
      \newStaff << \keepWithTag #'violons \global
                   \basse \includeNotes "basse" >>
    >>
    \new InnerStaffGroup <<
      \newStaff << \keepWithTag #'() \global
                   \dessus \includeNotes "trompette" >>
      \newStaff << \keepWithTag #'() \global
                   \basse \includeNotes "timbales" >>
    >>
    \newStaff << \keepWithTag #'() \global
                 \basse \includeNotes "basse-continue" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 108 }
}