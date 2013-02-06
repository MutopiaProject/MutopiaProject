\version "2.16.0"

instrument = "Viola"

\include "header.ly"
\include "global.ly"
\include "viole.ly"

\include "coriolan-part-paper.ly"
\score{
	\violeGroup
	\layout {}
	\include "coriolan-midi.ly"
}
