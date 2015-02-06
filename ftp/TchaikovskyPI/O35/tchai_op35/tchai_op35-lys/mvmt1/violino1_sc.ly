\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "violino1.ly"
	
\header {
	instrument = "Violino I"
}

\score {
	\context Staff ="violino1" <<
      	\barlines
      	\theFirstViolins >>
}
