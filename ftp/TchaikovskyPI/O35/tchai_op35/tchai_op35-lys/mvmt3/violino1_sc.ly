\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "violino1.ly"
	
\score {
	\context Staff ="violino1" <<
      	\barlines
      	\theFirstViolins >>
	
	\header {
		\include "header.ly"
		instrument = "Violino I"
	}

}
