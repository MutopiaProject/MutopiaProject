\header{
filename =	 "viola-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "viola.ly"
\include "sntheader.ly"

\header {
	instrument = "Viola"
}

\score {
	\violaStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
