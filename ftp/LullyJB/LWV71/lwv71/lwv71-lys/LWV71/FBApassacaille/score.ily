\score {
  <<
    \new StaffGroup <<
      \newStaff << \global \dessus \includeNotes "flute1" 
                   { s2.*24 \break s4 s2_"Flutes" } >>
      \newStaff << \global \dessus \includeNotes "flute2" 
                   { s2.*24 s4 s2_"Flutes" } >>
      \newStaff << \global \taille \includeNotes "flute-taille" >>
    >>
    \new StaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse"
                   \override Score . VerticalAxisGroup #'remove-first = ##t
                   \includeFigures "chiffres" >>
    >>
  >>
  \layout { \context { \RemoveEmptyStaffContext } }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
