\version "2.11.38"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"
\include "k401-breaks.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new PianoStaff <<
    \set GrandStaff.instrumentName = "Secondo  "

    \new Staff = "up" <<
      \new Voice = "pagebreaks" \pageBreaks

      \new Voice = "marks" \markings
      \clef bass
      \removeWithTag #'two-hands \new Voice = "one" \voiceIII
    >>  
    \new Staff = "down" <<
      \clef bass
      \removeWithTag #'two-hands \new Voice = "four" \voiceIV
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
