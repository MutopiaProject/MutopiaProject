
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << \scoreInit \global
                           \basDessus \includeNotes #"bas-dessus" 
                         >> \includeLyrics #"paroles"
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    petitTitre = "L'élève du maître de musique"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
