
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << \scoreInit \global
                           \voixTaille \includeNotes #"taille"
                         >> \includeLyrics #"paroles"
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    petitTitre = "Deuxième musicien"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 92 }
}
