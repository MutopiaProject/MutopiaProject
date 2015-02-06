\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "clarinettiA.ly"
	
\score {
	\context Staff ="clarinetti" <<
      	\barlines
      	\theClarinets >>
	
	\header {
		instrument = "Clarinetti (A)"
	}

}
