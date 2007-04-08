\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup "L'Amour"
      \global \voixHauteContre \includeNotes "amour" 
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse"
                 \includeFigures "chiffres" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*)) 
  }
  \midi { \tempo 4 = 144 }
}
