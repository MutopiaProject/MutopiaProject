\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

Global = \notes {
	\partial 4. s4.
	s2. * 49 \bar "|." }

\score {
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla."
	\clef "alto"
\notes <
	\Global
	\context Voice=viola
	\viola
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