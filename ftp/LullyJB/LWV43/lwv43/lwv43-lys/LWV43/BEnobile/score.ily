
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      \voixHauteContre \includeNotes "voix-haute-contre"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "voix-taille1"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "voix-taille2"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global
      \basse \includeNotes "mufti"
    >>  \includeLyrics "paroles-mufti"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 108 }
}
