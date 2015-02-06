\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "violoncello.ly"

\header {
	instrument = "Violoncello"
}
	
\score {
	\context Staff ="violoncello" <<
      	\barlines
      	\theCellos >>
}
