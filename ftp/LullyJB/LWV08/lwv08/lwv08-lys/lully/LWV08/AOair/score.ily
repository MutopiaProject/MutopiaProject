
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air pour les mêmes."
    petitTitre = "Deux esprits folets"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
