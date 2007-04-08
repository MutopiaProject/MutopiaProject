\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s2^#'(italic "sempre pianissimo") s2*8 \bar "||" s2_\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

\score {
\context Staff = flauto {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauto "
	\property Staff.instr = #" Fl.  "
\notes <
	\Global
	\context Voice=flauto
	\flauto
>
}
\include "paper.ly"

\midi { \tempo 4=130 }
}