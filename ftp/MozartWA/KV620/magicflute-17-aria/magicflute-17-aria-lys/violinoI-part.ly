\version "1.5.66"

\include "header.ly"
\include "violinoI.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #"V.I "
	\clef treble
\notes <
	\Global
	\context Voice=one 
		\violinoI
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}