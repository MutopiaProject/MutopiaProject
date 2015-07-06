\version "2.18.0"
\include "english.ly"
\include "../defs.ily"
\include "global.ily"
\include "header.ily"

\include "timpani.ily"

\header {
	instrument = "Timpani in E/H"
}
	
\score {
	\context Staff ="timpani" <<
      	\barlines
      	\theTimpani >>
}
