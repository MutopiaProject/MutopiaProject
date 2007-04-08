\header{
filename =	 "violino-1-part.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "violino-1.ly"
\include "sntheader.ly"

\score {
	\violinoBStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
