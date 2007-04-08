\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

Global = \notes {
	\partial 4. s4.
	s2. * 49 \bar "|." }

\score {
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #" V.I "
\notes <
	\Global
	\context Voice=violinoI
	\violinoI
>
}
\paper {  
	indent = 20.\mm
\translator {
	\OrchestralScoreContext
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
\midi {\tempo 4=68}
}