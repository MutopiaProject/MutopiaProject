%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIMvtII = \relative c''' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	R2.\fermata
	\partCombineApart e4( \once \oneVoice a2)\fermata  \partCombineAutomatic
	R2.*4
	
	
% Bars 6 to 10
	
	\partCombineSoloI a,,8(_\pdolce d  e a fis d) \partCombineAutomatic
	R2.
	\partCombineSoloI a8( d e fis d b) \partCombineAutomatic
	R2.*9
% Bars 11 to 15
	
% Bars 16 to 20
	
	
	
	\partCombineApart r4 r8 fis'(\p a b)
	c( a fis dis e g) \partCombineAutomatic
% Bars 21 to 25
	a([\p fis]) g([ e)] fis([ b])
	\partCombineApart c( a fis dis e g) \partCombineAutomatic
	g[( e)] e[( g,)] g[( a)]
	R2.*6
% Bars 26 to 30
	
	
	
	
	r4 r a'_\pdolce(~ \bar "||" \mark \default \key f \major
% Bars 31 to 35
	a bes c
	bes a) \partCombineApart \oneVoice d(
	e f g
	\voiceOne f c) \partCombineApart c,\((
	f) e d
% Bars 36 to 40
	c b\)\! \partCombineApart c(~
	\oneVoice c cis d
	\voiceOne g,2) \partCombineAutomatic r4 
	R2.*2
	
% Bars 41 to 45
	\partCombineSoloI f'4._\p_\< f4 f8~\!
	f_\> f4 f8( g) g~\!
	g4. r8 r4 \partCombineAutomatic
	R2.
	\partCombineApart \oneVoice f4. \omitBeam f8( g) f8~ \voiceOne
% Bars 46 to 50
	f f( d') b( c) g_(
	des') b( c)\> g( des')^\dimmarkup des(~\!
	des4 c8) r r4 \partCombineAutomatic
	R2.
	r4 r a!_\psempre(~ \mark \default
% Bars 51 to 55
	a bes c
	bes a) r
	r r \partCombineApart \oneVoice d(
	e f g
	\voiceOne f c) \partCombineAutomatic  r
% Bars 56 to 60
	r r cis(
	d\< c! bes\!
	a\> g\!) r
	\partCombineSoloI r r f(
	d dis e
% Bars 61 to 65
	c2) r4 \partCombineAutomatic
	R2.*3
	
	
	r4 r gis\p\<(
% Bars 66 to 70
	b2\> a4)\! \bar "||" \key d \major
	R2.
	r4 r \partCombineApart fis'(~
	fis g! a
	g fis) \oneVoice b(~
% Bars 71 to 75
	b cis d)
	\voiceOne e2( fis4) \partCombineAutomatic
	g4.\f\> r8\! r4
	R2.*5
	
% Bars 76 to 80
	
	
	
	r4 r d,8(\mf a)
	b([ d)] d([ e)] fis4
% Bars 81 to 85
	r4 r b,8( d)
	fis([ e)] e([ d)] cis4
	\partCombineApart a8(_\p d e_\< a d e
	a_\> fis d a)\! \partCombineAutomatic r a,(
	d[ b)] d([ e)] fis4
% Bars 86 to 90
	\partCombineApart a,8( d e_\< fis ais cis
	fis_\> dis b fis\! d! fis) \partCombineAutomatic
	fis([ e)] e([ d)] cis4
	\partCombineApart c'2(\mf\> b4)\! \partCombineAutomatic
	a8([ fis)] g[( e)] fis([ b)]
% Bars 91 to 95
	\partCombineApart c!2(\> b4)\! \partCombineChords
	bes8([ g)] g([ e)] e([ a)] \partCombineAutomatic
	R2.*7
% Bars 96 to 100
	
	
	
	\mark \default
	R2.*11
% Bars 101 to 105
	
% Bars 106 to 110
	
% Bars 111 to 115
	\partCombineApart r4 r d(~\f
	d cis_\dimD_\> b
	a g e)~
	e(\p d) r \partCombineAutomatic
	R2.*3
% Bars 116 to 118
	
	
	d'2.\p\fermata \bar "|."
}
