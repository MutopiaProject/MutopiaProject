%#######################################################################
%#               M O U V E M E N T   4   -   V O I X   4               #
%#######################################################################
MvtQuatreVoixQuatre = \relative c {
	\clef bass
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 4
	r2
	f,8^\pizz\p r f' r
	r2
	f,8 r f' r
% mesure 5 à 10
	R2*2
	d,8\p r f r
	a r d f
	R2*2 
% mesure 11 à 15
	d,8 r f r
	a r d-. f-.
	r2
	d4^\arco\p r8 d
	c4 r
% mesure 16 à 20
	c\< r8 c
	bes4-. a-.
	a-.\mf b-.
	c-.\< b-.
	b-. b-.
% mesure 21 à 25
	c8\f r c c,
	c' r c c,
	c' r c c,
	c' r c c, \mark \default
	f4\fp r8_\dimi c'^\pizz\!
% mesure 26 à 30
	f,4 r8 c'
	f,4 r8 c'
	f,4 r8 c'
	f,4\p r8 c'
	f,4 r8 c'
% mesure 31 à 35
	f,4 r8 c'
	f,4 r8 c'
	f,4 r8 c'\pp
	f4 r8 c
	f4 r8 c
% mesure 36 à 40
	f4 r8 c
	f,4 r8 bes
	f4 r8 bes
	a4 f8 c'
	f4 r8 c
% mesure 41 à 45
	f4 r8 c
	f4 r8 c
	f4 r8 a,^\arco
	gis\fz-> e gis-> e\<
	a-> e a-> e
% mesure 46 à 50
	gis-> e gis-> e\! \mark \default
	<a e' a>8\ff r <a e' a> r
	<a e' a>8 r <a e' a> r
	a_\dimi r\! a\p\> r
	a\! r r4
% mesure 51 à 55
	f4\pp r8 c'
	f4 r8 c'
	f,4 r8 c
	f,4 r8 c'
	f,4 r8 bes
% mesure 56 à 60
	f4 r8 bes
	f4 r8 c'
	f, f r c'
	f f r c\<
	f, f r c
% mesure 61 à 65
	f f\! r f'
	b,\mf g b g'
	c,_\cres[ e\! g c]
	b g b g \mark \default
	c\ff r c,, r
% mesure 66 à 70
	c r c r
	c r c'\mp-. r\>
	c-. r c-. r
	aes\pp r c^\pizz r
	ees r aes, aes
% mesure 71 à 75
	c r ees r
	aes, r aes' aes
	c, r ees r
	aes, r aes' aes
	ees r aes, r
% mesure 76 à 80
	ees' r aes ees
	c r ees r
	g r c, c
	ees r g r
	c, r c c,
% mesure 81 à 85
	c' r g' r
	c, r c c,
	ees r bes' r
	ees r ees, ees'
	bes r ees r
% mesure 86 à 90
	ees, r bes' ees
	aes, r c r
	ees r aes, aes
	c r ees r
	aes, r aes' aes
% mesure 91 à 95
	ees r c r
	aes\< r aes' r
	bes, r des r
	bes r des,\mf des
	ees r ees' r
% mesure 96 à 100
	c r aes_\dimi c\!
	ees,\> r ees' r
	ees, r ees'^\arco ees \mark \default
	aes,8.\pp( bes16 aes8) ees-.
	aes8.( bes16 aes8) ees-.
% mesure 101 à 105
	aes8.( bes16 aes8) ees-.
	aes8.( bes16 aes8) ees-.
	g2(
	g)(
	g)(
% mesure 106 à 110
	g)
	\repeat tremolo 4 {bes16( des)}
	\repeat tremolo 4 {bes16( des)}
	\repeat tremolo 4 {bes16( des)}
	\repeat tremolo 4 {bes16( des)} \mark \default
% mesure 111 à 115
	c8 c, r c'_\cresc
	c c,\< r c'
	c c, r c'
	c c, r c'
	<c, c'>\f r <c c'> r 
% mesure 116 à 120
	<c c'> r <c c'> r 
	<c c'> r <c c'> r 
	<c c'> r <c c'> r 
	c'8:16\fz des: c:\> des:
	c: b: c: bes:
% mesure 121 à 125
	aes:\p bes: aes:\> bes:
	aes: g: aes: g: \mark \default
	f4\pp r8 c'
	f4 r8 c
	f4 r8 c
% mesure 126 à 130
	f,4 r8 a
	f4 r8 bes
	f4 r8 bes
	f4 r8 c'
	f8 f r c_\cresc
% mesure 131 à 135
	f f\< r c
	f f r c
	f f r f\mf
	cis r cis8. a16
	d8_\cres r\! d8. d16
% mesure 136 à 140
	e8\< r e8. c!16
	f8 r f8. f16
	g8\f r g8. aes16
	g8 r g8. aes16
	g8_\cres r\! aes r
% mesure 141 à 145
	g r aes r
	g r g r
	g\< r g r
	c,8:16[ bes: a!: g:]
	f:[ e!: d!: c:] \mark \default
% mesure 146 à 150
	f8\ff r f''-> d
	c-> a f-> d
	d8.->[ d16 d8 d]
	d r f'-> des
	c-> aes-. f-> des-.
% mesure 151 à 155
	des r r des
	des8.\> des16 des8 des
	des\p r r des,\>
	des8. des16 des8 des
	des\! r r4 
% mesure 156 à 162
	R2*7
% mesure 163 à 165
	des'2(\pp
	bes
	aes
% mesure 166 à 170
	g)
	ges4( f
	e ees
	d des
	c c'
% mesure 171 à 175
	f,8) r r4
	r r8 bes
	f4 r
	r r8 bes
	f_\dimi r\! r bes
% mesure 176 à 180
	f r r bes
	f r r4
	r2 \mark \default \bar "||"
	\tempo "Meno mosso." a'2\pp\<(
	f)
% mesure 181 à 185
	c(\>
	d)
	c(\<
	b)
	c4(\> d
% mesure 186 à 190
	e2)
	a\pp(
	f)
	c(\<
	d)
% mesure 191 à 195
	e(\<
	gis)\>
	a\p\>(
	d)
	\tuplet 3/2 {a8\pp a a} a4(\<
% mesure 196 à 200
	a2)(\>
	a,4)\p r
	r2 \mark \default
	a'(_\mpespressivo\<
	d)
% mesure 201 à 205
	e\fz\>
	d4( a)\!
	a(\< e'~
	e d)
	c2\fz\>(~
% mesure 206 à 210
	c4 b)
	a2\p
	d4(\<-- d--)
	f( e)(\!
	e) d8( a)
% mesure 211 à 215
	a4_\cres( e'~\!
	e d)
	\tuplet 3/2 {c8(\> b a)} a4\p(
	a)_\dimi b8(\! g!)
	a2:16\pp
% mesure 216 à 220
	a:
	a:
	a: \mark \default
	\tempo "Più mosso." e8\pp^\tempoI r e r
	e,8.\fp e16 e8 r
% mesure 221 à 225
	e' r e r
	e,8. e16 e8 r
	e' r e r
	e,8. e16 e8 r
	e' r e r 
% mesure 226 à 230
	e,8. e16 e8 r
	e' r e-. e,-.
	e'8.->_\cresc e16 e8-. e,-.\<
	e'8. e16 e8 e
	f f fis fis
% mesure 231 à 235
	g-> g, g'-> g,
	g'-> g, g'-> g,
	g'-> g, g'\ff-> g, \mark \default
	f4 r8 c'\pp^\pizz
	f4 r8 c
% mesure 236 à 240
	f4 r8 c
	f4 r8 c
	f,4 r8 bes
	f4 r8 bes
	a r f c'
% mesure 241 à 245
	f4 r8 c
	f4 r8 c
	f4 r8 c
	f4 r8 a,^\arco
	gis\mf e gis e
% mesure 246 à 250
	a_\cres e\! a e
	gis\< e gis e
	a\f r <a e'> r
	<a e'> r <a e'> r
	f'-.[ c-. f-.\> c-.]
% mesure 251 à 255
	f-.[ c-. f-. c-.]
	des2\ppp(
	des)(
	des)(
	des)
% mesure 256 à 260
	bes4( ges~
	ges bes)
	des2
	des,(
	des)(
% mesure 261 à 265
	des')(
	des')
	ees,8 r r4
	r c8\fp-. bes-.
	ees, r r4
% mesure 266 à 270
	r c''8\fp( bes\>
	ees,) r\! r4
	r des'8(\fp\> c
	ees,) r\! r4
	e!8_\cres r\! \tuplet 3/2 {e e e}
% mesure 271 à 275
	e\< r \tuplet 3/2 {e e e}
	f r \tuplet 3/2 {f f f}
	bes,\! r \tuplet 3/2 {bes bes bes}
	b_\cres r\! \tuplet 3/2 {b b b}
	b r \tuplet 3/2 {b b b}
% mesure 276 à 280
	c\f([ a c,) c'-.]
	c([_\dimi a\! c,) c'-.]
	c([ a c,) c'-.]
	c([ g c,) c'-.] \mark \default
	\tempo "Meno mosso." f,2(\p
% mesure 281 à 285
	f)(
	f)(
	f)(
	f)(\<
	f)(
% mesure 286 à 290
	f)(\>
	f)
	a\pp(
	a)(
	a)(
% mesure 291 à 295
	a)(
	a)(\<
	a)
	g\fp(\>
	g)
% mesure 296 à 300
	f'4(\p e\>
	d e) \mark \default
	f\pp r
	f,8^\pizz\pp r a c
	f r r4
% mesure 301 à 305
	f8\< r c r
	a r f r
	a r c f
	bes,\fz r r4
	bes8\> r g bes
% mesure 306 à 310
	c\! r r4
	c8\p r a f
	c\> r c' r\!
	c, r c' r
	f,\p r f'^\arco f,
% mesure 311 à 315
	f r f' f,
	f r f' f,
	f r f' f,
	f_\piucresc r f' f,
	f\< r f' f,
% mesure 316 à 320
	f r f' f,
	f r f' f,
	f-.\f aes-. des,4->
	aes'-> des->\<
	aes'-> des,->
% mesure 321 à 325
	\tuplet 3/2 {c8\ff( a!) f-.} c r
	\tuplet 3/2 {c'( a!) f-.} c r
	\tuplet 3/2 {c'( a) f-.} c r
	\tuplet 3/2 {c'( a) f-.} c c' \mark \default
	f,4\ffp \tuplet 3/2 {f8\p\> f f\!}
% mesure 326 à 330
	f4 \tuplet 3/2 {f8 f f}
	f4 \tuplet 3/2 {f8 f f}
	f4 \tuplet 3/2 {f8 f f}
	f4 \tuplet 3/2 {f8 f f_\cres}
	f4 \tuplet 3/2 {f8\< f f}
% mesure 331 à 335
	f4 \tuplet 3/2 {f8 f f}
	f4 \tuplet 3/2 {f8 f f}
	des2\f->
	d!->\fz
	d4->_\piuf e!->
% mesure 336 à 340
	f-> fis->
	g-> a->
	bes-> des->
	c8\fz c, c'\fz c,
	c'8\fz c, c'\fz c,
% mesure 341 à 345
	c'8\fz c, c'\fz c,
	c'8\fz c, c'\fz c, \mark \default
	f4\ff r 
	a-> r
	d-> r
% mesure 346 à 350
	a-> r
	d-> r
	a-> r
	d-> des->
	c-> c,->
% mesure 351 à 355
	f r8 f\ff
	a4 r8 a
	d4 r8 d
	a4 r8 a
	d4 r8 d
% mesure 356 à 360
	a4 r8 a
	d4-> des->
	f8-> c c-> c,
	d'!4-> des->
	f8-> c c-> c,
% mesure 361 à 365
	d'!4-> des->
	f8->-. c-. c->-. c,-.
	f'-. c-. c-. c,-.
	f'-. c-. c-. c,-.
	f'-. c-. c-. c,-.
% mesure 366 à 370
	f'-. c-. c-. c,-.
	\tuplet 6/4 {f2.:8\<}
	\tuplet 6/4 {f2.:8}
	\tuplet 6/4 {f2.:8}
	\tuplet 6/4 {f2.:8\!}
% mesure 371 à 375
	\tuplet 3/2 {f4.:8} \tuplet 3/2 {f'4.:8\fff}
	\tuplet 6/4 {f2.:8}
	des4 r
	des r
	c r
% mesure 376 à 380
	c, r
	f8 r f''8.->\fz d16
	c8.-> a16 f8.-> d16
	f8 r f,8. f16
	f2->
% mesure 381 à 385
	f
	f\fermata \bar "|."
}
