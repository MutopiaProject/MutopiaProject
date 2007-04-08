\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \global \voixHauteContre \includeNotes "furie1"
    >> \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "furie2"
    >> \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "furie3"
    >> \includeLyrics "paroles"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 . = 80 }
}
