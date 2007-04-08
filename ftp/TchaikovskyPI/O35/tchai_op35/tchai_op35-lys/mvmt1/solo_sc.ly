\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "solo.ly"
	
\score {
	\context Staff ="vs" <<
      	\barlines
      	\theSolo >>
      	
	\header {
		\include "header.ly"
		instrument = "Violino Solo"
	}
}
