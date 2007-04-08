\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s2^#'(italic "sempre pianissimo") s2*8 \bar "||" s2_\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

\score {
\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg.  "
	\clef "bass"
\notes <
	\Global
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottoI
		\context Thread=two \fagottoII
>
}
\include "paper.ly"

\midi { \tempo 4=130 }
}