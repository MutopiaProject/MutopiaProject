\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

Global = \notes {
	\partial 16 s16
	s2 s4. \bar "||" s8_\segno
	s2*25 s4 s8_\segno \bar "||" }

\score {
\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg. "
	\clef "bass"
\notes <
	\Global
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottiI
		\context Thread=two \fagottiII
>
}
\include "paper.ly"

\midi { \tempo 4=45 }
}