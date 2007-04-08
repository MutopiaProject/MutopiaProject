
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "DERNIÈRE ENTRÉE."
    entreeTexte = \markup \justify {
      Deux vieillards épousent deux jeunes filles qui leur apprennent à danser
      la bourée, dont tout le quartier étant averti leur fait un charivari en
      les troublant dans leur divertissement.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
