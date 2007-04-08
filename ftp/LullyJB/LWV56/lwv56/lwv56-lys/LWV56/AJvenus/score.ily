\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Venus
      \scoreInit \global 
      \basDessus \includeNotes "venus" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 92 }
}
