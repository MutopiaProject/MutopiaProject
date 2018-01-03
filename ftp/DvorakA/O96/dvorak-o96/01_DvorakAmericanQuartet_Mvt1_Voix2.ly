%#######################################################################
%#               M O U V E M E N T   1   -   V O I X   2               #
%#######################################################################
MvtUnVoixDeux = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	r2 r8 a''16\pp( c a c a c)
	\repeat tremolo 4 {a( c} \repeat tremolo 4 {a c)} \repeat volta 2 {
		\repeat tremolo 4 {a( f} \repeat tremolo 4 {a f)} 
		\repeat tremolo 4 {a( f} \repeat tremolo 4 {a f)}
		\repeat tremolo 4 {a( f} \repeat tremolo 4 {a f)}
% mesure 6 à 10
		\repeat tremolo 4 {a( f} \repeat tremolo 4 {a f)}
		\repeat tremolo 4 {a(\pp f} \repeat tremolo 4 {a f)}
		\repeat tremolo 4 {a( f} \repeat tremolo 4 {a f)}
		\repeat tremolo 4 {a(\< f} \repeat tremolo 4 {a f)\!}
		\repeat tremolo 4 {a(\cres f\!} \repeat tremolo 4 {a f)}
% mesure 11 à 15
		f8 r f16\f\<( g a bes) c4\fz e,8( bes'
		a) r f16\fz\<( g a bes) c4\fz e,8( bes'
		a) r d16\fz\<( e f g) a4\!( cis,)
		d8 r d16\fz\<( e f g) a4\!( cis,)
		d8->\ff d,-. d'-> d,-. d'-> d,-. d'-> d,-.
% mesure 16 à 20
		d16\>( f a) d-. d,( f a) d-. d,( f a) d-. d,\p( f a) d-. \mark \default
		d,8-.(\p d-. d-. d-.) d-.( d-. d-. d-.)
		d-.( d-. d-. d-.) d-.( d-. d-. d-.)
		d'4\pp(~ d16 f a d) a4~( a16 g f d)
		d4(\< a) f( d'8 a)
% mesure 21 à 25
		a4\cres a'8(\! f)\< a4.( f8)
		a\f( f a, f') g( e g, e')
		ees(\> c ees, c') e( c e, c')\!
		aes8-. c16( aes) aes8-. c16_\dimin( aes)\! aes8-. c16( aes) aes8-. c16( aes)
		c8-. a!16(\> c) c8-. a16( c) c8-. a16( c) c8-. a16\pp( c) \mark \default
% mesure 26 à 30
		e,8\fp( gis a! b) c4~( c16 b! d c)
		c4~( c16 b! d c) c4~( c16 b! d c) 
		c8\<( e) e\prall( d) c\prall( b) a\prall( f)
		e1\fp\>
		e'16-.\fp\> e-. r d-. c-. c-.\! r b-. a8\<( g! e4^>)
% mesure 31 à 35
		a8\<( g e4)\! a8\<( g e4)\!
		g16 g\< r aes g g r aes g g r aes g g\! r f
		e! e r f\cres e\! e r f e e r f e e r d
		e4.\f( c'8) b16\fp b r a gis gis r e
		e4.(\f c'8) b16\fz b r a gis gis r e \mark \default
% mesure 36 à 40 
		cis'4\ff( d) cis( d)
		cis(\< d8 c) b( a g f)\!
		e8 e4\> e e e8(
		e\p) e4\> e e e8
		e4\pp( f e f)
% mesure 41 à 45
		e(\< f4. g16\> f e8 d)
		c4\p\>( d c b
		c^\rit d a b) \mark \default
		cis2\ppp^\intempo( <cis e>)
		<b fis'>1(
% mesure 46 à 50
		<b fis'>2)\< <e a>
		<fis d'>\fz\<( <e cis'>)
		e1\pp
		fis
		f!2\< <e a>
% mesure 51 à 55
		<fis d'>\f b8\>( gis eis cis')\!
		e,!4( fis) g!( fis8 d)
		cis'4\>( d e) d16( b) b8-. \mark \default
		ais2.\pp b4
		d\<( e f!) e16-. c!-. c8
% mesure 56 à 60
		d\<( e d e) e,\f( e' cis a)
		fis( b fis b) g!( cis g e)
		d\>( fis ais g b fis! a d,)\!
		b2(^\moltoritard\> gis)
		a8\p^\intempo( cis4 e8) fis8.( a16 fis4)
% mesure 61 à 65
		e8.\>( cis16 a8. cis16 e2)
		a2.\pp g!8( e
		a2.) g8( e) \mark \default
	} 
	a16\pp( c a c a c ees, c' \repeat tremolo 4 {a c)}
	a16( c a c a c ees, c' \repeat tremolo 4 {a c)}
% mesure 66 à 70
	a( c ees, c' a c ees, c' \repeat tremolo 4 {a c)}
	\repeat tremolo 4 {aes(\cres ees\!} \repeat tremolo 4 {aes ees)}
	cis8\<( e!4 gis8-.) a!8.( cis16 a4)
	cis4.\mf( d16 cis) gis8\<_( gis'4) gis,8-.\!
	<cis gis'>8\f r <fis, cis' fis> r <e cis' e> r <gis dis'> r
% mesure 71 à 75
	cis4.( dis16\< cis) gis8_( gis'4) gis,8 \mark \default
	<gis, e'>1\ff
	<gis e'>16\fz\> <gis e'> <gis e'>4.( <gis e'>2)
	gis'8\mf gis4 gis\> gis gis8(
	gis)\p gis4 gis\> gis e8\!( 
% mesure 76 à 80
	eis)\< eis4 eis eis eis8(
	eis)\f eis4\> eis eis eis8
	fis\! r r4 r2
	r1 \mark \default
	d16\pp d d d d8 d16 d d d d d d8 d16 d
% mesure 81 à 85
	d d d d d8 d16 d d d d d d8 d16 d
	d d d d d8 d16 d a4:16 a8 a16 a
	a4:16 a8 a16 a d4:16 d8 d16 d
	a\pp( d fis a) a8.( fis16 d4.) r8
	a16( d fis a) a8.( fis16 d4.) r8
% mesure 86 à 90
	a16( d fis a) a8.( fis16 d4.) r8
	a16( d fis a) a8.( fis16 d4.) r8
	dis16( fis_\cres b\! dis) dis8.->( fis,16) e16\<( g b e) e8.->( g,16)\!
	dis16( fis b dis) dis8.( fis,16) e16( g b e) e8.( g,16) \mark \default
	<c, c'>1\ff^>
% mesure 91 à 95
	<c' e>\ffz->
	c,16\f\<( e g c) c8.->\! g16-. c,16( e g c) c8.-> g16
	c1 \trill
	<g c e>8 r c16\fz^> c c e, g\fz^> g g c, e\fz^> e e g,
	c8 r r4 r2 \mark \default
% mesure 96 à 100
	f4^>-- aes^>--^\sulG f^>-- ees^>--
	c^> f8-. ees-. c4^>\dimi aes'8-.\> g-.
	f16^>\pp f aes( bes) c^> c des( c) aes^> aes bes( aes) g^> g f( g)
	aes aes g( aes) g g f( g) aes aes g( aes) f f ees( f)
	f( g aes) aes-._\cres aes4:16\! aes16( b c) c-. c4:16
% mesure 101 à 105
	f16\<( g aes) aes-. aes4:16 aes16( b c) c-. c4:16 \mark \default
	aes16\ff( bes c) c-. c8 r f,16( g aes) aes-. aes8 r8
	aes,16( bes c) c-. c8 r f16( g aes) aes-. aes8 r
	f8 r f16( g aes) aes-. aes8 r c,16( e! f) f-.
	f8 r f,16( g aes) aes-. aes8 r c16( e f) f-.
% mesure 106 à 110
	\tuplet 3/2 4 {aes,,8\<( bes c) c4.:8 aes8\<( bes c) c4.:8}
	\tuplet 3/2 4 {aes8\<( bes c) c4.:8 aes8\<( bes c) c4.:8\!} 
	<<{d4 \tuplet 3/2 {d4.:8} d4 \tuplet 3/2 {d4.:8}}\\{\tuplet 3/2 4 {aes8( bes c) c4.:8 aes8( bes c) c4.:8} }>>
	f1\p\>
	f\pp
% mesure 111 à 115
	b, \mark \default
	a'16\ppp( f a f  a f a f  a f a f a f a f)
	a( f a f  a f a f  a f a f a f a f)
	a( f a f  a f a f  a f a f a f a f)
	a( f a f  a f a f)  a( c a8 c,16 a f' a)
% mesure 116 à 120
	\repeat tremolo 8 <f a>16\p \repeat tremolo 8 <f a>16
	\repeat tremolo 8 <f a>16 \repeat tremolo 8 <f a>16
	\repeat tremolo 8 <f a>16 \repeat tremolo 8 <f a>16
	\repeat tremolo 4 {a16 c} \repeat tremolo 4 {f,16 a}
	f16( c' f, c' f, c' f, c') bes( f bes f a f a f) \mark \default
% mesure 121 à 125
	a8 r r4 a16-.(_\stacc c-. f-. a-. a8.-. f16-.
	c8-.) r8 r4 f,16-.( a-. c-. f-. f8.-.-> a,16-.)
	aes8\pp <f aes>4 <f aes>4 <f aes>4 <f aes>8
	des8 <des ees>4 <des ees>4 <des ees>4 <des ees>8
	<aes aes'>8_\cres( <aes aes'>4--\! <aes aes'>4-- <aes aes'>4-- <aes aes'>8)
% mesure 126 à 130
	<aes ges'>8\mf( <aes ges'>4-- <aes ges'>-- <aes ges'>-- <aes ges'>8)
	gis16( cis e gis gis8._\dimi e16-.)\! gis,16( cis e gis gis8. e16-.)
	a,!( e'! g!\> a a8. g16-.) a,( e' g a a8. g16) \mark \default
	g4\pp~( g16 bes! d! g) d4~( d16 c bes g)
	g4. r8 r2
% mesure 131 à 135
	bes4~( bes16 des f bes) f4~( f16 ees des bes)
	bes4 r r2
	r8 aes\<( f des') r aes( f f')
	f4.\<( ees16 des) c4\f( bes)
	aes4.( ces8\>) aes4( ges)
% mesure 136 à 140
	f8\p r aes16-.\> aes-. f( aes) aes8 r aes16-. aes-. f( aes)
	aes8\pp r aes16-. aes-. f( aes) aes8 r aes16-. aes-. f( aes) \mark \default
	aes'8\fz( g\> f c) aes4~\p aes16\(( f) f( ees)\)
	aes8\( g aes16( f) f( ees)\) aes8\( g aes16( f) f( ees!)\)
	aes8( c) c\prall( bes) aes\prall\<( ges) f( des)
% mesure 141 à 145
	aes'8\fz( c bes aes16 g) aes8\fz( c bes aes16 g)
	c\fp c r bes aes( f) r f f8(\< ees) c4
	f8\<( ees c4)\! f8\<( ees c4)\!
	c'16\p\< c r des c c r des c c r des c c\! r bes
	aes aes\< r bes aes aes r bes aes aes r bes aes aes\! r g \mark \default
% mesure 146 à 150
	aes4.\f( c8) bes16\fz bes r aes! g g r bes
	aes4.\<( c8) bes16\fz bes r aes g g r bes
	a!8_\piuf( a'! bes bes,) a( a' bes bes,)
	a( a') bes\<( aes) g( f ees des\!)
	aes4( bes aes2)
% mesure 151 à 155
	aes4( bes\> aes2)
	c4\p( des c des)
	c\<( des) ees8\>( des c bes)
	aes4\>( bes aes g)
	f4_\dimi^\ritard( d!2\! e!4) \mark \default
% mesure 156 à 160
	c1\intempo\pp(
	d)
	d2\< <c f>
	<d bes'>\mf\> <c a'>\!
	r8 c16\p c  r8 c16 c  r8 c16 c r8 a16 a 
% mesure 161 à 165
	r8 f'16 f r8 <c f>16 <c f> r8 <bes f'>16 <bes f'> r8 <bes f'>16 <bes f'> 
	r8 f'16\< f r8 f16 f r8 <f a>16 <f a> r8 <f a>16 <f a>\!
	r8 <f d'>16_\cres <f d'>\! r8 <f d'>16 <f d'> r8 <f c'>16 <f c'> r8 <f c'>16 <f c'>
	r8 <f d'>16\f <f d'> r8 <f d'>16 <f d'> r8 <f c'>16 <f c'> r8 <f c'>16 <f c'>
	r8 <f d'>16 <f d'> r8 <f d'>16 <f d'> r8 <f c'>16 <f c'> r8 <f c'>16 <f c'>
% mesure 166 à 170
	r8 <f d'>16 <f d'> r8 <f d'>16 <f d'> r8 <f c'>16 <f c'> r8 <f c'>16 <f c'>
	<<{<f a>2.\ff^\ritard} \\ {s4 s\dimi s\!}>> \tuplet 3/2 {g8\>( bes e,)} \mark \default
	<f a>1^\intempo\>( 
	<f a>4.\p) r8 r2
	a8( c4 a8 f4.\p) r8
% mesure 171 à 175
	e4\>( f8) r\! f2\p^\pocorit(\!
	e1)
	f16-.^\intempo f( a, f') f-. f( a, f') f-._\cres f(\! a, f') f-. f( a, f')
	a-.\< a( f a) a-. a( f a) a-. a( f a) a-. a( f a)
	c\ff\<( f a c) c8.\!( a16 f8) r r4
% mesure 176 à 180
	c,16\<\f( f a c) c8.\fz->( a16 f8) r r4
	c16\<( f a c) c8.\fz->( a16 f8) r <f a>\ff r
	<f a>2.^> r4 \bar "|."
}
