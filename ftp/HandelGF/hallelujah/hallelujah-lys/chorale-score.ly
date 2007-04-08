\include "soprano.ly"
\include "alto.ly"
\include "tenor.ly"
\include "bass.ly"
\include "header.ly"

#(ly:set-point-and-click 'line-column )


\score {
	%{
    \simultaneous
    {    } %}
	    \new ChoirStaff <<
	    	%\set Staff.instrument = \markup \smaller "Coro" 

		\new Staff <<
		    \Soprano
		    \set Staff.midiInstrument = #"flute"
		    \set Staff.instrument = \markup \smaller "Soprano" 
		>>

		\new Staff <<
		    \Alto
		    \set Staff.midiInstrument = #"oboe"
		    \set Staff.instrument = \markup \smaller "Alto" 
		>>
		
		\new Staff <<
		    \Tenor
		    \set Staff.midiInstrument = #"clarinet"
		    \set Staff.instrument = \markup \smaller "Tenore" 
		>>		
	    	
		\new Staff <<
		    \Bass
		    \set Staff.midiInstrument = #"bassoon"
		    \set Staff.instrument = \markup \smaller "Basso" 
		>>
		
	    >>

	\midi { \tempo 4 = 120 }
	\paper {}
	\header {}
}


