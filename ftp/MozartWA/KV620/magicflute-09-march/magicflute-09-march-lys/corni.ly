\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = cornif {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in F "
	\property Staff.instr = #"Co.F."
	\global
	\context Voice=one \cornif
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