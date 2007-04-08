\header{
filename =	"violino-2-part.ly";
enteredby =	"Felix Braun";
copyright =	"Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "violino-2.ly"
\include "sntheader.ly"

\score {
	\violinoCStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
