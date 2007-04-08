
\score {
  \new StaffGroup <<
    \newStaff << \scoreInit \global \dessus \includeNotes #"dessus1" 
                 { s2.*8 \break
                   s2.*9 \break } >>
    \newStaff << \global \dessus \includeNotes #"dessus2" >>
    \newStaff << \global \hauteContre \includeNotes #"haute-contre" >>
    \newStaff << \global \taille \includeNotes #"taille" >>
    \newStaff << \global \quinte \includeNotes #"quinte" >>
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "CINQUIÈME ENTRÉE"
    titre = \markup { Menuet }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 144 }
}
