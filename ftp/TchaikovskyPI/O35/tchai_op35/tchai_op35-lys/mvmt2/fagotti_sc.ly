\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "fagotti.ly"

\header {
	instrument = "Fagotti"
}
	
\score {
	\context Staff ="fagotti" <<
      	\barlines
      	\theBassoons >>
}
