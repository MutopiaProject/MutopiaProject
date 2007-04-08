\score {
  <<
    \new StaffGroup <<
      \newStaff << \scoreInit \global \dessus \includeNotes "flute-dessus1" >>
      \newStaff <<
        \instrumentName \markup Flutes
        \global \dessus \includeNotes "flute-dessus2" >>
      \newStaff << \global \taille \includeNotes "flute-taille" >>
    >>
    \new StaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff <<
        \instrumentName \markup Violons
        \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse" >>
    >>
  >>
  \header { titre = "MENUET" }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 124 4) } }
}
