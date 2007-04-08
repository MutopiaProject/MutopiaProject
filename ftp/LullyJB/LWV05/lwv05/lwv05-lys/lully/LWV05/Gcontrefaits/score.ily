
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "III. ENTRÉE."
    entreeTitre = "Les contre-faits"
    entreeTexte =  \markup \justify {
      Scaramouche et Trivelin s'étant laissés aller à la tristesse
      de la mort de Brignel, reprennent coeur en voulant donner à la
      Comédie de quoi réparer sa perte ; prennent des habits de ballet
      semblables, et l'un apprenant des pas à l'autre, espèrent en 
      divertir la compagnie en se contrefaisant l'un l'autre agréablement
      et en cadence.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
