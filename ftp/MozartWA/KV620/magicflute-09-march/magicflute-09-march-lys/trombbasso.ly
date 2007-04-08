\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff = trombonebasso {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #"TrbB."
	\clef "bass"
	\global
	\context Voice=trombonebasso
	\trombonebasso
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