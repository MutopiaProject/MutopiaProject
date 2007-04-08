
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "DEUXIÈME ENTRÉE"
    entreeTexte = \markup \justify {
      Les trois Importuns dancent.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
