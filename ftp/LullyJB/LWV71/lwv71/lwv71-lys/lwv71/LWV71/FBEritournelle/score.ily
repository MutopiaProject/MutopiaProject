\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "dessus" >>
    \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
    \newStaff << \global \taille \includeNotes "taille" >>
    \newStaff << \global \quinte \includeNotes "quinte" >>
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >> 
  \layout { 
    indent = \noindent
    #(define tweak-key (*current-piece*))
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}