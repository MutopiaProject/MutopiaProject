
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      \voixHauteContre \includeNotes "haute-contre"
    >>  \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
