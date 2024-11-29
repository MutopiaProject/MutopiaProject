%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIIIMvtII = \relative c {
	\clef treble
	\key c \major
	\transposition f
% Bars 1 to 5
	R2.\fermata
	R2.\fermata
	R2.*27
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	r4 r \clef bass \partCombineChords c~\p \bar "||" \mark \default
% Bars 31 to 35
	c2.~
	c~
	c~
	c2 c4~
	c2.\<~
% Bars 36 to 40
	c2\> \partCombineAutomatic r4\!
	R2.*2
	
	\clef treble \partCombineSoloI g''2._\p~
	g2 e'4(
% Bars 41 to 45
	d2.)~
	d2 d4(
	g,) r r \partCombineAutomatic
	R2.*7
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	c,2.\p~
	c2 r4
	r r c~
	c2.~
	c2 r4
% Bars 56 to 60
	R2.*7
% Bars 61 to 65
	
	
	r4 r \partCombineApart ees~
	ees2.~
	ees2  \partCombineAutomatic r4
% Bars 66 to 70
	R2. \bar "||"
	R2.*2
	
	e4-\tweak X-offset -2 \f( a2)~
	a2.~
% Bars 71 to 75
	a4 r r
	R2.
	d4.\f\> r8\! r4
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
	
	
	
	<< {e,4( a2)~ } {s4-\tweak X-offset -2 \p\< s\> s\!}>>
	a2.\!~
% Bars 116 to 118
	a~
	a2 r4
	R2.\fermata \bar "|."
}
