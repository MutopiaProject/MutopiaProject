\version "2.16.0"

instrument = "Flute"

\include "header.ly"
\include "global.ly"
\include "flauti.ly"

\include "coriolan-part-paper.ly"
\score{
	\flautiStaff
	\layout {}
	\include "coriolan-midi.ly"
}
