\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "viola.ily"

\header {
	instrument = "Viola"
}
	
\score {
	\context Staff ="viola" <<
      	\barlines
      	\theViolas >>
}
