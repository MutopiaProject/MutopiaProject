\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global 
                 \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \basse \includeNotes #"basse"
                 \includeFigures "chiffres" >>
  >>
  \header {
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
