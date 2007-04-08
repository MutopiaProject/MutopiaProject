\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {
<
\context Staff = timpani {
	\property Staff.midiInstrument = #"timpani"
	\property Staff.instrument = #" Timpani in D.A.  "
	\property Staff.instr = #" Ti. "
	\property Staff.transposing = #5
	\clef "bass"
\notes <
	\Global
	\key c \major
	\context Voice=timpani
	\timpanida
	>
}
>

\include "paper.ly"

\midi { \tempo 4=120 }
}