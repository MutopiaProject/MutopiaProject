\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s2^#'(italic "sempre pianissimo") s2*8 \bar "||" s2^\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

\score {
\context Staff = clarinetti {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #" Clarinetti in C "
	\property Staff.instr = #" Cl. "
\notes <
	\Global
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettiI
		\context Thread=two \clarinettiII
>
}
\include "paper.ly"

\midi { \tempo 4=130 }
}