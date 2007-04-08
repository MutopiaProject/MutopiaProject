\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "oboi.ly"
	
\score {
	\context Staff ="oboi" <<
      	\barlines
      	\theOboes >>
	
	\header {
		\include "header.ly"
		instrument = "Oboi"
	}

}
