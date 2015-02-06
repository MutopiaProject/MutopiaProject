\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "flauti2.ly"

\header {
	instrument = "Flauti II"
}
	
\score {
	\context Staff ="flauti2" <<
      	\barlines
      	\theFlutessecond >>
}
