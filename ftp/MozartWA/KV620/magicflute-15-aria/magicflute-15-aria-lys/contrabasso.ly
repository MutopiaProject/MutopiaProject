\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

Global = \notes {
	\partial 16 s16
	s2 s4. \bar "||" s8
	s2*25 s4 s8 \bar "||" }

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

\midi { \tempo 4=45 }
}