
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      \voixHauteContre \includeNotes "haute-contre"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "taille1"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "taille2"
    >>  \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 108 }
}
