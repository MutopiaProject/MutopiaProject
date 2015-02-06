\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "fagotti.ily"
	
\score {
	\context Staff ="fagotti" <<
      	\barlines
      	\theBassoons >>
	
	\header {
		instrument = "Fagotti"
	}

}
