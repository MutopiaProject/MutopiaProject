\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

Global = \notes {
	\partial 4. s4.
	s2. * 49 \bar "|." }

\score {
\context Staff = cornie {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in E "
	\property Staff.instr = #" Co. "
	\property Staff.transposing = #3
	\notes <
	 \key c \major
	\Global
	\context Voice=one \cornie
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