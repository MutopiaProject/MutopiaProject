%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicViolinIIMvtII = \relative c' {
	\clef treble
	\key d \major
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceVlnIImII" #UP {
		\ni \MmrPos #4 R2.\fermataMarkup
		\MmrPos #-2 R2._\fermataMarkup \no
	}
	a8(_\pocofmadolce d e a fis d)
	b4 b8( d) d4
	a8( d e fis d b)
% Bars 6 to 10
	d( cis) cis( b) a4
	R2.
	g8(\p b) b( d) d4
	R2.
	gis,8( b) b( d) cis4
% Bars 11 to 15
	c'8(_\pocofmadolce a fis dis e g)
	fis( dis) e( cis!) dis( b)
	c'( a fis dis e g)
	e(\< g,) g4.\>( a8)
	a4\p a\< a
% Bars 16 to 20
	<<{b8([ d)] } \\ {b4}>> <b d> <a d>
	d4(\> a) a\!
	d(_\pdim a) a
	a4. r8 r4
	R2.
% Bars 21 to 25
	dis4(_\moltop e dis)
	R2.
	g,4(\< e'4.\> a,8)\!
	a4 a a\<
	a a b
% Bars 26 to 30
	b c d
	<g, d'>\mf <b d> <a d>
	d(\dimD\> a) a
	d(\pp a) a
	a4. r8 r4_\tutti \bar "||" \key f \major \mark \default
% Bars 31 to 35
	a4^\pizz r r
	R2.*4
% Bars 36 to 40
	\cueDuring #"cueVoiceVlnIImII" #UP {
		\ni R2. 
		R
		r4 \no } c8\p^\arco c4 c8~^\solo
	c c4 c c8~
	c c4 c c8~
% Bars 41 to 45
	c b4 b b8~
	b b4 b c8~
	c\< des4 c des8~
	des\> c( bes!) bes( a) a\!(
	aes) aes4 g aes8~
% Bars 46 to 50
	aes\< g4 d'8( g,) g(
	aes) aes( g) g\! r des'-.(_\pdolce
	r des-. r c-.) r bes
	r aes_\dimmarkup r bes r aes
	r aes r4 r \mark \default
% Bars 51 to 55
	R2.
	r4 r <g e'>-\tweak X-offset #-5 _\pocof^\pizz
	r <a f'>\p r
	R2.
	r4 r <aes d>_\pf
% Bars 56 to 60
	r a!\p r
	R2.
	r4 r <c ees>_\pf
	r <bes d> r
	R2.
% Bars 61 to 65
	r4 r g\p
	r4 a_\dimmarkup r\>
	c r des\!
	R2.^\tutti
	r4 cis\pp r
% Bars 66 to 70
	eis r fis\pp^\arco(~ \bar "||" \key d \major
	fis_\crescmarkup gis a
	gis fis) a,(\<
	c2.)(~\f
	c4 a') g(~
% Bars 71 to 75
	g^\solo e fis)
	<<{g( e' d cis)} \\ {g2 g4~ g}>> % this bars 4 beats for polyphony
	g,^\pizz r
	R2.*5
	
% Bars 76 to 80
	
	
	
	r4 g\mf a
	\times 2/3 {b8 d g} b4 d
% Bars 81 to 85
	r4 a, b
	\times 2/3 {gis8 b d} gis4 e
	R2.
	r4 r a,\pp
	\times 2/3 {b8 d g} b4 a
% Bars 86 to 90
	R2.
	r4 r b,
	\times 2/3 {gis8 b d} d4 cis
	R2.
	fis4\mf e dis
% Bars 91 to 95
	R2.
	g4 e g,8(^\arco a)
	a4 a\< a
	a a b
	b c d
% Bars 96 to 100
	<g, d'>\mf <b d> <a d>
	d(\> a) a
	d(\pp a) a 
	a4. r8 r4 \mark \default
	R2.*7
% Bars 101 to 105
	
% Bars 106 to 110
	
	\cueDuring #"cueVoiceVlnIImII" #UP {
		\ni \clef "bass" R2.
		R
		R
		r4 r \clef treble } d\p\<~
% Bars 111 to 115
	d d( a')
	gis\f^\pizz a r
	R2.
	cis,4\p a r
	r b r
% Bars 116 to 118
	d r r
	d r r
	a r r\fermata \bar "|."
}
