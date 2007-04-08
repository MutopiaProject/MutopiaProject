
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \scoreInit \global
      \voixHauteContre \includeNotes "voix-haute-contre1"
    >>  \includeLyrics "paroles1"
    \newStaffWithLyrics <<
      \global
      \voixHauteContre \includeNotes "voix-haute-contre2"
    >>  \includeLyrics "paroles2"
    \newStaffWithLyrics << 
      \global 
      \basse \includeNotes "voix-basse"
    >>  \includeLyrics "paroles3"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
