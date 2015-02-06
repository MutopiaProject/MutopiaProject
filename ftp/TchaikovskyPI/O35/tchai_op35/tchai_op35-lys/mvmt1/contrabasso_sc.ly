\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "contrabasso.ly"

\header {
	instrument = "Contrabasso"
}
	
\score {
	\context Staff ="contrabasso" <<
      	\barlines
      	\theBass >>
}
