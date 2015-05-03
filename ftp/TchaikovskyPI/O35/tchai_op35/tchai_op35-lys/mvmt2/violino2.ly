\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "violino2.ily"

\header {
	instrument = "Violino II"
}
	
\score {
	\context Staff ="violino2" <<
      	\barlines
      	\theSecondViolins >>
}
