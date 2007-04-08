
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      { s2.*8 \break
        s2.*9 \break }
      \voixHauteContre \includeNotes "haute-contre1"
    >>  \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \global \voixHauteContre \includeNotes "haute-contre2"
    >>  \includeLyrics "paroles2"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
