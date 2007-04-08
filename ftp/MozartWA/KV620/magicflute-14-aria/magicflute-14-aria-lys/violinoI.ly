\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {

\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I  "
	\property Staff.instr = #" V.I "
\notes <
	\Global
	\context Voice=violinoI
	\violinoI
>
}

\include "paper.ly"

\midi { \tempo 4=120 }
}
