
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "DERNIÈRE ENTRÉE."
    entreeTexte = \markup \justify {
      Une noce de village.
    }
    titre = "Un concert champêtre de l'époux."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
