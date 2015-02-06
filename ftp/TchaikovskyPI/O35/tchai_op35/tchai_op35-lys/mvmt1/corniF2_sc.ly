\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "corniF2.ly"

\header {
	instrument = "Corni II/IV (F)"
}
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHornssecond >>
}
