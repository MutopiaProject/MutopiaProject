
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \scoreInit \global
      \voixHauteContre \includeNotes "haute-contre"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global
      \voixTaille \includeNotes "taille1"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global
      \voixTaille \includeNotes "taille2"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics <<
      \global
      \basse \includeNotes "basse"
    >> \includeLyrics "paroles"
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 108 }
}
