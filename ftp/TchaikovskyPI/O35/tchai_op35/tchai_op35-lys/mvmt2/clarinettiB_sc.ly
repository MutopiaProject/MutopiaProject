\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "clarinettiB.ly"
	
\score {
	\context Staff ="clarinetti" <<
      	\barlines
      	\theClarinets >>
	
	\header {
		\include "header.ly"
		instrument = "Clarinetti (A)"
	}

}
