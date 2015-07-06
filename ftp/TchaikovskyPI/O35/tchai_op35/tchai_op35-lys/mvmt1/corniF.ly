\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "corniF.ily"

\version "2.18.0"

\header {
	instrument = "Corni in F [I/II]"
}
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHornsfirst >>
}
