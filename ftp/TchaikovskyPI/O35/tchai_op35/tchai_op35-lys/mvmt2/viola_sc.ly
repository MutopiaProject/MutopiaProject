\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "viola.ly"
	
\score {
	\context Staff ="viola" <<
      	\barlines
      	\theViolas >>
	
	\header {
		\include "header.ly"
		instrument = "Viola"
	}

}
