\header{
filename =	"violino-2-part.ly"
enteredby =	"Felix Braun"
copyright =	"Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "violino-2.ly"
\include "sntheader.ly"

\header {
	instrument = "Violino II"
}

\score {
	\violinoCStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
