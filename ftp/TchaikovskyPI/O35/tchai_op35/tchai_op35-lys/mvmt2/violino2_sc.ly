\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "violino2.ly"

\header {
	instrument = "Violino II"
}
	
\score {
	\context Staff ="violino2" <<
      	\barlines
      	\theSecondViolins >>
}
