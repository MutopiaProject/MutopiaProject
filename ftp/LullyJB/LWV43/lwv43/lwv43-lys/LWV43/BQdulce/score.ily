
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      \voixHauteContre \includeNotes "voix-haute-contre"
    >>  \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >>  \includeLyrics "paroles2"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
