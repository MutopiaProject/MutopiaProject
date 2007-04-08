
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "II. ENTRÉE."
    entreeTitre = "Les adroits et maladroits."
    entreeTexte = \markup \justify {
      Un bourgeois révolté se piquant de sa belle danse, quoi que le plus
      maladroit du monde est moqué par deux de ses amis qui l'accompagnent
      à sa danse, par une adresse incroyable qu'il veut imiter, et dont il
      est moqué de tous ceux qui le voient donser.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
