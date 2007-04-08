
\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \scoreInit \global
                   \dessus \includeNotes "dessus1" >>
      \newStaff << \global
                   \dessus \includeNotes "dessus2" >>
    >>
    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >>  \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
