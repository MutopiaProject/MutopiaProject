\score {
  \new StaffGroup <<
    \newStaff << \global \dessus \includeNotes "dessus1" >>
    \newStaff << \global \dessus \includeNotes "dessus2" >>
    \newStaff << \scoreInit \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { 
    acte = "ACTE CINQUIÈME"
    scene = "SCÈNE PREMIÈRE"
    sceneDescription = \markup \center-align {
      \line { Le théâtre change et représente le palais enchanté d'Armide. }
      \line \smallCaps { Renaud, Armide. }
    }
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
