\version "1.5.66"

\include "header.ly"
\include "Pamina.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #"   Pamina  "
	\property Staff.instr = #"Pam."
	\clef treble
\notes <
	\Global
	\context Voice=one
		\Pamina
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}