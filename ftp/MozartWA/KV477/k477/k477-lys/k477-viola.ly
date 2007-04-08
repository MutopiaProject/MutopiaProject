\version "2.4.0"

\include "k477-header.ly"
\include "k477-defs.ly"
\include "k477-viola-part.ly"

\score {
    \new Staff {
	\set Score.skipBars = ##t

	\set Staff.instrument = \markup { "Viola" }
	\set Staff.midiInstrument = #"orchestral strings"

	\new Voice { << { \viola } { \markings } >> }
    }

    \layout { }
    \include "k477-midi.ly"
}