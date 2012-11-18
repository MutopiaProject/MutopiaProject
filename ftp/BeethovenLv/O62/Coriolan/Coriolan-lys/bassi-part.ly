\version "2.16.0"

instrument = "Violoncello and Contrabass"

\include "header.ly"
\include "global.ly"
\include "bassi.ly"

\include "coriolan-part-paper.ly"
\score{
	\bassiGroup
	\layout {}
	\include "coriolan-midi.ly"
}
