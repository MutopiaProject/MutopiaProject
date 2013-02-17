\header{
filename =	 "violino-1-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "violino-1.ly"
\include "sntheader.ly"

\header {
	instrument = "Violino I"
}

\score {
	\violinoBStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
