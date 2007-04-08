\score {
  \dessusHauteContreTailleQuinteBasse
  \header { 
    scene = "SCÈNE TROISIÈME"
    sceneDescription = \markup \smallCaps { Ubalde, Le Chevalier Danois }
    titre = "PRÉLUDE"
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
