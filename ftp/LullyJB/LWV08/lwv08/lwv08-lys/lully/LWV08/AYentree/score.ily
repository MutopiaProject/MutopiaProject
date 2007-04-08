
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "V. ENTRÉE."
    entreeTexte = \markup \justify {
      Onze docteurs reçoivent un docteur en âneries,
      qui pour mériter cet honneur soutient des thèses
      dédiées à Scaramouche.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
