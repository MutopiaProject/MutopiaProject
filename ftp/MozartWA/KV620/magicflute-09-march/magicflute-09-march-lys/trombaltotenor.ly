\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

\score {
\context Staff=tromboniat {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #'(lines " Tromboni Alto " "  e Tenore  ")
	\property Staff.instr = #"Trbi."
	\clef "alto"
	\global
	\context Voice=one \trombonitenoralto
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