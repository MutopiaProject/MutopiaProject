\header{
filename =	 "contrabasso-part.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "contrabasso.ly"
\include "sntheader.ly"

\score {
	\contrabassoStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
