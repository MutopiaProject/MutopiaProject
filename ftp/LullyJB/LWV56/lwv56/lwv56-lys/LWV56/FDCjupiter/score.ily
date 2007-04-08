\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Jupiter
      \scoreInit \global 
      \basse \includeNotes "jupiter" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 2 = 92 }
}
