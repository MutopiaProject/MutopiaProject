\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

Global = \notes {
	\partial 16 s16
	s2 s4. \bar "||" s8^\segno
	s2*25 s4 s8^\segno \bar "||" }

\score {
\context Staff = cornie {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in E "
	\property Staff.instr = #" Co. "
	\property Staff.transposing = #4
\notes <
	\Global
	\context Voice=one \partcombine Voice
		\context Thread=one \cornieI
		\context Thread=two \cornieII
>
}
\include "paper.ly"

\midi { \tempo 4=45 }
}