
\score {
  \newStaffWithLyrics << \scoreInit \global 
                         \voixHauteContre \includeNotes #"haute-contre"
                       >> \includeLyrics #"paroles"
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
