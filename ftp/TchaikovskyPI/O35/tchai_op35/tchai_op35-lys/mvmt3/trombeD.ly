\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "header.ily"

\include "trombeD.ily"

\header {
	instrument = "Trombe (D)"
}
	
\score {
	\context Staff ="trombe" <<
      	\theTrumpets >>
}
