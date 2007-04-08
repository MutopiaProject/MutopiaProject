\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "violino2.ly"
	
\score {
	\context Staff ="violino2" <<
      	\barlines
      	\theSecondViolins >>
	
	\header {
		\include "header.ly"
		instrument = "Violin II"
	}

}
