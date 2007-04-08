
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "III. ENTRÉE."
    entreeTitre = "Soldats et notaires"
    entreeTexte = \markup \justify {
      Deux goujas du régiment des gardes lassés de la servitude de leurs maîtres,
      se déguisent en notaires pour leur faire prêter argent en s'obligeant par
      corps, pour ensuite les faire mettre en prison pour se vanger d'eux.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
