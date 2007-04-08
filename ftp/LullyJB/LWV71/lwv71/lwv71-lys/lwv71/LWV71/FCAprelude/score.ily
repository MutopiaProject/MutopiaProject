\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "dessus1" >>
    \newStaff << \global \dessus \includeNotes "dessus2" >>
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { 
    scene = "SCÈNE TROISIÈME"
    sceneDescription = \markup \center-align {
      \line \smallCaps { Renaud, Ubalde, le Chevalier Danois. }
    }
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) } }
}
