
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit
                 { s2.*8 \break }
                 \global \dessus \includeNotes #"dessus1" >>
    \newStaff << \global \dessus \includeNotes #"dessus2" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    titre = "Menuet pour les hautbois en Poitevins"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 132 }
}
