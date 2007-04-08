\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Vucain
      \scoreInit \global 
      \voixHauteContre \includeNotes "vulcain" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header {
    scene = "Scène Première"
    breakbefore = #(break-before?) 
  }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 108 }
}
