\version "1.5.66"

\include "header.ly"
\include "contrabasso.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
	\Global
		\context Voice=contrabasso
			\contrabasso
	>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}