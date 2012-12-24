\header{
filename =	 "corni-part.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "corni.ly"
\include "sntheader.ly"

\header {
	instrument = "Corni"
}

\score {
	\corniStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
