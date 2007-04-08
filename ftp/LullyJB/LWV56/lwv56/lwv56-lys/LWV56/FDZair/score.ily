\score {
  \new StaffGroup <<
    \new InnerStaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse" >>
    >>
    \new InnerStaffGroup <<
      \newStaff << \global \dessus \includeNotes "trompette" >>
      \newStaff << \global \basse \includeNotes "tambour" >>
      \newStaff << \global \basse \includeNotes "timbales" >>
    >>
    \newStaff << \keepWithTag #'() \global
                 \basse \includeNotes "basse" >>
  >>
  \header {
    titre = "Deuxième Air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}