\header{
filename =	"Sommernachtstraum.ly";
enteredby =	"Felix Braun";
copyright =	"Public Domain";
}

\version "1.3.122";

\include "paper13.ly"
\include "sntglobal.ly"

\include "flaucla.ly"
\include "oboi.ly"
\include "fagotti.ly"
\include "corni.ly"
\include "violino-1.ly"
\include "violino-2.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "contrabasso.ly"

\include "sntheader.ly" % must come last

violini = \context GrandStaff = violini_group <
	\violinoBStaff
	\violinoCStaff
>

bassi = \context GrandStaff = bassi_group <
	\violoncelloStaff
	\contrabassoStaff
>

\score{
        < 
	  \context StaffGroup <
		\flautiStaff
		\oboiStaff
		\clarinettiStaff
		\fagottiStaff
		\corniStaff
	  >
	  \context StaffGroup <
		\violini
		\violaStaff
		\bassi
	   >
>
	\include "sntpaper.ly"
	\include "sntmidi.ly"
}
