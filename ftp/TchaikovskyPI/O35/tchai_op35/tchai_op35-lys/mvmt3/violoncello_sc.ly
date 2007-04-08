\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "violoncello.ly"
	
\score {
	\context Staff ="violoncello" <<
      	\barlines
      	\theCellos >>
	
	\header {
		\include "header.ly"
		instrument = "Violoncello"
	}

}
