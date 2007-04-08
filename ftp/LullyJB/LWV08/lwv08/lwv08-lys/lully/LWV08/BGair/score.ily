
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Deuxième air"
    petitTitre = "Six Mercure se moquent d'eux"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
