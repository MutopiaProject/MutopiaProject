\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "corniF.ly"

\version "2.18.0"

\header {
	instrument = "Corni in F [I/II]"
}
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHornsfirst >>
}
