\version "1.5.66"

\include "header.ly"
\include "flauto.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = flauto {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"    Flauto     "
	\property Staff.instr = #"Fl.  "
	\clef treble
\notes <
	\Global
	\context Voice=one 
		\flauto
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}