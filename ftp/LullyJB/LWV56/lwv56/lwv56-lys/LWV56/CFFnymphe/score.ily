\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup \instruments { \smallCaps Premiere
                                            \smallCaps Nymphe }
      \global \basDessus \includeNotes "nymphe" 
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*)) 
  }
  \midi { \tempo 4 = 132 }
}
