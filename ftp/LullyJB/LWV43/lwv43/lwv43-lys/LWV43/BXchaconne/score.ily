
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    titre = \markup \line { 
      Chaconne des Scaramouches, Trivelins et Arlequin.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
