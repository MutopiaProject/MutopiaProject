\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "corniF.ily"

\header {
	instrument = "Corni in F [I/II]"
}
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHorns >>
}
