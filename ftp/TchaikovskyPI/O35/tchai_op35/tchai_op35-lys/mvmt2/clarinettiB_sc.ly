\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "clarinettiB.ly"

\header {
	instrument = "Clarinetti (A)"
}
	
\score {
	\context Staff ="clarinetti" <<
      	\barlines
      	\theClarinets >>
}
