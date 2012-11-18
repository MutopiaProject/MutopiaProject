\header{
filename =	 "clarinetti-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "flaucla.ly"
\include "sntheader.ly"

\header {
	instrument = "Clarinetti in A"
}

\score {
	\clarinettiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
