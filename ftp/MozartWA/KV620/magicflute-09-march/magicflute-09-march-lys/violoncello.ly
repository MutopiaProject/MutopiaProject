\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"  Violoncello "
	\property Staff.instr = #" Vc. "
	\global
	\clef "bass"
	\context Voice=violoncello
	\violoncello
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