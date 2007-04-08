\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "trombeD.ly"
	
\score {
	\context Staff ="trombe" <<
      	\barlines
      	\theTrumpets >>
	
	\header {
		\include "header.ly"
		instrument = "Trombe (D)"
	}

}
