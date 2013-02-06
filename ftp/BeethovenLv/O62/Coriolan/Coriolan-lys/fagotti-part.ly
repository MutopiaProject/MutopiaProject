\version "2.16.0"

instrument = "Bassoon"

\include "header.ly"
\include "global.ly"
\include "fagotti.ly"

\include "coriolan-part-paper.ly"
\score{
	\fagottiStaff
	\layout{}
	\include "coriolan-midi.ly"
}
