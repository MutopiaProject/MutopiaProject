\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global 
                 \dessus \includeNotes #"dessus" >>
    \newStaff << \global 
                 \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \taille \includeNotes #"taille" >>
    \newStaff << \global \quinte \includeNotes #"quinte" >>
    \newStaff << \global \basse \includeNotes #"basse"
                 \includeFigures "chiffres" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 144 }
}
