\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

Global = \notes {
	s1 * 99 \bar "|." }

\score {
<
\context Staff = trombed1 <
	\property Staff.midiInstrument = #"trumpet"
	\property Staff.instrument = #"Trombe in D I "
	\property Staff.instr = #" Tr.I "
	\property Staff.transposing = #2
	\notes { \key c \major }
	\context Voice=trombed1
	\Global
	\trombedI
	>
\context Staff = trombed2 <
	\property Staff.midiInstrument = #"trumpet"
	\property Staff.instrument = #"Trombe in D II "
	\property Staff.instr = #" Tr.II"
	\property Staff.transposing = #2
	\notes { \key c \major }
	\context Voice=trombed2
	\trombedII
	>
>

\include "paper.ly"

\midi { \tempo 4=120 }
}