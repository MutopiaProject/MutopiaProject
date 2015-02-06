\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "oboi.ly"

\header {
	instrument = "Oboi"
}
	
\score {
	\context Staff ="oboi" <<
      	\barlines
      	\theOboes >>
}
