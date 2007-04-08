
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "IV. ENTRÉE."
    entreeTitre = "Deux amants et deux servantes déguisées en demoiselles"
    entreeTexte = \markup \justify {
      Deux courtaux de de boutiques n'ayant osé aller à la noce, se déguisent 
      en  gallants, et habillent les deux chambrières de leurs maîtres en
      demoiselles pour aller danser une entrée à la première assemblée du
      quartier.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
