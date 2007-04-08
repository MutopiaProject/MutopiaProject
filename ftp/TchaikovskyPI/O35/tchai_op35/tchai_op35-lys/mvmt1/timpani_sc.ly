\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "timpani.ly"
	
\score {
	\context Staff ="timpani" <<
      	\barlines
      	\theTimpani >>
	
	\header {
		\include "header.ly"
		instrument = "Timpani in E/H"
	}

}
