
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "II. ENTRÉE."
    entreeTexte = \markup \justify {
      Deux astrologues poursuivis chacun par son propre malheur, 
      tâchent en vain par le moyen de leur art d'attraper le bonheur.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
