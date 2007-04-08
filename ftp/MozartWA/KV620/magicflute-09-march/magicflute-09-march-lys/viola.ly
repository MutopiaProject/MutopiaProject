\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla. "
	\global
	\clef "alto"
	\context Voice=viola
	\viola
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