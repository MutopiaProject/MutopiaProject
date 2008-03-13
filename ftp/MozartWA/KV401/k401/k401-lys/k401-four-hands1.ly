\version "2.11.38"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"
\include "k401-breaks.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new PianoStaff <<
    \set GrandStaff.instrumentName = "Primo    "

    \new Staff = "up" <<
      \new Voice = "pagebreaks" \pageBreaks

      \new Voice = "marks" \markings
      \removeWithTag #'two-hands \context Voice = "one" \voiceI
    >>  
    \new Staff = "down" <<
      \removeWithTag #'two-hands \context Voice = "three" \voiceII
    >>  
  >>
  \layout { }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }


}
