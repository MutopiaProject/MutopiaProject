%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIMvtII = \relative c {
	\clef bass
	\key d \major
%	\transposition a
% Bars 1 to 5
	R2.\fermataMarkup
	\partcombineApart e4( a2)\fermata \partcombineAutomatic
	R2.*4
% Bars 6 to 10
	
	\partcombineApart a,8(_\pdolce d e a fis d) \partcombineAutomatic
	d'(\< b) b(\> g)\! a4
	\partcombineApart a,8( d e fis d b) \partcombineAutomatic
	d'(\< b) b(\> d,)\! cis4
% Bars 11 to 15
	R2.*8
% Bars 16 to 20
	
	
	
	\partcombineApart r4 r8 fis(\p a b)
	c( a fis dis e g) \partcombineAutomatic
% Bars 21 to 25
	a(\p fis) g( e) fis( b)
	\partcombineApart c( a fis dis e g) \partcombineAutomatic
	g'( e) e( g,) g( a)
	R2.*6
% Bars 26 to 30
	
	
	
	
	r4 r a,4^(_\pdolce~ \mark \default \bar "||" \key f \major
% Bars 31 to 35
	a bes c
	bes a) \partcombineChords d(
	e f g
	f c) \partcombineApart c(
	f) \partcombineAutomatic g f
% Bars 36 to 40
	e d e(
	d g g,
	c2) r4
	R2.*11
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	
	r4 r a'(~_\psempre \mark \default
% Bars 51 to 55
	a bes c 
	bes a) r
	r r \clef tenor \partcombineChords d(
	e f g
	f c) \partcombineAutomatic r
% Bars 56 to 60
	r r \clef bass \partcombineApart f,,(
	bes2.)~
	bes2 \partcombineAutomatic r4
	r r \partcombineChords a'(
	bes a g
% Bars 61 to 65
	c,2) \partcombineAutomatic r4
	R2.
	r4 r \clef tenor f'(~\pp
	f ges aes
	ges f) r
% Bars 66 to 70
	r r \clef bass cis\pp~ \bar "||" \key d \major
	cis2._\crescmarkup~
	cis2 a4(_\mfcresc~
	a g a
	g fis) b(~
% Bars 71 to 75
	b cis d)
	e2( d4)
	cis4. s8 r4
	R2.*5
% Bars 76 to 80
	
	
	
	r4 r d8(\mf a)
	b( d) d( e) fis4
% Bars 81 to 85
	r r b,8( d)
	fis( e) e( d) cis4
	a,8(\p d e_\< a d e
	a_\> fis d a fis a)\!
	d( b) d( e) fis4
% Bars 86 to 90
	a,,8( d e fis_\< ais cis
	fis_\> dis b fis d' fis\!)
	fis( e) e( d) cis4
	\partcombineApart c2(\mf\> b4)\! \partcombineAutomatic
	a8( fis) g( e) fis( b)
% Bars 91 to 95
	\partcombineApart c2(\> b4)\! \partcombineAutomatic
	bes8( g) g( e') e( a,)
	R2.*7
% Bars 96 to 100
	
	
	
	\mark \default
	fis4(\pp g a
% Bars 101 to 105
	g fis) g(
	cis,! d e
	d cis) d'(
	c2.)_\dimmarkup~
	c4 fis,8( a d, g)~
% Bars 106 to 110
	g4. \partcombineAutomatic r8 r4
	R2.*5
% Bars 111 to 115
	
	\clef tenor r4 e'(_\fdimD_\> g %\shape #'((0 . 0.5)(0 . -0.5)(0 . -0.5)(0 . 0.5)) Slur 
	fis e cis)~
	cis_\p( d) r \clef bass
	R2.*3
% Bars 116 to 118
	
	
	a2.\p\fermata \bar "|."
}
