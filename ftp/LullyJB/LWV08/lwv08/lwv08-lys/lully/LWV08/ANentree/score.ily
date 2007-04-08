
\score {
  \dessusHauteContreTailleQuinteBasse
  \header {
    entree = "III. ENTRÉE."
    entreeTexte = \markup \justify {
      Deux chercheurs de trésors sont joués par deux esprits folets,
      mais enfin rudement battus par quatre démons. 
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
