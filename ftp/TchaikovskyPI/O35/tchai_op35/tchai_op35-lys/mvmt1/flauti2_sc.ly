\include "english.ly"
\include "defs.ly"
\include "global.ly"

\include "flauti2.ly"
	
\score {
	\context Staff ="flauti2" <<
      	\barlines
      	\theFlutessecond >>
	
	\header {
		\include "header.ly"
		instrument = "Flauti II"
	}

}
