\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg. "
	\clef "bass"
	\global
	\context Voice=one \fagotti
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