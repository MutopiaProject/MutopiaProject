\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {
<
\context Staff = cornif1 <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in F "
	\property Staff.instr = #"Co.I "
	\property Staff.transposing = #5
	\notes { \key c \major }
	\context Voice=cornif1
	\Global
	\cornifI
	>
\context Staff = cornif2 <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in F "
	\property Staff.instr = #"Co.II"
	\property Staff.transposing = #5
	\notes { \key c \major }
	\context Voice=cornif2
	\cornifII
	>
>

\include "paper.ly"

\midi { \tempo 4=120 }
}