\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "clarinettiA.ily"
	
\score {
	\context Staff ="clarinetti" <<
      	\barlines
      	\theClarinets >>
	
	\header {
		instrument = "Clarinetti (A)"
	}

}
