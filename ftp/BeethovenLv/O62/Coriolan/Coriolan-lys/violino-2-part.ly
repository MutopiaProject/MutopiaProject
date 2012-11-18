\version "2.16.0"

instrument = "Violin II"

\include "header.ly"
\include "global.ly"
\include "violino-2.ly"

\include "coriolan-part-paper.ly"
\score{
	\violinoIIStaff 
	\layout {}
	\include "coriolan-midi.ly"
}
