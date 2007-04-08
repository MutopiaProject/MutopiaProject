\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes "dessus1" >>
    \newStaff << \global \dessus \includeNotes "dessus2" >>
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { 
    acte = "ACTE PREMIER"
    scene = "SCÈNE PREMIÈRE"
    sceneDescription = \markup \smallCaps { Armide, Phenice, Sidonie }
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
