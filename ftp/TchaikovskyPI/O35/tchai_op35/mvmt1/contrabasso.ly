\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "contrabasso.ily"

\header {
	instrument = "Contrabasso"
}
	
\score {
	\context Staff ="contrabasso" <<
      	\barlines
      	\theBass >>
}
