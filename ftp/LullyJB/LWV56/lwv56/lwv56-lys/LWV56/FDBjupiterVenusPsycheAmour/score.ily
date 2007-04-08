\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \scoreInit \global \includeNotes "jupiter-venus-psyche-amour"
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 92 }
}
