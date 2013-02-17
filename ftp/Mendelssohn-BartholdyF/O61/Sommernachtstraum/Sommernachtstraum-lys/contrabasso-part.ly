\header{
filename =	 "contrabasso-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "contrabasso.ly"
\include "sntheader.ly"

\header {
	instrument = "Contrabasso"
}

\score {
	\contrabassoStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
