
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "IV. ENTRÉE."
    entreeTitre = "Poltrons et braves"
    entreeTexte = \markup \justify {
      Deux poltrons travestis en braves font les Rodomons, contre un Gascon
      travesti en Polichinelle, qui faisait le poltron en fuyant devant eux,
      à la fin les frotte d'importance.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
