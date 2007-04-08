\header{
filename =	 "clarinetti-part.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "flaucla.ly"
\include "sntheader.ly"

\score {
	\clarinettiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
