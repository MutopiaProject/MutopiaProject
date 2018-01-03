%#######################################################################
%#               M O U V E M E N T   4   -   V O I X   1               #
%#######################################################################
MvtQuatreVoixUne = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	R2*4
	c''8.->\fp d16-. f8-. d-.
% mesure 6 à 10
	c-. a-. f-. d-.
	d8.->\fp d16 d8 d
	d[ d d] c'
	c8.->\fp d16-. f8-. d-.
	c-. a-. f-. d-.
% mesure 11 à 15
	d8.\fp[ d16-. d8-. d-.]
	d-.[ d-. d-.] c'-.
	c8.->\fp d16-. f8-. d-.
	c-._\cres a-.\! f-. d-.
	c'8.-> d16-. f8-.\< d-.
% mesure 16 à 20
	c-. a-. f-. d-.
	c'8.-> d16-. f8-. d-.
	c8.->\mf d16-. f8-. d-.
	c8.->\< d16-. f8-. d-.
	f8\!-> d f d
% mesure 21 à 25
	f->\fz c bes g
	f'->\fz c bes g
	f'->\fz c bes g
	f'->\fz c bes g \mark \default
	f4 r 
% mesure 26 à 30
	R2*3
	a'4\p->(\upbow c8) r
	r2
% mesure 31 à 35
	a4\p->(\upbow c8) r
	r2
	r4 c8.\fz\>( d16\!
	c8)[ a-.\pp f-. d-.]
	c-. a-. c4->(
% mesure 36 à 40
	a8) r r f'(\<
	g\!)-> f-. d4\fz\>(
	d8) c\pp( bes f')
	c4( a8) r
	r4 c'8.\fz\>( d16
% mesure 41 à 45
	c8)[ a-.\pp f-. d-.]
	c-. a-. c4->(
	a) r8 f'(\<
	e8.\fz) f16-. e8-.\< b-.
	e8.\fz f16-. e8-. c-.
% mesure 46 à 50
	e8.\fz f16-. e8-. b-. \mark \default
	a\ff-. e-. a-. e-.
	a-. e-. a-. e-.
	a r r4
	r2
% mesure 51 à 55
	r4 c'8.\pp( d16
	c8) a-. f-. d-.
	c-. a-. c4\fp->(\>
	a) r8\! f'(
	g) f-. d4(
% mesure 56 à 60
	d8)[ c( bes f')]
	c4( a8) r
	r4 c'8.\fz\>( d16
	c8\p) a-. f-. d-.
	c-.\< a-. c4(\!
% mesure 61 à 65
	a)\< r8 a'
	g8.\mf a16 g8 d
	g8.\cres a16\! g8 e
	g8. a16 g8 d \mark \default
	c->\ff g c-> g
% mesure 66 à 70
	c-> g c-> g
	c r8 r4
	r2
	aes'2~(_\ppdolce\<
	aes4 f)\!
% mesure 71 à 75
	ees( c~\>
	c\! ees)(
	ees\<)( f
	f8[ ees <f des'>-. r16 <ees c'>-.)\!]
	<ees c'>2(\>
% mesure 76 à 80
	<ees c'>8) r8\! c'4(~
	c g)(
	g8)[ f( ees c)]
	g'2(
	g4) g
% mesure 81 à 85
	c(\< ees~
	ees c)
	bes\>( f~
	f) \tuplet 3/2 {f8( g aes)\!}
	bes2(
% mesure 86 à 90
	bes8) r ees,4\pp
	aes2(~\<
	aes4 f)\!
	ees( c~
	c8) r ees4\pp\<
% mesure 91 à 96
	<ees c'>2(~
	<ees c'>4 <c aes'>)
	<ees g>( <des f>~\!
	<des f> <des f>)\mf
	% ligne suivante compte pour 2 mesures
	<<{aes'4( ees4~ ees8[_\dimi c\! ees c])}\\{c4 ees,4( ees2)}>>
% mesure 97 à 100
	<ees ees'>8-.\> aes-. <ees c'>4~(
	<ees c'> <des bes'>\! \mark \default
	<c aes'>8-.) r ees8.->\pp f16-. 
	ees8-. r ees8.-> f16-.
% mesure 101 à 105
	ees8-. r ees8.-> f16-.
	ees8-. r ees8.-> f16
	g8.( aes16 g8) d-.
	g8.( aes16 g8) d-.
	g8.( aes16 g8) d-.
% mesure 106 à 110
	g8.( aes16 g8) d-.
	des2(
	des)(
	des)(
	des) \mark \default
% mesure 111 à 115
	f16( g f c) f( g f c)
	aes'(\cres bes aes f\!) aes(\< bes aes f)
	c'( des c aes) c( des c aes)
	f'( g f c) aes'( bes aes f)
	<g, e'! c'>8\f r <aes f' c'> r
% mesure 116 à 119
	<g e'! c'> r <aes f' c'> r
	<g e'! c'> r <aes f' c'> r
	<g e'! c'> r <aes f' c'> r
	<g e' c'> r r4
% mesure 120 à 125
	R2*3 \mark \default
	r4 c'8.\pp( d16
	c8)[ a-. f-. d-.]
	c-. a-. c4->(
% mesure 126 à 130
	a) r8 f'(
	g) f-. d4(
	d8) c( bes f')
	c4\>( a8\!) r	
	r4 c'8.\cresc( d16
% mesure 131 à 135
	c8)\<[ a-. f-. d-.]
	c-. a-. c4->(
	a)\! r8 f'(\mf
	e4.) g8\<(
	f4.) a8(
% mesure 136 à 140
	g4.) bes8(
	aes4.) c8(
	<ees, b'>4.)\f <ees c'>8
	<ees b'>4.-> <ees c'>8
	<ees b'> r <ees c'>\cres r\!
% mesure 141 à 145
	<ees b'> r <ees c'> r
	<c c'>\< r <c c'> r
	<c c'> r <c c'>\! r
	c'8:16\<[ d!: e!: f:]
	g:[ a: bes: c:\!] \mark \default
% mesure 146 à 150
	f,8-. r f->\ff d-.
	c-> a-. f-> d-.
	d8.->[ d16 d8 d-.]
	d r f'-> des-.
	c-> aes-. f-> des-.
% mesure 151 à 155
	des8.-> des16 des8 des
	des_\dimi r\! r des,
	des8.\p des16 des8\> des
	des\! r r4
	des2\pp( 
% mesure 156 à 160
	f
	ges
	f)
	aes(~
	aes~
% mesure 161 à 165
	aes4 ges~
	ges f)
	des2(
	ges~
	ges
% mesure 166 à 170
	g!)
	aes4( a~
	a2)
	bes4( b
	d4. c8
% mesure 171 à 175
	f,) r f'8.\fp-> d16
	c8-. a-. f-. d-.
	f-. r r4
	r r8 f_\dimi
	a\! r r f
% mesure 176 à 180
	a r r f
	a r a r
	a r a r \mark \default \bar "||"
	\tempo "Meno mosso." a2\pp\<(
	d)
% mesure 181 à 185
	e\>(
	d4\! a)
	a(\< e'~
	e d)
	c2~(\>
% mesure 186 à 190
	c4 b)
	a2\pp(
	d4-- d--)
	f( e~\<
	e d8 a)
% mesure 191 à 195
	a4\< e'(~
	e\> d)\!
	\tuplet 3/2 {c8( b a} a4\p)~
	a\> b8 g!
	a2\pp
% mesure 196 à 200
	\tuplet 3/2 {a8\< a a} a4\>(
	a) r\!
	r2 \mark \default
	a8_\ppleggiero-.[ c-. e-. a->(]
	a)[ f-. e-. d-.]
% mesure 201 à 205
	a'8.-> a,16-. a8-. a(
	a)[ b(-. c-. d-.)]
	c-.(\<[ d-. c-. d-.)]
	e-.(\>[ f!-. fis-. gis-.)]
	a8.->\fz e16-. e8-. e-.
% mesure 206 à 210
	e-.\> f-. d-. e-.
	c\p-.[ a-. c-. a'(]
	a\<)[ a,-. d-. a'-.\!]
	dis,-.[ a-._\cresc e'-. a(]
	a) a,16( b c8) d-.
% mesure 211 à 215
	c-. c16( d c8) c16( d
	e8)[ f!-. fis-. gis-.]
	a8.\fz-> e16\> e8-. e-.
	f8._\dimi d16\! d8 b
	c4\pp( b
% mesure 216 à 220
	d! c)
	<c e>2(
	<c e>) \mark \default
	\tempo "Più mosso." e,8^\tempoI r b'8.\fp c16-.
	b8-. gis-. gis-. e-.
% mesure 221 à 225
	e-. r b'8.\fp-> c16-.
	b8-. gis-. gis-. e-.
	e-. r c'8.-.\fp d16->
	c8-. a-. a-. e-.
	e-. r c'8.\fp-> d16-.
% mesure 226 à 230
	c8-. a-. a-. e-.
	e-. r d'8.\fz e16_\cresc
	d8 e, d'8.\fz e16
	d8 e, d'8.\fz e16
	d8.\f e16^\moltocresc d8. e16
% mesure 231 à 235
	d8._\fz e16\< d8. e16
	d8.^\fzmarkup e16 d8. e16
	d8.^\fzmarkup e16 d8. e16 \mark \default
	f8-.\ff r c'8.\fpp( d16
	c8)\> a-. f-. d-.\! 
% mesure 236 à 240
	c-. a-. c4->(
	a) r8 f'(\<
	g) f-. d4\>(
	d8)[ c(\! bes f')]
	c4( a8) r
% mesure 241 à 245
	r4 c'8.( d16
	c8)[ a-. f-. d-.]
	c-. a-. c4->(
	a) r8 f'
	e8.->\mf f16 e8 b
% mesure 246 à 250
	e8.\fz f16_\cresc e8 c
	e8.\< f16 e8 b
	a8\f-. e-. a-. e-.
	a e a e
	a2\>(
% mesure 251 à 255
	a)(\!
	aes8) r aes'8.\ppp( bes16
	aes8)[ f-. des-. bes-.]
	aes-. f-. aes4->(
	f) r8 des'\<(
% mesure 256 à 260
	ees) des-. bes4\>(
	bes8)[ aes(\! ges des')]
	aes4( f8) r
	r4 aes'8.( bes16
	aes8) f-.[ des-. bes-.]
% mesure 261 à 265
	aes-. f-. aes4(
	f) r8 des'(
	c) bes-. ges4(
	ges8) f-. ees4(~
	ees8[ bes' ees,)] bes'\<(
% mesure 266 à 270
	c)\fz bes-. ges4(
	ges) r8 bes8(\<
	des\fz) c-. ges4(
	ges) r8 des'8(\fp
	cis)\>[ a!\! g!] cis\fz(
% mesure 271 à 275
	cis)\>[ a\!^\crescmarkup g] cis(\<
	e!\fz[ d!) a!-.] d(\<
	e\fz[ d) g,-.] e'(\<
	f!\fz[ d) g,-.] e'(\<
	f\fz[ d) gis,] f'\f\((
% mesure 276 à 280
	g!4) f!\)
	d_\dimi( c!)\!
	a\>( f!)
	d( e)\! \mark \default
	f2_\pespressivo(^\sulG
% mesure 281 à 285
	f4) d
	c( a~
	a c)
	c( d~
	d8[ c) bes' r16 a]
% mesure 286 à 290
	\set doubleSlurs = ##t <f a>2(
	<f a>8) r a4 \set doubleSlurs = ##f
	a\pp( e~
	e8)[ d( c a)]
	e'2(
% mesure 291 à 295
	e4) e
	a\<( c~
	c a)
	g\fz( d~
	d) \tuplet 3/2 {d8( e) f-.}
% mesure 296 à 300
	g2\p(\>
	g8) r\! g'4 \mark \default
	f2_\ppespressivo\<(~
	f4 d)\!
	c( a~
% mesure 301 à 305
	a) c(\<
	<c a'>2\!)(
	<c a'>4) <d f>4(\<
	<c e>\mf <bes d>~
	<bes d>) <bes d>_\dimi(
% mesure 306 à 310
	<a f'>\! <a c>\>)~
	<a c>8\! <<{a8[ d a(] c)}\\{f,4.( a8\p)}>>
	f8(\> <c a'>4~
	<c a'>\!_\dimi <bes g'>)\!
	<a f'>8 r8 c'8.\fp\upbow d16
% mesure 311 à 315
	c8.-> a16 f8-. d-.
	c-. r c'8.\fp\upbow d16
	c8-.\> a-. f-. d-.\!
	c-. r des'8.\fp\upbow ees16
	des8-._\piucresc aes-. f-. ees-.
% mesure 316 à 320
	des r des'8.\upbow ees16
	des8-. aes-. des8.-> ees16
	des8-. aes-. f'8.\f ges16(
	f8.) ges16( f8.)\< ges16(
	f8.) ges16( f8.) g16
% mesure 321 à 325
	a!8:16\ff[ bes: c: f,:]
	a!:[ bes: c: f,:]
	a!:[ bes: c: f,:]
	a!:[ bes: c: e,:] \mark \default
	\tuplet 3/2 {f8\ffp\>( f') f-.} f4->\p
% mesure 326 à 330
	\tuplet 3/2 {f,8( f') f-.} f4->
	\tuplet 3/2 {f,8( f') f-.} f4->
	\tuplet 3/2 {f,8( f') f-.} f4->
	\tuplet 3/2 {f,8(_\cres f')\! f-.} f4->
	\tuplet 3/2 {f,8(\< f') f-.} f4->
% mesure 331 à 335
	\tuplet 3/2 {f,8( f') f-.} f4->
	\tuplet 3/2 {f,8( f') f-.} f4->
	\tuplet 3/2 {f,8\f( f') f-.} \tuplet 3/2 {f( f,) f-.}
	\tuplet 3/2 {f8\f( f') f-.} \tuplet 3/2 {f( f,) f-.}
	\tuplet 3/2 {f8_\piuf( f') f-.} \tuplet 3/2 {f( e!) e-.}
% mesure 336 à 340
	\tuplet 3/2 {e8( ees) ees-.} \tuplet 3/2 {ees( d) d-.}
	\tuplet 3/2 {ees8( d) d-.} \tuplet 3/2 {ees( d) d-.}
	\tuplet 3/2 {des8( c) c-.} \tuplet 3/2 {c( bes) bes-.}
	\tuplet 3/2 {bes8( a) a-.} \tuplet 3/2 {bes( a) a-.}
	\tuplet 3/2 {bes8( a) a-.} \tuplet 3/2 {bes( a) a-.}
% mesure 341 à 345
	\tuplet 3/2 {bes8( a) a-.} \tuplet 3/2 {bes( a) a-.}
	\tuplet 3/2 {bes8( a) a-.} \tuplet 3/2 {aes( g) g-.} \mark \default
	f4 f'8.--\ff g16
	f8.-- c16 a!8.-- g16
	f4 f'8.-- g16
% mesure 346 à 350
	f8.-- c16 a8.-- g16
	f4 f'8.-- g16
	f8.-- c16 a8.-- g16
	f4-> g->
	a-> c->
% mesure 351 à 355
	f,8 r <f, c' a'>4\arpeggio\ff
	r <a f' c'>\arpeggio
	r <d, d' d'>\arpeggio
	r <a' f' c'>\arpeggio
	r <d, d' d'>\arpeggio
% mesure 356 à 360
	r <a' f' c'>\arpeggio
	\tuplet 3/2 {a'4.:8->} \tuplet 3/2 {bes4.:8->}
	\tuplet 3/2 {c4.:8->} \tuplet 3/2 {g4.:8->}
	\tuplet 3/2 {a4.:8->} \tuplet 3/2 {bes4.:8->}
	\tuplet 3/2 {c4.:8->} \tuplet 3/2 {g4.:8->}
% mesure 361 à 365
	\tuplet 3/2 {a4.:8->} \tuplet 3/2 {bes4.:8->}
	\tuplet 3/2 {c4.:8->} \tuplet 3/2 {g4.:8->}
	\tuplet 3/2 {a8( c) c-.} \tuplet 3/2 {c( g) g-.}
	\tuplet 3/2 {a8( c) c-.} \tuplet 3/2 {c( g) g-.}
	\tuplet 3/2 {a8( c) c-.} \tuplet 3/2 {c( g) g-.}
% mesure 366 à 370
	\tuplet 3/2 {a8( c) c-.} \tuplet 3/2 {c( g) g-.}
	\tuplet 3/2 {f!\< f f} \tuplet 3/2 {f( fis) fis-.}
	\tuplet 3/2 {fis( g) g-.\!} \tuplet 3/2 {g( aes) aes-.}
	\tuplet 3/2 {gis\<( a!) a-.} \tuplet 3/2 {a( bes) bes-.}
	\tuplet 3/2 {bes( b) b-.} \tuplet 3/2 {b( c) c-.}
% mesure 371 à 375
	\tuplet 3/2 {c( des) des-.} \tuplet 3/2 {des\fff des des}
	\tuplet 3/2 {des4.:8} \tuplet 3/2 {des4.:8}
	f4 r
	<b,, b'> r
	<c c'> r
% mesure 376 à 380
	<g bes e> r
	<a f'>8 r f'8.->\fz d16
	c8.-> a16 f8.-> d16
	f8 r <a f'>8. <a f'>16
	<a f'>2->
% mesure 381 à 385
	<f a>
	<f a>\fermata \bar "|."
}
