\version "1.5.66"

\include "header.ly"
\include "oboe.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = oboe {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboe     "
	\property Staff.instr = #"Ob.  "
	\clef treble
\notes <
	\Global
	\context Voice=one 
		\oboe
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}