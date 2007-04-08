\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \basse \includeNotes "mars" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 80 }
}
