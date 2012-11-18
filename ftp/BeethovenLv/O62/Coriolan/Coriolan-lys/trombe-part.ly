\version "2.16.0"

instrument = "Trumpet"

\include "header.ly"
\include "global.ly"
\include "trombe.ly"

\include "coriolan-part-paper.ly"
\score{
	\trombeStaff 
	\layout {}
	\include "coriolan-midi.ly"
}
