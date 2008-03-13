\version "2.11.38"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 17)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano    "

    \new Staff = "up" <<
      \context Voice = "marks" \markings
      \removeWithTag #'four-hands \context Voice = "one" \voiceI
      \removeWithTag #'four-hands \context Voice = "two" \voiceII
    >>  

    \new Staff = "down" <<
      \clef bass
      \removeWithTag #'four-hands \context Voice = "three" \voiceIII
      \removeWithTag #'four-hands \context Voice = "four" \voiceIV
    >>  
  >>
 
  \layout {}
 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
