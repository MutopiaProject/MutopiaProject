\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "psyche-venus"
    >> \includeLyrics "paroles"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header {
    scene = "Scène Cinquième"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 108 }
}
