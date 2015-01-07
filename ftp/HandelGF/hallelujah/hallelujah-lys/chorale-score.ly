\version "2.19.15"
\include "soprano.ly"
\include "alto.ly"
\include "tenor.ly"
\include "bass.ly"
\include "header.ly"


\score {
	%{
    \simultaneous
    {    } %}
	    \new ChoirStaff <<
	    	%\set Staff.instrumentName = \markup \smaller "Coro" 

		\new Staff <<
		    \Soprano
		    \set Staff.midiInstrument = #"flute"
		    \set Staff.instrumentName = \markup \smaller "Soprano" 
		>>

		\new Staff <<
		    \Alto
		    \set Staff.midiInstrument = #"oboe"
		    \set Staff.instrumentName = \markup \smaller "Alto" 
		>>
		
		\new Staff <<
		    \Tenor
		    \set Staff.midiInstrument = #"clarinet"
		    \set Staff.instrumentName = \markup \smaller "Tenore" 
		>>		
	    	
		\new Staff <<
		    \Bass
		    \set Staff.midiInstrument = #"bassoon"
		    \set Staff.instrumentName = \markup \smaller "Basso" 
		>>
		
	    >>

	
  \midi {
    \tempo 4 = 120
    }


	\layout {}
	\header {}
}


