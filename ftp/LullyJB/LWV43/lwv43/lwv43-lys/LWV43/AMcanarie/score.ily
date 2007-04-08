
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = "Canarie"
    petitTitre = "Trois fois cet air"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
