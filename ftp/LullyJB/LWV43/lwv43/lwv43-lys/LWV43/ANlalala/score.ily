
\score {
  \newStaffWithLyrics << \scoreInit \global 
                         \dessus \includeNotes #"dessus"
                       >> \includeLyrics #"paroles"
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 160 }
}
