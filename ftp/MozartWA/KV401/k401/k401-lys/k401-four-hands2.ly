\version "2.1.27"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"
\include "k401-breaks.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    \context PianoStaff <<
	\set GrandStaff.instrument = "Secondo  "

	\context Staff = up <<
	    \context Voice = pagebreaks \pageBreaks

	    \context Voice = marks \markings
	    \clef bass
	    \apply #(remove-tag 'two-hands) \context Voice = one \voiceIII
	>>  
	\context Staff = down <<
	    \clef bass
	    \apply #(remove-tag 'two-hands) \context Voice = four \voiceIV
	>>  
    >>
    \paper { }  
    \midi { \tempo 4 = 110 }
}
