\version "2.8.8"
\include "deutsch.ly"

sintro = \relative c'
{
	r8 e g h c, c16 d32 e c8.\prall h16|
	h8 h' a16( g fis e) c'h c a dis,8. e16|
	e16 g fis g32 e h'4~h16. a32 g fis g c a8.\prall h16|
	h8 dis e g~g fis16 e fis dis e8
}

aintro = \relative c'
{
	R1|
	r8 h e g \clef bass a, a16 h32( c) a8.\prall g16|
	g8 h  a16( g fis e) \clef violin e'( dis e g) fis( e dis e)|
	dis8 fis g h, cis4.\prall h16 cis|
}

bintro = \relative c
{
	e4 r8 dis e4 r8 fis|
	g4 r8 c8 fis,4 r8 h,|
	e, e' g h c, c'16 h c8 c,|
	h16 h'a h g h e, g ais,2|
}

sopranA = \relative c''
{
	r4 r|
	R2.*3|
	r8 fis4 e16( dis) e( dis cis h)|
%10
	e( fis e h) g( h e fis) g fis e fis|
	g8 c,~c16 h a h e8 a,|
	d g,~g16 fis e fis h8 e,|
	a16 g a c a g a c fis, h a h|
	g8 h ais g' fis ais,|
%15
	h16( ais h d) h( ais h d) cis d h cis|
	ais8 cis4 h16( ais) h( ais gis fis)|
	h( cis h fis) d( fis h cis) d( cis h cis)|
	d8 g,~g16 fis e fis h8 e,|
	a d,~d16 cis h cis fis8 h,|
%20
	e16 d e g e d e g cis, fis e fis|
	h,8 h' h h h16( ais gis ais)|
	h cis d e cis d cis d e d cis h|
	a g a h g a g a h a g fis|
	e8 h' ais g' fis ais,|
%25
	h fis'4 e16 dis e dis cis h|
	g'(fis g h) g(fis g h) fis h a h|
	e,8 e4 d16 c d c h a|
	fis' e fis a fis e fis a e a g a|
	d,8 d4 c16 h c h a g|
%30
	c d c g e g c d e d c d|
	e2.~|
	e~|
	e8 r r4 r|
	R2.|
%35
	r8 h'4 a16 gis a gis fis! e|
	a h a e c( e a h) c h a h|
	c8 f,~f16 e d e a8 d,|
	g c,~c16 h a h e8 a,|
%39
	d16 c d f d c d f h, e d e|
	c h a h gis8 f' e gis,|
	a e'4 d16 c d c h a|
	dis2.\trill|
	e8 h4 a16 g a g fis e|
%44
	h'4 r r|
	r8 h4 a16 g a g fis e|
	c'( h c e) c h c e h( e d e)|
	a,8 a4 g16 fis g fis e d|
	h'( a h d) h( a h d) a( d c d)|
%49
	g,8 e'4 d16 c d c h a|
	gis a h4 a16 gis a gis fis e|
	a h a e c e a h c h a h|
	c2.~|
	c4 h a|
%54
	g h e~|
	e16 dis e g e dis e g h, d c h|
	c h c e c h c e g, h a h|
	fis2.~|
	fis16 e fis a a g a c c h c dis|
%59
	dis4 r8 dis8 e fis16 dis|
	e8 fis dis4. e8|
	e h4 a16 g a g fis e|
	ais2 a4~|
	a4. h8 g fis|
	g a fis4. e8|
	e2.\fermata
}

altA = \relative c'
{
	fis4 e16( dis) e( dis cis h)|
	e( fis e h) g( h e fis) g( fis e fis)|
	g8 c,~ c16 h a h e8 a,|
	\clef bass d g,~g16 fis e fis h8 e,|
	a16 g a c a g a c fis, h a h|
%10
	e,8 \clef violin e' e e e16 dis cis dis|
	e fis g a fis g fis g a g fis e|
 	d c d e c d c d e d c h|
	a8 e' dis c' h dis,
	e16( d e g) e d e g cis, fis e fis|
%15
	d8 fis4 g16 fis e fis d e|
	fis e fis g e d e g cis,( fis e fis)|
	h,8 h' h h h16 ais gis ais|
	h4 r r|
	R2.|
%20
	r8 cis4 h16 ais h( ais gis fis)|
	h( cis h fis) d fis h cis d(cis h cis)|
	d8 g,~g16 fis e fis h8 e,|
	a d,~d16 cis h cis fis8 h,|
	e16 d e g e d e g cis, fis e fis|
%25
	d4 r r|
	r8 h'4 a16 g a g fis e|
	c' h c e c h c e h e d e|
	a,8 a4 g16 fis g fis e d|
	h'8 r r4 r|
%30
	R2.|
	r8 h4 a16 gis a gis fis! e|
	a h a e c e a h c h a h|
	c8 f,~f16 e d e a8 d,|
	g c,~c16 h a h e8 a,|
%35
	d16 c d f d c d f h, e d e|
	a,8 a' a a a16 gis fis gis|
	a h c d h( c h c) d( c h a)|
	g( f g a) f( g f g) a( g f e)|
%39
	d e f d gis,8 f' e gis,|
	a f'4 e16 d e d c h|
	c2.~|
	c8 c'4 h16 a h a g fis|
	g fis g h e, dis e g fis e dis e|
%44
	dis8 fis4 e16 dis e dis cis h|
	g' fis g h g fis g h fis h a h|
	e,8 e4 d16 c d c h a|
	fis' e fis a fis e fis a e a g a|
	d,8 d4 c16 h c h a g|
%49
	e'2.~|
	e~|
	e8 r r4 r|
	r8 e4 d16 c d c h a|
	dis e fis4 e16 dis e dis cis h|
%54
	e fis e h g h e fis g fis e fis|
	g2.~|
	g4 fis e~|
	e16 dis e g cis, h cis e ais, e' dis cis|
	dis cis dis fis c h c e \clef bass a, g a c|
%59
	fis,4 r8 fis g a|
	h c fis,4. e8|
	e4 r r|
	\clef violin r8 g'4 fis16 e fis e dis cis|
	dis4. h8 e dis|
	e fis dis4. e8|
	e2.\fermata
}

bassA = \relative c
{
	h'8 a c h a|
	g4 r8 c8 a h|
	e,4 d c|
	h a g|
	fis r8 fis' h fis|
%10
	g4 r8 c a h|
	e,4 d c|
	h a g|
	fis r8 h dis h|
	e cis fis e fis fis,|
%15
	h4 a g|
	fis fis' e|
	d r8 g e fis|
	h,4 a g|
	fis e' d|
%20
	cis r8 cis fis cis|
	d4 r8 g e fis|
	h,4 a g|
	fis e' d|
	cis fis8 e fis fis,|
%25
	h h h h cis dis|
	e, e' e e fis g|
	a, a' a a h c|
	d,, d' d d e fis|
	g, g' fis d g f|
%30
	e4 r8 a f g|
	gis gis, a h c d|
	c h a a' gis e|
	a4 g f|
	e d c|
%35
	h4 r8 h e h|
	c4 r8 f d e|
	a,4 g f|
	e d' c|
%39
	h r8 e gis e|
	a d, e h gis e|
	a a' a a h c|
	fis,16 a g h a8 c fis, h|
	e, d c2|
%44
	h8 h h h cis dis|
	e, e' e e fis g|
	a a, a a h c|
	d, d' d d e fis|
	g g, g g a h|
%49
	c, c'' h a gis fis|
	e d c h c d|
	c4 r8 f d e|
	a, h c h a g|
	fis e dis e fis dis|
%54
	e e' e e fis g|
	c, c c c d e|
	a, g a h c h|
	ais cis h ais gis fis|
	h h' fis a dis, fis|
%59
	a,4 r8 c h a|
	g a h a h4|
	e,8 e' e e fis g|
	cis, cis cis dis e fis|
	h,4. g8 c4|
	a4 h2|
	e,2.\fermata
}
