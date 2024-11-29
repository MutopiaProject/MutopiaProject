%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicKlarinetIIMvtII = \relative c''' {
	\clef treble
	\key f \major
	\transposition a
% Bars 1 to 5
	\ni R2.\fermata \no 
	<< {g4( c,2)\fermata} {\hairpinShorten #'(-0.3 . 0) s8-\tweak X-offset #-1 \p\< s s s\> s s\!} >>
	R2.*5^\solo
% Bars 6 to 10
	
	
	\hairpinShorten #'(-0.5 . 0) d8[(^\dolce-\offset X-offset #-1 \p\< bes])\! bes(\> g)\! a4
	R2.
	a8[(\< f)]\! f(\> d)\! c4
% Bars 11 to 15
	R2.*14
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\ni \mmrPos #-6 R2.
% Bars 26 to 30
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-8 R
	\mmrPos #-8 R \no
	e'4\rest e\rest -\tweak X-offset #-1.5 ^\tutti aes,_\pdolce(~ \bar "||" \key aes \major \markWhiteout \mark \default
% Bars 31 to 35
	aes bes c
	bes aes) des(
	bes c des
	c2) ees,4\((
	aes) g\< f\!
% Bars 36 to 40
	ees\> d\)\! ees(~
	ees e f
	aes g) r4^\solo
	R2.*4
	
% Bars 41 to 45
	
	
	bes4.\p\< bes8( c) bes~\!
	bes bes4\>  bes8( aes) aes~
	aes8\! r r4 r
% Bars 46 to 50
	R2.*4
	
	
	
	r4 r aes(-\offset X-offset #-1 _\psempre~ \markWhiteout \mark \default
% Bars 51 to 55
	aes bes c
	bes aes) r
	r r des(
	bes c des
	c2) r4
% Bars 56 to 60
	R2.*3
	
	
	r4 r aes(
	des a bes~
% Bars 61 to 65
	bes aes!) r
	R2.*2
	
	R2.*2^\tutti
	
% Bars 66 to 70
	\ni \mmrPos #-4 R2. \bar "||" \key f \major
	\mmrPos #-4 R2.\no 
	r4 r a(~_\mfcresc
	a g a
	g f) r
% Bars 71 to 75
	R2.*2^\solo
	
	bes4.\f\> r8\! r4
	R2.*21
% Bars 76 to 80
	
% Bars 81 to 85
	
% Bars 86 to 90
	
% Bars 91 to 95
	
	
	
	
	\ni \mmrPos #-4 R2.
% Bars 96 to 100
	\mmrPos #-4 R
	\mmrPos #-8 R
	\mmrPos #-8 R
	\mmrPos #-4 R \mark \default \no
	f4(\pp g a
% Bars 101 to 105
	g f) d(
	e! f g
	f e) r
	R2.*7
	
% Bars 106 to 110
	
% Bars 111 to 115
	\ni \mmrPos #-4 R2.
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R \no
	R2.*3
% Bars 116 to 118
	
	
	c'2.\p\fermata \bar "|."
}
