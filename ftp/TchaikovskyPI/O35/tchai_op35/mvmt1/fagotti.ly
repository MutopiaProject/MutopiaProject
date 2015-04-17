\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "fagotti.ily"

\header {
	instrument = "Fagotti"
}
	
\score {
	\context Staff ="fagotti" <<
      	\barlines
      	\theBassoons >>
}
