%#######################################################################
%#               M O U V E M E N T   2   -   V O I X   3               #
%#######################################################################
MvtDeuxVoixTrois = \relative c {
	\clef alto
	\override TupletBracket #'bracket-visibility = ##f
% mesures 1 à 5
	f16\p\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\) 
	f\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	f\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	f\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	f\(( a) a( d) d( a)\) f\(( a) a( c) c( a)\)
% mesures 6 à 10
	f\(( a) a( d) d( a)\) f\<\(( a) a( d) d( a)\)
	f\fp\(( a) a( d) d( a)\) f\>\(( a) a( d) d( a)\)
	f\<\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	e\mf\(( g) g( c) c( g)\) e\(( g) g( c) c( g)\)
	e\>\(( g) g( e') e( g,)\) e\(( g) g( e') g,( e)\) \mark \default
% mesures 11 à 15
	d8\pp r r d^\pizz r r
	<d a'> r r d r r
	d r r a' r r
	d, r r d_\cres r\! r
	d\fp\< r r d r r
% mesures 16 a 20
	d\< r r d r r
	c\mf r r_\cres <c g'>\! r r
	<c g'>\> r r <c g'>\p r r \mark \default
	e16\pp\(( g) g( bes) a( g)\) e16\(( g) g( bes) a( g)\)
	e16\(( g) g( bes) a( g)\) e16\(( g) g( bes) a( g)\)
% mesures 21 à 25
	e16\(( g) g( bes) a( g)\) e16\(( g) g( bes) a( g)\)
	e16_\moltocresc\(( g) g( bes) a( g)\) e16\<\(( g) g( bes) b( f)\)
	f\f\(( a) a( c) c( f,)\) d\((\< f) f( d')\dimi d(\! f,)\)			
	f\p\<\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)\!
	f\(( a) a_\cres( f')\! f( a,)\) f\<\(( a) a( f') f( a,)\)
% mesures 26 à 30
	a\mf\<\(( e') e( a) a( e)\) bes!\(( d) d( bes') bes( d,)\)
	f,\f\(( c') c( f) f( c)\) g_\dimi\(( ees')\! ees( g) g( g,)\)
	a\>\(( d) d( a') a( d,)\) d\p\(( g) g( d) d( f)\)
	f\(( c) c( f) f\>( c)\) c\(( e) e( c) c( e)\) 
	c\pp\(( f) f( c) c( f) f( c) c( a) a( f)\) \mark \default
% mesures 31 à 35
	cis8.\p r16 cis32 cis cis cis cis8. r16 cis32 cis cis cis
	cis8. r16 cis32 cis cis cis cis8. r16 cis32 cis cis cis
	cis8._\cres r16\! cis32 cis cis cis cis8. r16 cis32 cis cis cis
	cis8. r16 cis32 cis cis cis_\cres cis8.\! r16 cis32\< cis cis cis
	f!8.\f r16 f32 f f f  bes8. r16 bes32 bes bes bes
% mesures 36 a 40
	d,8.\> r16 d32 d d d b'8. r16 b32 b b b 
	c8(\< c,16) r16 cis 32 cis cis cis d8. r16\! dis32_\cres dis\! dis dis
	e8.\f r16 e32 e e e e8. r16 e32 e e e 
	f8. r16 f32 f f f g8._\dimi r16\! g32 g g g
	a8.\> r16 a32 a a a bes8. r16 b32\p b b b 
% mesures 41 a 45
	c8.\> r16 c32 c c c c8. r16 c32\pp c c c 
	f,8. r16 f32 f f f f8 r r \mark \default
	fis16\mp\(( a) a( c) c( a)\) fis\((\< a) a( c) c( a)\)
	fis\mf\>\(( a) a( c) c( a)\) fis\(( a) a( c) c( a)\)
	fis\p\<\(( a) a( c) c( a)\) fis\(( a) a( c) c( a)\)
% mesures 46 a 50
	fis\sf\>\(( a) a( c) c( a)\) fis\(( a) a( c) c( a)\)
	f!\p\<\(( bes) bes( d) d( f,)\) f\(( bes) bes( d) d( f,)\)
	g\f\>\(( bes) bes( c) c( bes)\) bes\(( c) c( bes) bes( g)\)
	f\p\(( bes) bes( d) d( f,)\) f\>\(( bes) bes( d) d( f,)\)
	g\pp( bes) bes( c) c( bes) bes( c) c( bes) bes( g) \mark \default
% mesures 51 a 55
	g( bes) bes\<( g) g( bes) bes( g) g( bes) bes( g)
	f( a) a( <f d'>) <f d'>\!( a) f( a) a( d) d( a)
	d,_\cres( g)\! a( d) d( a) d,( g) a( d) d( a) 
	f\<( a) a( f) f( a) a( fis) fis( a) a( fis)
	a\ff( c) c( e) e( c) e,( c') c( e) e( c)
% mesures 56 a 60
	a( c) c( e) e( c) e,( c') c_\dimi( e)\! e( c)
	a( c) c_\dimi( e)\! e( c) a( c) c( e) e( c)
	a( c) c_\dimi( e)\! e( c) g( c) c( e) e( c)
	g( c) c( g) g( c) c( a) a\p( c) c_\dimi( a)\!
	g\pp( c) c( g) g( c) c( a) a( c) c( a)
% mesures 61 a 65 
	g( c) c( g) g( c) c( g) g( c) c( g) \mark \default
	fis( a) a( c) c( a) fis\<( a) a( c) c( a)
	fis\sf\>( a) a( c) c( a) fis( a) a( c) c( a)
	fis\pp\<( a) a( c) c( a) fis( a) a( c) c( a)\!
	fis_\cres( a)\! a( c) c( a) fis\<( a) a( c) c( a) 
% mesures 66 a 70
	f!\ff( bes) bes( d) d( f,) f( bes) bes( d) d( f,)
	g( bes) bes( c) c\>( bes) bes( c) c( bes\p) bes( g)
	f\pp( bes) bes( d) d\>( f,) f( bes) bes( d) d( f,)
	g\pp( bes) bes( c) c( bes) bes\<( c) c( bes) bes( g) \mark \default
	g\<( bes) bes( g) g( bes) bes( g) g( bes) bes( g)\!
% mesures 71 a 75
	f_\cres( a)\! a( d) d( a) f( a) a( d) d( a)
	d,\<( g) a( d) d( a) d,( g) a( d) d( a)\!
	bes( d) d_\cres( bes)\! bes( d) d( b) b( d) d( b)
	d\f( f) f( a) a( f) a,( f') f( a) a( f)
	d( f) f( a) a( f) a,( f') f( a) a( f)
% mesures 76 a 80
	d\(( f) f( a) a( f)\) a,\(( f'_\dimi) f(\! d') d( f,)\)
	d( f) f( a) a( f) c\mp( f) f( c) c( f)
	f,_\dim( a) a\>( d) d( a) f( b) b( d) d( b)
	f\>( a) a( c) c( a) f( g) g( d') d( g,) 
	f\pp( a) a( c) c( f,) f( b) b( f) f( b)
% mesures 81 a 85
	f_\ritard( a) a( c) c( a) a( cis) cis( a) a( cis,) \mark \default
	d8^\intempo d r d^\pizz d r
	d^\arco d r d^\pizz d r
	d^\arco d r a'^\pizz a r
	d,^\arco d r d^\pizz d r
% mesures 86 a 90
	d^\arco d r d^\pizz d r
	d^\arco d r d^\pizz d r
	d4.^\arco\sf\>( des)_\dim
	c\p\>( cis)
	d4.:32\pp^\trem g4.:32
% mesures 91 a 95
	d4.:32 g4.:32
	d2.:32\<
	d2.:32\>
	d2.:32\pp
	d8(_\morendo cis d cis d cis)
% mesures 96 à 97
	d8( cis d cis d cis)
	d2.\fermata \bar "|."
}
