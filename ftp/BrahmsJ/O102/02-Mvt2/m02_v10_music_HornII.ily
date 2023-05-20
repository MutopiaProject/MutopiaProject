%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIIMvtII = \relative c' {
	\clef treble
	\key c \major
	\transposition d
% Bars 1 to 5
	\mark \markup {\abs-fontsize #16 "in D"} << {g4( c2)\fermata } {\hairpinShorten #'(0 . 0.8) s8-\offset X-offset -1.8 \f\< s s \hairpinShorten #'(-0.8 . 0) s\> s s\!} >>
	<< {d'4( g,2)\fermata} {s8\p\< s s s\> s s\!} >>
	R2.*27^\solo
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	
	\ni \mmrPos #-4 R2. \mark \default \bar "||"
% Bars 31 to 35
	\mmrPos #-4 R^\tutti
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R
% Bars 36 to 40
	\mmrPos #-4 R \no
	R2.*2
	
	R2.*12^\solo
	
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	\mark \default
% Bars 51 to 55
	R2.*12
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	\ni \mmrPos #-4 R2.
	\mmrPos #-4 R^\tutti
	\mmrPos #-4 R
% Bars 66 to 70
	\mmrPos #4 R \bar "||"
	\mmrPos #4 R
	\mmrPos #4 R \no
	g,4\f( c2)~
	c2.~
% Bars 71 to 75
	c4 r^\solo r
	R2.
	g4.-\tweak X-offset #-1 \f\> r8\! r4
	R2.*26
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	\mark \default
	\ni \mmrPos #4 R2.
% Bars 101 to 105
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
% Bars 106 to 110
	\mmrPos #4 R \no
	R2.*4
% Bars 111 to 115
	\ni \mmrPos #4 R2.
	\mmrPos #4 R
	\mmrPos #4 R \no
	\hairpinShorten #'(-0.3 . 0) g4(-\offset X-offset -1.5 \p\< \hairpinShorten #'(0 . 3.5) c2\>)~
	c2.~\!
% Bars 116 to 118
	c~
	c2 r4
	c'2.\p\fermata \bar "|."
}
