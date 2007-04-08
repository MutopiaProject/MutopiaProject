\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "PREMIÈRE ENTRÉE."
    entreeTexte = \markup \justify { 
      Une fripière couverte d'habits de masques fait la première entrée
      et commande à la servante de porter les habits derrière la toile
      pour habiller les balladins.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
