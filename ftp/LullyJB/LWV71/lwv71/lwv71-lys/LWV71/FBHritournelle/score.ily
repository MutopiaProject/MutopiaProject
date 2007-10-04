\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "flute1" 
                 { s2_"Flutes" } >>
      \newStaff << \global \dessus \includeNotes "flute2" 
                   { s2_"Flutes" } >>
    \newStaff << \global \taille \includeNotes "flute-taille"
                 \includeFigures "chiffres" >>
  >>
  \layout { 
    indent = \noindent
    \context { \Staff \remove "Time_signature_engraver" }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
