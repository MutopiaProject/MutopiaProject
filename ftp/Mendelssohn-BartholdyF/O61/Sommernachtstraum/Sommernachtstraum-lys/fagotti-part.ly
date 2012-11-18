\header{
filename =	"fagotti-part.ly"
enteredby =	"Felix Braun"
copyright =	"Public Domain"
}

\version "2.16.0"

\include "sntglobal.ly"
\include "fagotti.ly"
\include "sntheader.ly"

\header {
	instrument = "Fagotti"
}

\score {
	\fagottiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
}
