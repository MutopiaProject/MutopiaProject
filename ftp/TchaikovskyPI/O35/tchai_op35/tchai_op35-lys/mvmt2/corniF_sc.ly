\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "corniF.ly"
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHorns >>
	
	\header {
		\include "header.ly"
		instrument = "Corni in F [I/II]"
	}

}
