
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air pour les mêmes."
    petitTitre = "Sarabande." 
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
