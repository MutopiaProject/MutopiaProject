\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global \includeNotes "venus-vulcain"
    >> \includeLyrics "paroles"
    \newStaff << 
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 108 }
}
