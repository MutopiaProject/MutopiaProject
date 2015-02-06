\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "corniF.ly"

\header {
	instrument = "Corni in F [I/II]"
}
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHornsfirst >>
}
