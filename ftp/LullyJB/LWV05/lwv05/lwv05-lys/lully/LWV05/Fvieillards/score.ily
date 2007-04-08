
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "II. ENTRÉE."
    entreeTitre = "Entrée de vieillards."
    entreeTexte = \markup \justify {
      Les quatre fils Emon sur leur cheval ne voulant pas
      être reconnus s'habillent en vieux Gaulois, et quatre
      de leurs enfants ne les connaissant plus viennent leur
      faire force ruses et malices.
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
