\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {
<
\context Staff = oboi1 <
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"  Oboi I "
	\property Staff.instr = #"Ob.I "
	\context Voice=oboi1
	\Global
	\oboiI
	>
\context Staff = oboi2 <
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #" Oboi II "
	\property Staff.instr = #"Ob.II"
	\context Voice=oboi2
	\oboiII
	>
>

\include "paper.ly"

\midi { \tempo 4=120 }
}