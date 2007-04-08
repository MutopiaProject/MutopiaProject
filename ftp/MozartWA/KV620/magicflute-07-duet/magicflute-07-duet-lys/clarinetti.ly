\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

\score {
\context Staff = clarinettib {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #" Clarinetti in B "
	\property Staff.instr = #" Cl.  "
	\notes { \key f \major }
		\property Staff.transposing = #-2
	\context Voice=one \clarinettib
}
\paper {  
	indent = 20.\mm
\translator {\OrchestralScoreContext
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
}


}
\midi {\tempo 4=68}
}