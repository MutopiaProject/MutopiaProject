\version "2.1.27"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    <<
	\new PianoStaff <<
	    \set GrandStaff.instrument = "Primo    "
	    
	    \context Staff = up <<
		\context Voice = marks \markings
		\apply #(remove-tag 'two-hands) \context Voice = one \voiceI
	    >>  
	    \context Staff = down <<
		\apply #(remove-tag 'two-hands) \context Voice = two \voiceII
	    >>  
	>>

	\new PianoStaff <<
	    \set GrandStaff.instrument = "Secondo  "
	    
	    \context Staff = up <<
		\clef bass
		\apply #(remove-tag 'two-hands) \context Voice = three \voiceIII
	    >>  
	    \context Staff = down <<
		\clef bass
		\apply #(remove-tag 'two-hands) \context Voice = four \voiceIV
	    >>  
	>>
    >>

    \paper { 
	\translator { 
	    \GrandStaffContext \consists "Instrument_name_engraver" 
	}
    }  

    \midi { \tempo 4 = 110 }
}
