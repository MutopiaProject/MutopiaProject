\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    petitTitre = \markup \line {
      Entrée de ballet composée de deux Dryades, 
      quatre Sylvains, deux Fleuves et deux Naïades.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}