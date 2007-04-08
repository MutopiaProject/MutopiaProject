\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

Global = \notes {
	\partial 16 s16
	s2 s4. \bar "||" s8^\segno
	s2*25 s4 s8^\segno \bar "||" }

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

\midi { \tempo 4=45 }
}