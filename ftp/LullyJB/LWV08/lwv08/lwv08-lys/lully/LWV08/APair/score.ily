
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Troisième air pour les mêmes."
    petitTitre = "Quatre démons"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
