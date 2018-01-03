%#######################################################################
%#               M O U V E M E N T   2   -   V O I X   2               #
%#######################################################################
MvtDeuxVoixDeux = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesures 1 à 5
	d'16\p( f8 f-.) f16-. d16( f8 f-.) f16-.
	d16( f8 f-.) f16-. d16( f8 f-.) f16-.
	d16( f8 f-.) f16-. d16( f8 f-.) f16-.
	d16( f8 f-.) f16-. d16( f8 f-.) f16-.
	d16( f8 f-.) f16-. c16( f8 f-.) f16-.
% mesures 6 à 10
	d16( f8 f-.) f16-. d16\<( f8 f-.) f16-.
	d16\fp( f8 f-.) f16-. d16\>( f8 f-.) f16-.\!
	d16( f8 f-.) f16-. d16\<( f8 f-.) f16-.
	c16\mf( e8 e-.) e16-. c16( e8 e-.) e16-.
	c16\>( e8 e-.) e16-. c16( e8 e-.) e16-. \mark \default
% mesures 11 à 15
	f16\pp\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	f\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	f\(( a) a( d) d( a)\) f\(( a) a( c) c( a)\)
	f\(( a) a( d) d( a)_\cres\) f\((\! a) a( d) d( a)\)
	f\fp\(( a) a( d) d(\> a)\) f\(( a) a( d) d( a)\)
% mesures 16 a 20
	f\<\(( a) a( d) d( a)\) f\(( a) a( d) d( a)\)
	e\mf\(( g) g( c) c( g)\) e_\cres\(( g)\! g( c) c( g)\)
	e\>\(( g) g( c) c( g)\) e\p\(( g) g( c) c( g)\) \mark \default
	g8 r r r4 r8
	bes,8(\p\<^\espressivo e f16 e) g8\f\>( e'8. g,16)
% mesures 21 à 25
	g8\p r r r4 r8
	bes,8\<( e f16 e) g8\f\<( e' f)
	<c f>8.\f-> a'16( g f) <d, d'>4_\dimi( <d bes'>8)\!
	<f a>4.\p( <f a>8\<) <f a> <f a>
	<f a>4\mf <a f'>8_\cresc( <a f'>) <a f'>->\< <a f'>->
% mesures 26 à 30
	<c e>4.\mf\< <d bes'>4( <bes g'>8)
	<bes g'>16\f( <a f'>) <a f'>4 <g ees'>4.\>
	<f d'>_\dim \set doubleSlurs = ##t <f d'>4\p( g8)
	<f a>4\>( <a f'>8) <a e'>4.
	<f c'>4.\pp( <f c'>4) r8 \set doubleSlurs = ##f \mark \default
% mesures 31 à 35
	e16\p\(( g,) g( bes) a( g)\) e'\(( g,) g( bes) a( g)\)
	e'\(( g,) g( bes) a( g)\) e'\(( g,) g( bes) a( g)\)
	e'\(( g,) g( bes) a( g)\) e'\(( g,) g( bes) a( g)\)
	e'\(( g) g( bes) a( g)\) e\<\(( bes'!) bes( b) b( f)\)
	f\f( a) f( c f c') c( cis d f! fis, g)
% mesures 36 a 40
	<f! a>\>( f') f( a,) a( f') f( a,) a( f') g( d)\!
	f,_\cres( f')\! f( f,)\< f( f') f( a,) a( a') c,( a)
	e\f( e') e( e,) e( e') e,( g) g( e) e( g)
	c,\(( f) f( c) a'8\) bes,16_\dimi\(( ees)\! ees( bes) bes'8\)
	a,16\>\(( d) d( a) a'8\) d,16\p\(( f) f( d) f8\)
% mesures 41 a 45
	c16\((\> f) f( c) c( f)\) c\pp\(( c') c( c,) c( c')\)
	f,\(( c') c( a) a( f)\) f8 r r \mark \default
	R2.*1
	r16 fis\<( ees'8.[ d16]) d\mf\>( c ees4)\!
	R2.*1
% mesures 46 a 50
	r16 fis,\<(_\piuf ees'8.[ d16]) d\mf\>( c ees4)\!
	d8\<( bes'8. bes16) bes8( a g16 ees)
	\set doubleSlurs = ##t <g, ees'>4.\f\>( <g ees'>8) r ees'_\dim \set doubleSlurs = ##f
	bes'4.\pp\>( bes8) a( g16 ees)
	ees4.\pp( ees8) r ees \mark \default
% mesures 51 a 55
	g8.( ees16 bes8) g\<( f e!)
	d16( f8 f-. f16-.)\! d16( f8 f-. f16-.)
	d16(_\cres d'8)\! d d16 d,16( d'8 d d16)
	a,16\<( a'8) a a16 a,16( a'8 a a16)
	e\ff( e') e4( e4.)
% mesures 56 a 60
	e8\f( c') b-- a_\dimi( g)\! a--
	\set doubleSlurs = ##t <c, e>2.( \set doubleSlurs = ##f
	e8)( a g) e_\dimi( d\! e)
	e4.( e8\p) d( e)
	e4._\dimi( ees8)\! d(\pp ees)
% mesures 61 a 65
	ees4.( ees8) d( ees) \mark \default
	c4.( c8) r r
	r16 fis,\mf\<( ees'8.[ d16]) d\>( c ees4)\!
	R1*6/8
	r16 fis,\f\<( ees'8.[ d16]) d( c ees4)\!
% mesures 66 a 70	
	d8\ff( bes'8.) bes16-. bes8( g) f16( d)
	\set doubleSlurs = ##t <g, ees'>4.\>( <g ees'>8)\! r ees'\p \set doubleSlurs = ##f
	bes'4.\pp\>( bes8) g( f16 d)
	ees4.\pp( ees8) r ees \mark \default
	g8.\<( ees16 bes8) g( f e!)
% mesures 71 a 75
	d16( f8_\cres) f\! f16 d16( f8) f f16
	d16(\< d'8) d-- d16-. d,16( d'8) d-- d16-.\!
	d,16( d'8_\cres) d--\! d16-. d,16( d'8) d-- d16-.
	a\f( a') a4( a4.)
	a,8\<( f') e-. d8.( c16) d8\!
% mesures 76 a 80
	<f, a>4. <<{a8(_\dimi bes\! a)}\\{f4.}>>
	a8( d c) a\mp( gis a)
	a4. a8_\dimi( g!\> a)\!
	a4. a8\>( g a)
	a4.\pp aes8( g aes)
% mesures 81 a 85
	a!4.^\ritard a8( g-- a--) \mark \default
	<a, f'>8^\arco^\intempo <a f'> r <a f'>^\pizz <a f'> r
	<a f'>8^\arco <a f'> r <a f'>^\pizz <a f'> r
	<a f'>8^\arco <a f'> r <a f'>^\pizz <a f'> r
	<a f'>8^\arco <a f'> r <a f'>^\pizz <a f'> r
% mesures 86 a 90
	<a d>8^\arco <a d> r <a d>^\pizz <a d> r
	<a d>8^\arco <a d> r <a d>^\pizz <a d> r
	g4.\fp\>^\arco( gis)
	a\p\>( g!)
	a8\pp^\pizz a r bes bes r
% mesures 91 a 95
	a a r bes bes r
	a a_\cres r\! a a r
	a a_\dimi r\! a a r
	a a r a a r
	a4 r8 a4 r8
% mesures 96 a 97
	a4 r8 a4 r8
	a2.^\arco\fermata \bar "|."
}
