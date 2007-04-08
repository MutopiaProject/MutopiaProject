\header{
filename =	 "oboi-part.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "oboi.ly"
\include "sntheader.ly"

\score {
	\oboiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
