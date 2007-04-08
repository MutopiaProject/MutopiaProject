
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = \markup \line { 
      L'entrée des Scaramouches, Trivelins et Arlequin
      représentant une nuit.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
