\score {
  \new StaffGroupNoBar <<
    \newStaff << \scoreInit \global \dessus \includeNotes "dessus1" >>
    \newStaff << \global \dessus \includeNotes "dessus2" >>
    \newStaffWithLyrics <<
      \global \basse \includeNotes "mufti" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 80 }
}
