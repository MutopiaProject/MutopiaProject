\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "oboi.ily"

\header {
	instrument = "Oboi"
}
	
\score {
	\context Staff ="oboi" <<
      	\barlines
      	\theOboes >>
}
