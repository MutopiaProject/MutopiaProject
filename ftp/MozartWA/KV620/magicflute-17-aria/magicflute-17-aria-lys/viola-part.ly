\version "1.5.66"

\include "header.ly"
\include "viola.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #"Vla. "
	\clef "alto"
\notes <
	\Global
	\context Voice=one 
		\viola
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}