\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "fleuve-psyche"
    >> \includeLyrics "paroles"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header {
    scene = "Scène Sixième"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 108 }
}
