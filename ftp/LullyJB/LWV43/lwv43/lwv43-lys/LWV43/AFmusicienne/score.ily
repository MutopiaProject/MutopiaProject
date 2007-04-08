
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << \scoreInit \global
                           \basDessus \includeNotes #"bas-dessus"
                         >> \includeLyrics #"paroles"
    \newStaff << \global \basse \includeNotes #"basse"
                 \includeFigures #"chiffres" >>
  >>
  \header {
    petitTitre = "Une musicienne"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
