\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global 
                 \dessus \includeNotes #"dessus1" >>
    \newStaff << \global 
                 \dessus \includeNotes #"dessus2" >>
    \newStaff << \global \basse \includeNotes #"basse"
                 \includeFigures "chiffres" >>
  >>
  \header {
    acte = "Acte Troisième"
    titre = "Ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
