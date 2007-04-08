\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s2^#'(italic "sempre pianissimo") s2*8 \bar "||" s2^\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

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

\midi { \tempo 4=130 }
}