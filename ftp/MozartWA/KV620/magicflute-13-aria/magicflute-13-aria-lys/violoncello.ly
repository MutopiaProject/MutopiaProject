\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s4 s4_#'(italic "sempre pianissimo") s2*8 \bar "||" s2_\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

\score {
\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"  Violoncello "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
	\Global
		\context Voice=violoncello
			\violoncello
	>
}

\include "paper.ly"

\midi { \tempo 4=130 }
}