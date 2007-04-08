\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "contrabasso.ly"
	
\score {
	\context Staff ="contrabasso" <<
      	\barlines
      	\theBass >>
	
	\header {
		\include "header.ly"
		instrument = "Contrabasso"
	}

}
