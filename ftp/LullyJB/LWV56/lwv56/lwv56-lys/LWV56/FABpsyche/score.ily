\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Psyche
      \scoreInit \global 
      \basDessus \includeNotes "psyche" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { 
    scene = "Scène Première"
    breakbefore = #(break-before?)
  }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 92 }
}
