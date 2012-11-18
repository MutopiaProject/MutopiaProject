\version "2.16.0"

instrument = "Clarinet"

\include "header.ly"
\include "global.ly"
\include "clarinetti.ly"

\include "coriolan-part-paper.ly"
\score{
	\clarinettiStaff
	\layout {}
	\include "coriolan-midi.ly"
}

