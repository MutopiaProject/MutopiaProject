\version "2.4.0"

\include "k477-header.ly"
\include "k477-defs.ly"
\include "k477-oboe2-part.ly"

\score {
    \new Staff {
	\set Score.skipBars = ##t

	\set Staff.instrument = \markup { "Oboe II" }
	\set Staff.midiInstrument = #"oboe"

	\new Voice { << { \oboeII } { \markings } >> }
    }

    \layout { }
    \include "k477-midi.ly"
}