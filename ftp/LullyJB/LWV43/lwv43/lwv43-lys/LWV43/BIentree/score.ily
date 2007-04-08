
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "PREMIÈRE ENTRÉE"
    entreeTexte = \markup \justify {
      Un homme vient donner les livres du Ballet, qui d'abord est fatigué
      par une multitude de gens de Provinces différentes, qui crient en
      musique pour en avoir, et par trois importuns qu'il trouve sur ses pas.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
