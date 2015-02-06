\version "2.18.0"
\include "english.ly"
\include "../defs.ly"
\include "global.ly"
\include "header.ly"

\include "flauti.ly"

\header {
	instrument = "Flauti"
}
	
\score {
	\context Staff ="flauti" <<
      	\barlines
      	\theFlutes >>
}
