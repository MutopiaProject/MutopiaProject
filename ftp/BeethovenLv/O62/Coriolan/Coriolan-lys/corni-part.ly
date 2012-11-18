\version "2.16.0"

instrument = "French Horn"

\include "header.ly"
\include "global.ly"
\include "corni.ly"

\include "coriolan-part-paper.ly"
\score{
	\corniStaff
	\layout {}
	\include "coriolan-midi.ly"
}
