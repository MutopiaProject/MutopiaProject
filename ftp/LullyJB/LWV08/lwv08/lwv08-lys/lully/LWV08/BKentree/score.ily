
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "IX. ENTRÉE."
    entreeTexte = \markup \justify {
      Jean Doucet et son frère veulent tromper quatre Bohémiennes.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
