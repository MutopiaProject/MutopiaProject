\version "1.6.0"

\include "header.ly"
\include "MF14-Arie.ly"

\score {
<
\context Staff = flauti1 <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti I "
	\property Staff.instr = #"Fl.I "
	\context Voice=flauti1
	\flautiI
	>
\context Staff = flauti2 <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #" Flauti II "
	\property Staff.instr = #"Fl.II"
	\context Voice=flauti2
	\flautiII
	>
>

\paper { }

\midi { \tempo 4=120 }
}

