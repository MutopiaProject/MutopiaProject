\header{
filename =	 "corni-part.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "corni.ly"
\include "sntheader.ly"

\score {
	\corniStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
