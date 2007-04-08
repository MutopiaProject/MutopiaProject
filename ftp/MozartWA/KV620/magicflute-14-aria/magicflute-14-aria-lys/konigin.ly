\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {

\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #" Konigin der Nacht "
	\property Staff.instr = #" Kon. "
\notes <
	\Global
	\context Voice=konigin
	\konigin
>
}

\include "paper.ly"

\midi { \tempo 4=120 }
}