\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

\score {
\context Staff = piccolo {
	\property Staff.midiInstrument = #"piccolo"
	\property Staff.instrument = #" Flauto Piccolo "
	\property Staff.instr = #" Pi.  "
	\property Staff.transposing = #12
	\context Voice=piccolo
	\piccolo
}
\include "paper.ly"

\midi { \tempo 4=130 }
}