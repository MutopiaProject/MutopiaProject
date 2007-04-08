\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \global \basDessus \includeNotes "bas-dessus"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 92 }
}
