\version "2.4.0"

\include "k477-header.ly"
\include "k477-defs.ly"
\include "k477-basset-horn-part.ly"

\score {
    \new Staff {
	\set Score.skipBars = ##t

	\set Staff.instrument = \markup {
	    \column < "Corno di"
		      "bassetto in F" >
	}
	\set Staff.midiInstrument = #"clarinet"

	\new Voice { << { \bassetHorn } { \markings } >> }
    }

    \layout { }
    \include "k477-midi.ly"
}