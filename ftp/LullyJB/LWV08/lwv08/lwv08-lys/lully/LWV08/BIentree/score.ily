
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "VIII. ENTRÉE."
    entreeTexte = \markup \justify {
      Six Indiens et six Indiennes basannés portent des parasols
      pour se défendre du hâle.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
