\include "english.ly"
\include "defs.ly"

\include "trombeD.ly"
	
\score {
	\context Staff ="trombe" <<
      	\theTrumpets >>
	
	\header {
		\include "header.ly"
		instrument = "Trombe (D)"
	}

}
