\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "solo.ily"

\header {
	instrument = "Violino Solo"
}
	
\score {
	\context Staff ="vs" <<

      	\barlines
      	\theSolo >>
}
