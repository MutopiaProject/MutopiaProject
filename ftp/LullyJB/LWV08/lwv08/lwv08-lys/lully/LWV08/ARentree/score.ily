
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "IV. ENTRÉE."
    entreeTexte = \markup \justify {
      Quatre braves gallants se battent pour une querelle arrivée
      en la conversation qu'ils ont eu avec deux coquettes.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
