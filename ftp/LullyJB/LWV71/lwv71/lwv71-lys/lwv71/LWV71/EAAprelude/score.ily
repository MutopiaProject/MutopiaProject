\score {
  \dessusHauteContreTailleQuinteBasse
  \header { 
    acte = "ACTE QUATRIÈME"
    scene = "SCÈNE PREMIÈRE"
    sceneDescription = \markup \smallCaps { Ubalde, Le Chevalier Danois }
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
