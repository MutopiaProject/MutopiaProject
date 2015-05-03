\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "violino1.ily"
	
\header {
	instrument = "Violino I"
}

\score {
	\context Staff ="violino1" <<
      	\barlines
      	\theFirstViolins >>
}
