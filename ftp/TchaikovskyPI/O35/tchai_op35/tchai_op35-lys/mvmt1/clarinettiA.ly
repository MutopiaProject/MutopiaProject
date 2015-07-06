\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "clarinettiA.ily"

\header {
	instrument = "Clarinetti (A)"
}
	
\score {
	\context Staff ="clarinetti" <<
      	\barlines
      	\theClarinets >>
}
