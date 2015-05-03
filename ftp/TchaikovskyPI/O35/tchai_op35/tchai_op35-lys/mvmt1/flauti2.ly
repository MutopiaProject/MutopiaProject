\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "flauti2.ily"

\header {
	instrument = "Flauti II"
}
	
\score {
	\context Staff ="flauti2" <<
      	\barlines
      	\theFlutessecond >>
}
