\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s4 s4_#'(italic "sempre pianissimo") s2*8 \bar "||" s2_\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

\score {
\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"  Contrabasso  "
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

\midi { \tempo 4=130 }
}