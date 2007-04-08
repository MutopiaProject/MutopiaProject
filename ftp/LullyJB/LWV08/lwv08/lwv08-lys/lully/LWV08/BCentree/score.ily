
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "VI. ENTRÉE."
    entreeTexte = \markup \justify {
      Huit chasseurs vont à la chasse avec des tambours.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
