\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "corniF2.ly"
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHornssecond >>
	
	\header {
		\include "header.ly"
		instrument = "Corni II/IV (F)"
	}

}
