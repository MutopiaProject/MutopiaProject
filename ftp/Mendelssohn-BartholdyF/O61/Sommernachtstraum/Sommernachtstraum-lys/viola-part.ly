\header{
filename =	 "viola-part.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";

\include "sntglobal.ly"
\include "viola.ly"
\include "sntheader.ly"

\score {
	\violaStaff
	\include "sntpart-paper.ly"
	\include "sntmidi.ly"
	}
