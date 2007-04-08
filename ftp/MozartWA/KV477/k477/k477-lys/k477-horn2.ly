\version "2.4.0"

\include "k477-header.ly"
\include "k477-defs.ly"
\include "k477-horn2-part.ly"

\score {
    \new Staff {
	\set Score.skipBars = ##t

	\set Staff.instrument = \markup {
	    \column < "Corno II" "in C basso" >
	}
	\set Staff.midiInstrument = #"french horn"

	\new Voice { << { \hornII } { \markings } >> }
    }

    \layout { }
    \include "k477-midi.ly"
}