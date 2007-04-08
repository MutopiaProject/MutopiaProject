\version "1.5.66"

\include "header.ly"
\include "MF13-Arie.ly"

Global = \notes {
	s2^#'(italic "sempre pianissimo") s2*8 \bar "||" s2^\segno
	s2*38 s8 s8 s8 s8^\segno \bar "||" }

\score {
\context Staff = voice {
	\property Staff.midiInstrument = #"voice oohs"
	\property Staff.instrument = #" Monostatos "
	\property Staff.instr = #" Mon. "
	\property Staff.transposing = #-12
\notes< 
	\Global
	\context Voice=monostatos
	\monostatos
>
}

\include "paper.ly"

\midi { \tempo 4=130 }
}