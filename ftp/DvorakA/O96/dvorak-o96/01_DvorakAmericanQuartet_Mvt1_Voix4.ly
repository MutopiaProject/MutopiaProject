%#######################################################################
%#               M O U V E M E N T   1   -   V O I X   4               #
%#######################################################################
MvtUnVoixQuatre = \relative c {
	\clef bass
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	r2 r4 r8 f,8\pp
	f1( \repeat volta 2 {
		f)(
		f)(
		f)(
% mesure 6 à 10
		f2)( f8\< a c\> a)\!
		f4. r8 r4 r8 f'8^\pizz
		r a, r c r4 f8 f,
		r4 r8_\cres d r\! f\< a c
		f\! r a_\cres f\! d' c f, r
% mesure 11 à 15
		f,16\f^\arco( a c f) f8.-> d16-. c4 r8 c
		f,16\fz\<( a c f\!) f8.-> d16-. c4 r8 c
		d16\fz\<( f a d) d8.-> bes16-.\! a4 r8 a
		d,16\fz\<( f a d) d8. bes16-.\! a4 r8 a
		d,8.\ff bes16 d8. bes16 d8. bes16 d8. bes16 
% mesure 16 à 20
		d8._\dimi bes16\! d8. bes16\> d8. bes16\p d8. bes16\! \mark \default
		d4~(_\piup d16 f a d) a4~( a16 g f d)
		d8 r r4 r2
		R1*1
		f'2\p\<( b,)
% mesure 21 à 25
		c1\<_\crescmarkup
		c2\f( bes)
		aes\>( g)
		f16_\dimi f\! r8 f16 f r8 f16 f r8 f16 f r8
		<<{s4\> s s s\!} \\ {<f a!>16 <f a> d8\rest <f a>16 <f a>\pp d8\rest <f a>16 <f a> d8\rest <f a>16 <f a> d8\rest}>> \mark \default
% mesure 26 à 30
		e!8 r r4 r4 <a, e'>^\pizz\pp
		r <a e'> r <a e'>
		r8 a\< r b r c r d
		e\fp e, r e' e\fp e, r e^\arco
		a2\fp\> a8-. b-.\! c4^>
% mesure 31 à 35
		a8-. b-. c4^> a8 b c4^>
		c8 b16 b c8 b16\< b c8 b16 b c8 gis16 gis\!
		a8_\cres gis16\! gis a8 gis16 gis a8 gis16 gis a8 d,16 d
		e2\fz^> e'4.->( e,8)
		e2\ff e'4.->( e,8) \mark \default
% mesure 36 à 40
		\repeat tremolo 4 {g16\ff( a)} \repeat tremolo 4 {g16( a)}
		g16\<( a g a) g( f e d) d2\fz
		e16\fz e r e e\> e r e e e r e e e r e
		e'\p e r e\> e e r e e e r e e e r e\!
		g1\pp(
% mesure 41 à 45
		g4)\< f8( e d2\>)
		e1\p
		e,\>^\rit \mark \default
		a\ppp^\intempo
		d
% mesure 46 à 50
		d2\<( cis)\!
		gis\fz\>( a)\!
		a'1\pp
		<<{s2 b(}\\{d,1\pp(}>>
		<<{b'2) s}\\{d,2)\< cis\!}>>
% mesure 51 à 55
		gis\f cis\>
		fis2.\! b4
		fis2.\dimi b,4\!\> \mark \default
		fis2.\pp( b4)
		g!2.\<( c4)
% mesure 56 à 60
		b2 cis4(\f a)
		gis2 ais
		b4( cis_\dimi d\! f!\>)
		d^\ritmolto( d, e2)
		a1^\intempo\p(
% mesure 61 à 65
		a)(\>
		a4)\pp r a^\pizz r
		a r a r \mark \default
	}
	r4 fis2.\pp^\arco
	fis fis4(
% mesure 66 à 70
	fis2) fis(
	fis4) fis2._\cresc
	\repeat tremolo 4 {e16\<( gis)} \repeat tremolo 4 {fis16( a)}
	e16\mf( gis e gis) a\<( fis a fis) gis( cis gis cis) gis( bis gis bis)
	e,\f( gis e gis) a\<( fis a fis) gis( cis gis cis) gis( bis gis bis)\!
% mesure 71 à 75
	e,( gis e gis) a\<( fis a fis) gis( cis gis cis) gis( bis gis bis) \mark \default
	cis1\ff
	cis16\fz cis cis4.\>( cis2)
	cis'2\mf\>( e)
	e2.\p\> e8( cis)
% mesure 76 à 80
	cis4\pp( cis,8) r cis4\<( cis,8) r
	cis''8\f( cis,16) r cis8( cis,16) r cis8( cis'16) r_\dimi cis8(\! cis,16) r
	d8\ff( d'16) r d8( d'16) r_\dimi d8(\! d,16) r d8( d,16) r
	d''8_\dimi( d,16)\! r d8( d,16) r d8\p( a'16) r a8\>( d,16) r \mark \default
	d8-.\pp^\pizz[ a'-.] d,-.[ a'-.] d,-.[ a'-.] d,-.[ a'-.]
% mesure 81 à 85
	d,-.[ a'-.] d,-.[ a'-.] d,-.[ a'-.] d,-.[ a'-.] 
	d,[ a'] d,[ a'] fis[ a] fis[ a] 
	fis[ a] fis[ a] fis[ a]  d,[ a']
	d1\pp^\arco(
	d8) d-.( d-. d-.) d-.( d-. d-. d-.)
% mesure 86 à 90
	c!1(
	c8) c-.( c-. c-.) c-.( c-. c-. c-.)
	b8_\cres b'4\! b, b' b,8(
	b) b'4\< b, b' b,8 \mark \default
	bes!8.->\ff c16 d-. c-. r8 bes8.-> c16 f-. e-. r8
% mesure 91 à 95
	bes16\<( c e g\!) g8.-> bes,16 bes16\<( c e g\!) g8.-> bes,16 
	bes8->\f[ c-.] bes->[ c-.] bes->[ c-.] bes->[ c-.] 
	bes->[ c-.] bes->[ c-.] bes->[ c-.] bes->[ c-.] 
	bes r r4 r2
	c'16\ff-> c c e, g->\fz g g c, des->\fz des des g, bes->\fz bes bes e, \mark \default
% mesure 96 à 101
	f8 r r4 r2
	R1*5 \mark \default
% mesure 102 à 105
	f4->\ff aes-> f-> ees->
	c-> f8-. ees-. c4-> f8-. ees-.
	d!1\f^\flat\startTrillSpan\afterGrace
	d1\startTrillSpan {cis32[ d]\stopTrillSpan}
% mesure 106 à 110
	f4 r f''4.\fz( f,8)
	f4 r d'4.\fz( f,8)
	f4_\dimi r\! f r
	d1\p\>
	des\pp(
% mesure 111 à 115
	des) \mark \default
	c2 r
	r4 <f, c'>8^\pizz\pp r r2
	R1*2
% mesure 116 à 120
	r4 f''8\pp^\pizz r f, r r4
	r8 f' r f, r2
	r8 f a c r f, a c
	f4^\arco( e) d( c)
	bes( a g f) \mark \default 
% mesure 121 à 125
	ees1(
	ees) \clef tenor
	aes4\<(_\espressivo des) ees( f)
	ees4.\>( des16 bes) bes2\!
	aes8\<( des) des des ees4( f)
% mesure 126 à 130
	aes4.\f( ges8) ees2
	<<{s4\dimi s s\! s} \\ {fes2.\> aes4\!}>>
	g!2.\> a!4 \mark \default
	bes!2.\p a8( g)
	bes2. aes8( ges)
% mesure 131 à 135
	f8( e!) f-. f-. f-. f-. f-. f-.
	ges( f) ges ges g--( g--) g(-- g--)
	aes\<( f des aes) \clef bass aes( f des aes)
	aes2\f( ges)
	e!\>( d!)
% mesure 136 à 140
	des1\p
	des\pp \mark \default
	c2.\fp( c8) r
	R1*1
	\clef tenor r4 f''\p\<( ges f)
% mesure 141 à 145
	c'1\f\>
	aes8\p( g f ees) \clef bass c( bes16 des c4)
	c8( bes16 des c4) c8( bes16 des c4)
	aes8\p\< g16 g aes8 g16 g aes8 g16 g aes8 e!16 e
	f8\< e16 e f8 e16 e f8 e16 e f8 bes,16 bes \mark \default 
% mesure 146 à 150
	c2\f c,4.( c'8)
	c2 c,4.( c'8)
	\repeat tremolo 4 {ees16_\piuf( f)} \repeat tremolo 4 {ees16( f)}
	ees16\<( f ees f) ees( des c bes)\! bes2
	c16 c r c  c c r c  c c r c  c c r c
% mesure 151 à 155
	c' c r c c\> c r c c c r c c c r c
	ees1\p(
	ees4) des8( c bes2)
	c1\>\p
	c,_\rit\! \mark \default
% mesure 156 à 160
	f^\intempo\pp(
	bes,)
	bes2(\< a)
	e\mf\>( f) \clef tenor
	f''4\p\<( g) a( g8 f)
% mesure 161 à 165
	f8\>( g4 f16 d) d2
	f4\<( g8 d) c( f a c)\!
	bes2_\cres a\!
	f4\f( g8 d) c( f a c)
	bes2 a
% mesure 166 à 170
	f4( g8 d) c\<( f a c)(
	c)\ff^\rit a-.\> f-. c-. \clef bass a8(_\dimmarkup f \tuplet 3/2 {e c c,)\!} \mark \default
	f1\>^\intempo( 
	f\p\>)
	f4\! a d\p( f8) r
% mesure 171 à 175
	a,4(\dimi d8\!) r \override Hairpin #'minimum-length = #7 c2\p\>(
	c4\pp)(^\pocorit c,2.)
	f8.^\intempo f16 d c r8 f8._\cres f16\! d c r8
	f16\< f d c f f d c f f d c f f d c
	f2\ff f16 f d c f f d c 
% mesure 176 à 180
	f2 f16 f d c f f d c
	c16\<( f a c) c8.->\fz( a16 f8) r f\f r
	f2.-> r4 \bar "|."
}
