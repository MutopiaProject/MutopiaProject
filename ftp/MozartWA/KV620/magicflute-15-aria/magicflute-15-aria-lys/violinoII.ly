\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

Global = \notes {
	\partial 16 s16
	s2 s4. \bar "||" s8^\segno
	s2*25 s4 s8^\segno \bar "||" }

\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #" V.II"
\notes <
	\Global
	\context Voice=violinoII
	\violinoII
>
}
\include "paper.ly"

\midi { \tempo 4=45 }
}