\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "solo.ly"

\header {
	instrument = "Violino Solo"
}
	
\score {
	\context Staff ="vs" <<

      	\barlines
      	\theSolo >>
}
