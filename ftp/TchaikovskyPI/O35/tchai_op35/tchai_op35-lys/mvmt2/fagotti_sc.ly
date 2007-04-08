\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "fagotti.ly"
	
\score {
	\context Staff ="fagotti" <<
      	\barlines
      	\theBassoons >>
	
	\header {
		\include "header.ly"
		instrument = "Fagotti"
	}

}
