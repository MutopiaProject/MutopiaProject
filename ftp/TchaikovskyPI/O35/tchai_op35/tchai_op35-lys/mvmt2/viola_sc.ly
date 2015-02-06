\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "viola.ly"

\header {
	instrument = "Viola"
}
	
\score {
	\context Staff ="viola" <<
      	\barlines
      	\theViolas >>
}
