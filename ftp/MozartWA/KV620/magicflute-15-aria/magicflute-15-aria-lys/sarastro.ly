\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

Global = \notes {
	\partial 16 s16
	s2 s4. \bar "||" s8^\segno
	s2*25 s4 s8^\segno \bar "||" }

\score {
\context Staff = voice {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #" Sarastro "
	\property Staff.instr = #" Sar. "
	\clef "bass"
%		\property Staff.transposing = #-12
\notes <
	\Global
	\context Voice=sarastro
	\sarastro
>
}
\include "paper.ly"

\midi { \tempo 4=45 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%							%
%	I left the property Staff.transposing		%
%	(%) just in case you would want to use a	%
%	different midiInstrument which is in a		%
%	higher voice/instrument.			%
%							%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%