
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "Ouverture"
    entreeTexte = \markup \justify {
      L'ouverture se fait par un grand assemblage d'instruments ; 
      et dans le milieu du théâtre, on voit un élève du maître de musique,
      qui compose sur une table, un air que le Bourgeois a demandé pour 
      une sérénade.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
