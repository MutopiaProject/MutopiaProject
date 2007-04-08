\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {

\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla. "
	\clef "alto"
\notes <
	\Global
	\context Voice=viola
	\viola
>
}

\include "paper.ly"

\midi { \tempo 4=120 }
}