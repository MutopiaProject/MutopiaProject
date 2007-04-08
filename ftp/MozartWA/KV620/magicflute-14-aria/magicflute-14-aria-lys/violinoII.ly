\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

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

\midi { \tempo 4=120 }
}
