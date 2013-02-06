\version "2.16.0"

instrument = "Violin I"

\include "header.ly"
\include "global.ly"
\include "violino-1.ly"

\include "coriolan-part-paper.ly"
\score{
	\violinoIStaff 
	\layout {}
	\include "coriolan-midi.ly"
}
