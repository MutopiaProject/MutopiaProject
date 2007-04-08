\version "2.4.0"

\include "k477-header.ly"
\include "k477-defs.ly"
\include "k477-oboe1-part.ly"

\score {
    \new Staff {
	\set Score.skipBars = ##t

	\set Staff.instrument = \markup { "Oboe I" }
	\set Staff.midiInstrument = #"oboe"

	\new Voice { << { \oboeI } { \markings } >> }
    }

    \layout { }
    \include "k477-midi.ly"
}