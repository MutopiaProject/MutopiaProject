\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "dessus" >>
    \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
    \newStaff << \global \taille \includeNotes "taille" >>
    \newStaff << \global \quinte \includeNotes "quinte" >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
