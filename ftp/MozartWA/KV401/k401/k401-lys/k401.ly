\version "2.11.38"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    \context PianoStaff <<
	\context Staff = "up" <<
	    \context Voice = "marks" \markings
	    \removeWithTag #'four-hands \context Voice = "one" \voiceI
	    \removeWithTag #'four-hands \context Voice = "two" \voiceII
	>>  
	\context Staff = "down" <<
	    \clef bass
	    \removeWithTag #'four-hands \context Voice = "three" \voiceIII
	    \removeWithTag #'four-hands \context Voice = "four" \voiceIV
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
