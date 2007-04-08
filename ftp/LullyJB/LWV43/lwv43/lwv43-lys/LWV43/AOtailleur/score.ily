
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    petitTitre = "Premier air des graçons tailleur"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
