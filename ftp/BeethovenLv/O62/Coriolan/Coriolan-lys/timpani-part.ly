\version "2.16.0"

instrument = "Timpani"

\include "header.ly"
\include "global.ly"
\include "timpani.ly"

\include "coriolan-part-paper.ly"
\score{
	\timpaniStaff 
	\layout {}
	\include "coriolan-midi.ly"
}
