\header{
filename =	 "violoncello-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "violoncello.ly"
\include "sntheader.ly"

\header {
	instrument = "Violoncello"
}

\score {
	\violoncelloStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
