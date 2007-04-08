
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "V. ENTRÉE."
    entreeTitre = "Trois sobres, six ivrognes"
    entreeTexte = \markup \justify {
      Six crocheteurs à demi ivres louent des habits de masques pour se réjouir
      au cabaret entre eux ; mais s'étant enivrés sortent et dansent ensembles, 
      chancellant souvent sans tomber ni sortir hors cadence, tant ils ont
      parmi le vin l'oreille faite au son des violon.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
