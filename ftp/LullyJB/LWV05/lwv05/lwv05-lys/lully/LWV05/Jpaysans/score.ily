
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    partie = "SECONDE PARTIE"
    partieTitre = "Récit turquesque."
    entree = "PREMIÈRE ENTRÉE."
    entreeTitre = "Entrée des paysans et docteurs"
    entreeTexte = \markup \justify {
      Trois rois païens prennent les habits de trois docteurs,
      lesquels se voyant sans habits sont contraints de prendre ceux
      des païens ; et pour ne pas être connus font les païens jouant
      de la flûte, lorsque les païens font les docteurs, quoi qu'ils ne
      sachent pas lire dans leurs livres.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
