\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

\score {
\context Staff = flauti <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #" Fl. "
	\context Voice=one \partcombine Voice
	\context Thread = one \flautiI
	\context Thread = two \flautiII
>
\include "paper.ly"

\midi { \tempo 4=45 }
}