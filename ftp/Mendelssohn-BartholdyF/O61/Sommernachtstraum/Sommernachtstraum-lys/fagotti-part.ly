\header{
filename =	"fagotti-part.ly";
enteredby =	"Felix Braun";
copyright =	"Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "fagotti.ly"
\include "sntheader.ly"

\score {
	\fagottiStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
