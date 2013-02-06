\version "2.16.0"

instrument = "Oboe"

\include "header.ly"
\include "global.ly"
\include "oboi.ly"

\include "coriolan-part-paper.ly"
\score{
	\oboiStaff 
	\layout {}
	\include "coriolan-midi.ly"
}
