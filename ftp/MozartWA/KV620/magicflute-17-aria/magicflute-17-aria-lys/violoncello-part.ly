\version "1.5.66"

\include "header.ly"
\include "violoncello.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"Violoncello  "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
	\Global
		\context Voice=violoncello
			\violoncello
	>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}