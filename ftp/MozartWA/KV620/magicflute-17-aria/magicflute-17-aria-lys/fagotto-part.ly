\version "1.5.66"

\include "header.ly"
\include "fagotto.ly"

Global = \notes {s2.*41 \bar "|."}

\score {
\context Staff = fagotto {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotto    "
	\property Staff.instr = #"Fg.  "
	\clef "bass"
\notes <
	\Global
	\context Voice=one 
		\fagotto
>
}
\include "paper.ly"

\midi { \tempo 4=70 }
}