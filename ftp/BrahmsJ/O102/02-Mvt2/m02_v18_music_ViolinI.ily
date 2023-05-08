%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicViolinIMvtII = \relative c' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceVlnImII" #UP { \ni 
		\MmrPos #4 R2.\fermata
		\MmrPos #-2 R2._\fermata \no
	}
	a8(_\pocofmadolce^\solo d e a fis d)
	b( d) d( e) fis4
	a,8( d e fis d b)
% Bars 6 to 10
	fis'( e) e( d) cis4
	R2.
	b8(\p d) d( e)  fis4
	R2.
	b,8( d) d( e) e4
% Bars 11 to 15
	c'8(_\pocofmadolce a fis dis e g)
	a( fis) g( e) fis( b)
	c( a fis dis e g)
	g(\< e) e( g,)\> g( e')
	fis(\p d) cis(\< a) a( d)
% Bars 16 to 20
	d( b) d( e) e( fis)
	fis4.(\> d8) cis( a)\!
	fis'4._\pdim( d8) cis( a)
	d( a d) r r4
	R2.
% Bars 21 to 25
	fis4_\moltop( g fis)
	R2.
	e4(\< g4.\> e8)\!
	fis8( d) cis( a) a(\< d)
	a4 a8( d) b4
% Bars 26 to 30
	b8( e) d4 fis8( a)
	g(\mf d) d( e) e( fis)
	fis4.(\dimD\> d8) cis( a)
	fis'4.(\pp d8) cis( a)
	d( a d) r r4_\tutti \bar "||" \mark \default \key f \major
% Bars 31 to 35
	a4^\pizz r r
	R2.*4
% Bars 36 to 40
	\cueDuring #"cueVoiceVlnImII" #UP {
		\ni R2.
		R \no
		r4 } e'8\p^\arco e4 e8~^\solo
	e e4 e e8~
	e e4 e d8~
% Bars 41 to 45
	d d4 d d8~
	d d4 d e8~
	e\< f4 e f8~
	f\> e4 c c8~\!
	c c4 b c8~
% Bars 46 to 50
	c\< b4 aes'8( g) g(
	aes) aes( g) g\! r g-.(-\tweak X-offset #-2 _\pdolce
	r g-. r aes-.) r des,
	r c_\dimmarkup r des r d
	r c r4 r \mark \default
% Bars 51 to 55
	R2.
	r4 r bes'^\pizz-\tweak X-offset #-2.5 _\pocof
	r a\p r
	R2.
	r4 r f_\pf
% Bars 56 to 60
	r c\p r
	R2.
	r4 r a'_\pf
	r g\p r
	R2.
% Bars 61 to 65
	r4 r <bes, e>\p
	r <a e'>\dimD\> r
	<a f'> r <aes f'>\!
	R2.
	r4 eis'\pp r
% Bars 66 to 70
	gis r a\pp^\arco(~ \bar "||" \key d \major
	a_\crescmarkup b cis
	b a) a(\<
	c2.\f)~
	c2 b4(~
% Bars 71 to 75
	b^\solo cis! d)
	e2( fis4
	g) cis,,^\pizz r
	R2.*5
% Bars 76 to 80
	
	
	
	r4 \times 2/3 {cis8_\mf^\pizz e a} fis4
	d \times 2/3 {d8 g b} a4
% Bars 81 to 85
	r \times 2/3 {a,8 cis fis} d4
	d \times 2/3 {b8 d gis} a4
	R2.
	r4 r fis\pp
	g \times 2/3 {d8 g b} d4
% Bars 86 to 90
	R2.
	r4 r fis,
	d \times 2/3 {b8 d gis} a4
	R2.
	r4 \times 2/3 {b,8\mf e g} b4
% Bars 91 to 95
	R2.
	c,4 \times 2/3 {e8 g bes} e a,
	fis(^\arco d) cis( a\<) a( d)
	a4 a8( d) b4
	b8( e) d4 fis8( a)
% Bars 96 to 100
	g(\mf d) d( e) e( fis)
	fis4.\>( e8) cis( a)
	fis'4.(\pp d8) cis( a)
	d( a d) r a'4(\pp \mark \default
	d2.)~
% Bars 101 to 105
	d2 d,4(
	g2.)~
	g2 fis4( 
	g a g
	fis!_\dimmarkup ees d
% Bars 106 to 110
	f! ees d~
	d cis!) c(~
	c b) bes(~
	bes g) r
	r r fis'!(\p\<
% Bars 111 to 115
	e) a( d)
	d\f^\pizz cis r
	R2.
	e,4\p d r
	r g r
% Bars 116 to 118
	a r r
	fis r r 
	d r r\fermata \bar "|."
}
