\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "flauti.ily"

\header {
	instrument = "Flauti"
}
	
\score {
	\context Staff ="flauti" <<
      	\barlines
      	\theFlutes >>
}
