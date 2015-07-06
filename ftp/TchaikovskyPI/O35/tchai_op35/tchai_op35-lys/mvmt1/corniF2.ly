\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "corniF2.ily"

\header {
	instrument = "Corni II/IV (F)"
}
	
\score {
	\context Staff ="corni" <<
      	\barlines
      	\theHornssecond >>
}
