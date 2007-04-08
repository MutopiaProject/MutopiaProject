
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << \scoreInit \global
                           \basDessus \includeNotes #"bas-dessus"
                         >> \includeLyrics #"paroles"
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    petitTitre = \markup \italic { Musicienne chantant. }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
