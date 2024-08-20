%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIMvtII = \relative c'' {
	\clef treble
	\key c \major
	\transposition d
% Bars 1 to 5
	\partCombineChords g4( c2)\fermata
	\partCombineApart d4( \once \oneVoice g2)\fermata \partCombineAutomatic
	R2.*28
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\mark \default \bar "||"
% Bars 31 to 35
	R2.*20
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	R2.*16
% Bars 56 to 60
	
% Bars 61 to 65
	
% Bars 66 to 70
	\bar "||"
	R2.*2
	
	g,,4(-\tweak X-offset -2 \f c2)~
	c2.~
% Bars 71 to 75
	c4 r r
	R2.
	g'4.\f\> r8\! r4
	R2.*26
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*14
% Bars 101 to 105
	
% Bars 106 to 110
	
% Bars 111 to 115
	
	
	
	<< {\aIIXoffset #1 g,4( c2)~} {s4-\tweak X-offset -2 \p\< s\> s\!} >>
	c2.~\!
% Bars 116 to 118
	c~
	c2 r4
	g''2.\p\fermata \bar "|."
}
