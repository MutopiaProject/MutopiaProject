\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Apollon
      \scoreInit \global 
      \voixHauteContre \includeNotes "apollon" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 92 }
}
