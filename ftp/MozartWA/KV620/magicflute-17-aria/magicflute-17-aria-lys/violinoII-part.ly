\version "1.5.66"

\include "header.ly"
\include "violinoII.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
	\clef treble
\notes <
	\Global
	\context Voice=one 
		\violinoII
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}