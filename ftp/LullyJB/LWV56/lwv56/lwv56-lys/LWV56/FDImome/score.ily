\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes "dessus1" >>
      \newStaff << \global \dessus \includeNotes "dessus2" >>
    >>
    \newStaffWithLyrics << 
      \characterName \markup Mome
      \scoreInit \global 
      \basse \includeNotes "mome" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 112 }
}
