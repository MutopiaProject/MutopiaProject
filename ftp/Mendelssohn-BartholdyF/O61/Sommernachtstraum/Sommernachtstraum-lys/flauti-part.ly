\header{
filename =	 "flauti-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "flaucla.ly"
\include "sntheader.ly"

\header {
	instrument = "Flauti"
}

\score {
	\flautiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
