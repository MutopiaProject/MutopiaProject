\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "violoncello.ily"

\header {
	instrument = "Violoncello"
}
	
\score {
	\context Staff ="violoncello" <<
      	\barlines
      	\theCellos >>
}
