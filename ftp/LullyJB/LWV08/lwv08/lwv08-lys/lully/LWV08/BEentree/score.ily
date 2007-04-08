
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "VII. ENTRÉE."
    entreeTexte = \markup \justify {
      Deux alchimistes veulent changer le mercure en argent,
      et le succès imprévu de cette entreprise, donne occasion
      à six Mercure qui paraissent de se moquer d'eux.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
