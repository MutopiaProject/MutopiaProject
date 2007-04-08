\score {
  \new StaffGroup <<
    \newStaff <<
      \instrumentName \markup { \null \translate #'(0 . -10) "Hautbois" }
      \scoreInit \global
      \dessus \includeNotes "hautbois1"
    >>
    \newStaff <<
      \global \dessus \includeNotes "hautbois2"
    >>
    \newStaff <<
      \global \basse \includeNotes "basse"
    >>
  >>
  \header { titre = "MENUET" }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
