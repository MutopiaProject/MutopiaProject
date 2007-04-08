\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = flauto {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"   Flauto   "
	\property Staff.instr = #" Fl. "
	\context Voice=flauto
	\global
	\flauto
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