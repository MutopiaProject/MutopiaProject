\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {
<
\context Staff = fagotti1 <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #" Fagotti I "
	\property Staff.instr = #"Fg.I "
	\clef "bass"
	\context Voice=fagotti1
	\Global
	\fagottiI
	>
\context Staff = fagotti2 <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"Fagotti II"
	\property Staff.instr = #"Fg.II"
	\clef "bass"
	\context Voice=fagotti2
	\fagottiII
	>
>

\include "paper.ly"

\midi { \tempo 4=120 }
}