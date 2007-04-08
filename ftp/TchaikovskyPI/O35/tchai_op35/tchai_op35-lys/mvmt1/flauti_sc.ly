\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "flauti.ly"
	
\score {
	\context Staff ="flauti" <<
      	\barlines
      	\theFlutes >>
	
	\header {
		\include "header.ly"
		instrument = "Flauti"
	}

}
