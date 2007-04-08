\version "2.4.0"

\include "k477-header.ly"
\include "k477-defs.ly"
\include "k477-clarinet-part.ly"

\score {
    \new Staff {
	\set Score.skipBars = ##t

	\set Staff.instrument = \markup 
	{
	    \column 
	    <
		"Clarinetto"
		{ "in B" \smaller \flat }
	    >
	}
	\set Staff.midiInstrument = #"clarinet"

	\new Voice { << { \clarinet } { \markings } >> }
    }

    \layout { }
    \include "k477-midi.ly"
}