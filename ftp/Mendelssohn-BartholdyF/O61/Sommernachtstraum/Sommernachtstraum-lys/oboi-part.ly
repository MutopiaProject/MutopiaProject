\header{
filename =	 "oboi-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "oboi.ly"
\include "sntheader.ly"

\header {
	instrument = "Oboi"
}

\score {
	\oboiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
