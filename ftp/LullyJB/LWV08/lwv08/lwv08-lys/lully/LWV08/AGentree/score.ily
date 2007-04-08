
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "PREMIÈRE ENTRÉE"
    entreeTexte = \markup \justify {
      Le divertissement fait la première entrée,
      accompagné de quelques uns de ses suivants,
      qui composent une musique d'instruments.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 108 }
}
