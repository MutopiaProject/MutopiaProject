\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = cornibassetto {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #'(lines " Corni di Bassetto " "   in F  ")
	\property Staff.instr = #" Co.B."
	\notes { \key c \major \time 2/2}
% I wasn't sure of the range of the Corni Di Bassettos so I used a transposing 7 down
% with a midiInstrument of the standard french horn. If this is incorrect, let me know.
		\property Staff.transposing = #-7
	\context Voice=one \cornibassetto
}
\paper {  
	indent = 20.\mm
\translator {
	\OrchestralScoreContext
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
}
}
\midi {\tempo 4=65}
}