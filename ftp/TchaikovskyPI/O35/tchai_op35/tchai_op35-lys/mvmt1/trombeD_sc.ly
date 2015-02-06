\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "trombeD.ly"

\header {
	instrument = "Trombe (D)"
}
	
\score {
	\context Staff ="trombe" <<
      	\barlines
      	\theTrumpets >>
}
