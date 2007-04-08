\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "psyche-roi" 
    >> \includeLyrics "paroles"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header {
    scene = "Scène Quatrième"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 80 }
}
