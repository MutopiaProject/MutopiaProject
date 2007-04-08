\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "psyche-amour"
    >> \includeLyrics "paroles"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header {
    scene = "Scène Troisème"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 92 }
}
