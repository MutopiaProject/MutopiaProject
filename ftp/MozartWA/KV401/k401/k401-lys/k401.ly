\version "2.1.27"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    \context PianoStaff <<
	\context Staff = up <<
	    \context Voice = marks \markings
	    \apply #(remove-tag 'four-hands) \context Voice = one \voiceI
	    \apply #(remove-tag 'four-hands) \context Voice = two \voiceII
	>>  
	\context Staff = down <<
	    \clef bass
	    \apply #(remove-tag 'four-hands) \context Voice = three \voiceIII
	    \apply #(remove-tag 'four-hands) \context Voice = four \voiceIV
	>>  
    >>
    \paper { }  
    \midi { \tempo 4 = 110 }
}
