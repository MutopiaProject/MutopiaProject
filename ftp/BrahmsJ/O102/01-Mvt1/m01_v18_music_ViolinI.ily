%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicViolinIMvtI = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	e4._\fmarc-\offset X-offset -6 ^\tutti d8 b4 r
	c4. b8 e,4 r
	\tuplet 3/2 2 {fis-. gis-. a-. gis-. a-. b-.
	a-.  b-. c-. d-. e-. f-.}
	\textLengthOn <>_\markup {(in modo d'un recit.)} R1*19^\markup {Solo-Vlc.}
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	\ni \clef bass \mmrPos #4 R1
	\mmrPos #4 R
% Bars 26 to 30
	<<\mmrPos #4 R1 {s2 \clef treble s^\tutti } >>
	\mmrPos #4 R1
	\mmrPos #4 R
	\mmrPos #-4 R
	\mmrPos #-4 R \no 
% Bars 31 to 35
	\textLengthOn <>^\markup {\center-column { \lower #1 "Solo-Viol. u." "Solo-Vlc."}} \mmrnDown R1*21 \textLengthOff
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
	\ni \mmrPos #4 R1
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-9 R
% Bars 56 to 60
	\mmrPos #-9 R \no \mark \default
	a4.\ff-\offset X-offset -6 ^\tutti g8 e4 r
	f4. e8 a,4 r
	\tuplet 3/2 {b-. c-. d-.} c4.-> a8
	g4. f8 e4. c'8
% Bars 61 to 65
	b2-> a->
	\tuplet 3/2 2 {e'2-> d4-. c( b) c-.}
	b2-> a->
	\tuplet 3/2 2 {g'2-> f4-. e( d) e-.
	d(\< c) d-. c( b) c-.
% Bars 66 to 70
	b( a) r b( a)\! r}
	a'4.\ff a,8(\< c4.\> b8)\!
	g4. e'8(\< c4.\> b8)\!
	a4. g'8( fis4. a,8)
	g4. <e e'>8( g,4. fis8)
% Bars 71 to 75
	e2->\p <bes e>->
	<aes f'!>-> <aes f'>->
	<f' aes>\< <c g'>
	<c aes'> <g' e'>\!
	c8-.\f\<\noBeam f'( aes4.\> g8)\!\noBeam f-. aes,
% Bars 76 to 80
	d!-. f,-. aes-. d,-. f-. aes,-. d-. f,-.
	<e c'>-.\sf r r c( des)-.\sf des4 des8(
	g)-.\sf g4 g8( d'-.)\sf d4 d8( \markWhiteout \mark \default
	g8)\f g4 g g g8~
	g4. fis8(\< g a\> bes a)\!
% Bars 81 to 85
	g8\< g4  g g g8~\!
	g4\sf~ \tuplet 3/2 4 {g8 e-! f-! cis-! d-! a-! f-! a-! d-!}
	bes'8 bes4 bes bes bes8~
	bes4. a8(\< bes c\> d c)\!
	bes8 bes4\< bes bes bes8~\!
% Bars 86 to 90
	bes4~\sf \tuplet 3/2 4 {bes8 gis-! a-! fis-! g!-! d-! ees-! b!-! c-!}
	a'4\sf~ \tuplet 3/2 4 {a8 fis-! g-!  cis,-! d-! a-!  bes-! fis-! g-!
	e-! f!-! gis-!  a-! b!-! c-! e-! f!-! gis-! a-! b!-! c-! }
	a'16( f c a) f'( c a f) c'( a f c) a'4_\fbenmarc( \markWhiteout \mark \default
	g8) r a4( e8) r f4(\< 
% Bars 91 to 95
	g2\> c,8)\! r a'4(
	g8) r a4( e8) r f4(\<
	f'2\> c4)\! d(
	dis-!) e4(~\sf e16 d! c bes) d4(~
	d16 c bes a) bes4(~ bes16 a g fis) g4(~
% Bars 96 to 100
	g8 fis) g4.( bes,8) a16( bes c d
	ees d c b!) c( d ees f g f ees d) ees( a c d
	ees d c a) ees( a c d ees8-.) r r4
	r ees,16( a c d ees d c a) ees( a c d
	ees8-.) r r4 r ees,,16( fis a b!
% Bars 101 to 105
	c8) r a16( c ees f! fis8) r dis16( fis a c)
	dis2\sf e8( c b a)
	gis'2\sf a8( f e d)
	g!-.[ c,-.] f-. b,-. e-.[ a,-.] a-. b,-. 
	g'-.[ c,-.] f-. b,-. e-.[ a,-.] e'-. gis,-. 
% Bars 106 to 110
	gis(\sf a b c) r a8:16 b: c:
	cis8(\sf d e f) r d8:16 e: f:
	fis8([ g)] gis( a) d( f!) e-. e,-.
	r4 d'8( f) e-. e,-. r4
	d'8( f) r4 dis8( fis) r4
% Bars 111 to 115
	e4-. r e,,-. r \mark \default 
	c8\fp-.^\solo c-. c-. d-. e-. e-. e-. c->-. 
	e-. e-. e-. f->-. e-. e-. e-. b-. 
	c-. c-. a-. a-. b-. b-. gis-. gis-. 
	a-. a-. r4 r2
% Bars 116 to 120
	a'8\fp\>-. a-. a-. gis\!-. a-. a-. a-. g->-. 
	f-. f-. f-. e->-. d-. d-. d-. e-. 
	f-. f-. d-. d-. e-. e-. cis-. cis-. 
	a a a' a a, a a' a
	dis,\p( fis e dis) g2
% Bars 121 to 125
	eis8( gis fis eis) a2
	gis8(_\crescpocoapoco b a gis) c2
	ais8( cis b ais) d2
	bis8( dis cis bis) cis( e d cis)
	d( f e d) f( a g f)
% Bars 126 to 130
	a8-.\f r r4 r r8 c,,\mf^\pizz
	b4 r a r
	<e' c' a'>\f r r r8 a\mf
	d4 r dis r
	e\p r8 f-> e4 r8 a->
% Bars 131 to 135
	a,4 r r gis
	a r r2
	R1
	a,8\mf c e gis, a c f gis,
	a\< c fis a\! a'\> fis dis a\!
% Bars 136 to 140
	g!4\p r e8 g c dis,
	e4 r g'8\f\> e cis g\!
	fis4\p a r c!
	r ees r c
	r a_\dimmarkup r c
% Bars 141 to 145
	r2 ees4 r
	r2 c4 r \mark \default
	b4 r r2
	R1*2
	
% Bars 146 to 150
	R1_\gp
	bes4 r r2
	R1
	a4_\dimmarkup r r2
	a4 r g r
% Bars 151 to 155
	R1*2
	
	e4\p r e r
	d r r2
	e4 r e r
% Bars 156 to 160
	e r \voiceOne r2 \oneVoice 
	\mmrPos #4 \ni R1
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
% Bars 161 to 165
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
	\mmrPos #4 R
% Bars 166 to 170
	\mmrPos #4 R \no
	e4\p^\pizz r e r
	d r r2
	e4 r e r
	e_\dimmarkup r e r
% Bars 171 to 175
	R1 \mark \default
	r4 b'-.\mf^\arco r g-.
	r d'-. r a-.
	r e'-. r c-.
	r g'-. r2
% Bars 176 to 180
	R1*4
	
	
	
	a,4\p^\pizz r r2
% Bars 181 to 185
	R1
	bes4 r r2
	R1
	ees4\p r r2
	d4_\dimmarkup r r2
% Bars 186 to 190
	cis4 r d r
	b r c! r
	a r r2
	R1*4
	
% Bars 191 to 195
	
	\mark \default
	g4\f r r2
	R1*2
	
% Bars 196 to 200
	r4 r8 cis'(\f^\arco d e f e)
	d8^\tutti d4 d d d8~
	d4. b8( c gis a c)
	f8 f4 f f f8~
	f4. e8( f g a g)
% Bars 201 to 205
	f8 f4 f f f8~
	f4. dis8( e cis d bes)
	e4. cis8( d gis, a f)
	dis( e) fis( g) b( c) dis( e)
	c'16( g e c) e( c g e) g( e c g) e''4(\f
% Bars 206 to 210
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'2 g4) a(
	ais-!) b\sf~( b16 a g f) a4(~
% Bars 211 to 215
	a16 g f e) f4(~ f16 e d cis) d4(~
	d8 cis8) d4.( f,8) e,16( f g a
	bes a g fis) g( a bes c d c bes a) bes( e g a
	bes a g e) bes( e g a bes8-.) r r4
	r bes,16( e g a bes a g e) bes( e g a
% Bars 216 to 220
	bes8-.) r r4 r bes,16( cis e fis
	g8-.) r e16( g bes c cis8-.) r e,16( g ais cis) \mark \default
	ais,,2\mf\trill-\offset Y-offset 2.7 ^\solo b4 r
	a!2 g4 r
	R1*4
% Bars 221 to 225
	
	
	
	g'4\f^\pizz r fis r
	e r b r
% Bars 226 to 230
	R1
	g'4 r ais, r
	R1*3
	
	
% Bars 231 to 235
	e'1\p~(^\arco
	e2 cis4) r
	R1*2
	
	e1(
% Bars 236 to 240
	eis)_\dimmarkup
	cis2( dis)~
	dis4\pp( eis cis dis
	b cis ais b 
	gis) r r2
% Bars 241 to 245
	R1 \mark \default
	fis'8_\pdolce fis4 fis8( e) e4 e8(\<
	ees2\> d4\!) r
	R1*2
	
% Bars 246 to 250
	b''!8_\pdolce b4 b8( a) a4\< a8(
	aes2\> g4)\! r
	R1*2
	
	e,!8\mf e4 e8( d) d4 d8(
% Bars 251 to 255
	cis4-!) d-! r2
	b'!8 b4 b8( a) a4 a8(
	gis4)-! a-! r e-!
	fis-! g!-! r r8 a'8-!
	bes_\crescmarkup-! c-! des-! c-! des-! ees-! f-! f,-! 
% Bars 256 to 260
	ges-! aes-! bes-! a-! bes-! c-! des-! des,16\ff[ des]
	ees8:16 f: ges: f: ees: des: ces: bes:
	<c,! a'!>8-. r q4^\pizz r <c bes'>
	<c a'> q r8 f'8:16^\arco\ff^\tutti g!: a:
	bes: c: des: c: bes: aes: ges: f:
% Bars 261 to 265
	ges: aes: bes: aes: ges: f: ees: des:
	c4\sf-! <e,! g>^\pizz^\solo r4 <f des'>
	<e g> q r2
	\tuplet 3/2 2 {d'!4\sf-.^\arco^\tutti e!-. f-. e-.\sf f-. g-.
	f_\benmarc-. g-. aes-.  bes-. c-. des~}
% Bars 266 to 270
	des ees,-. c'-. aes-.
	\tuplet 3/2 2 {des,-. ees-. f-. g-. aes-. bes~}
	bes c,-. aes'-. f-.
	des-. bes-. g-. ees-. \mark #11
	c1(\fpp^\solo
% Bars 271 to 275
	b!)~
	b~
	b(
	c)~
	c~
% Bars 276 to 280
	c(
	b)(
	d)~
	\shape #'((0 . 0)(0 . -0.5)(0 . 0)(0 . 0)) Slur d2(~ d4.-\tweak extra-offset #'(0.5 . 2.8) _\dimmarkup e8
	cis4. d8 b4. c8
% Bars 281 to 285
	a1)
	a_\crescmolto
	c!
	a2. d4\f-!
	e-! r8 d-! e4-! r8 d'-!
% Bars 286 to 290
	<a e'>4-!_\crescmarkup r q-! r
	<a f'>-! r <a fis'>-! r
	<d, b' g'>-! r r2
	<d b' gis'>4-! r r2 \mark \default
	a'''4.\ff-\offset X-offset -5.7 ^\tutti g8 e4 r
% Bars 291 to 295
	f4. e8 a,4 r
	\tuplet 3/2 {b-. c-. d-.} c4. a8
	g4. f8 e4. c'8
	b2 a
	\tuplet 3/2 2 {e'2-> d4-. c( b) c-.}
% Bars 296 to 300
	b2 a
	\tuplet 3/2 2 {g'2-> f4-. e( d) e-.
	c( a) f-. d( b) g-.
	f( e) r e( d) r}
	b2\p^\solo b
% Bars 301 to 305
	c c
	c4( a') d,( b')
	c,2( fis)\<
	\hairpinShorten #'(0 . 2) e1\>
	a,4\! r r2
% Bars 306 to 310
	R1
	a8\mf^\pizz c e gis, a4 r
	aes8\< c f aes\! a4\f r
	g8\p bes d fis, g4 r
	ges8 bes ees ges g4 r
% Bars 311 to 315
	f,!8\< a! c f\! a4\fp fis
	r dis r a \bar "||" \key a \major \mark \default
	gis4 r r2
	R1*2
	
% Bars 316 to 320
	R1_\gp
	<a, g'>4\p r r2
	R1
	<a fis'>4 r r2
	<a fis'>4 r <gis! e'> r
% Bars 321 to 325
	R1*2
	
	b'4\p r b r
	a2(_\dolce^\arco gis4) r
	b^\pizz r b r
% Bars 326 to 330
	dis,(^\arco fis! a e)
	r cis-.( r cis-.)
	r d-.( r fis-.)
	r b,-.( r dis-.)
	r fis2(\sf\> bis,4)
% Bars 331 to 335
	cis1\pp(
	d)(
	cis)(
	a)_\dimD\>~
	a~
% Bars 336 to 340
	a2.\! r4
	b'\p^\pizz r b r
	a2(^\arco gis4) r
	b^\pizz r b r
	dis,2(^\arco\pp fis
% Bars 341 to 345
	e4) r r2 \mark \default
	r4 bis'\mf-. r cis-.
	r fis,-. r fis-.
	r cis'-. r a-.
	r e'-. r2
% Bars 346 to 350
	R1*4
	
	
	
	fis,4\p^\pizz r r2
% Bars 351 to 355
	R1
	g4 r r2
	R1
	c4\p r r2
	b4_\dimmarkup r r2
% Bars 356 to 360
	ais4 r b r
	gis r a! r
	fis r r2
	r r4 cis'!_\pmarc
	r a r cis,
% Bars 361 to 365
	r r8 cis'8 r cis r a\<
	r a r cis, r cis\! r4
	e4^\marc\f r r2
	R1*2
	
% Bars 366 to 370
	r4 r8 ais'8\f^\arco( b cis d cis) \mark \default
	b8^\tutti b4 b\< b b8~\!
	b4\sf~ \tuplet 3/2 4 {b8 gis-! a-! eis-! fis-! cis-! a-! cis-! fis-! }
	d'8 d4 d d d8~
	d4. cis8( d e fis e)
% Bars 371 to 375
	d8\< d4 d d d8\!
	d4~\sf \tuplet 3/2 4 {d8 bis-! cis-! ais-! b-! fis-!  g-! dis-! e-! }
	cis'4\sf~ \tuplet 3/2 4 {cis8 ais-! b-!  eis,-! fis-! cis-! d!-! ais-! b-!
	gis-! a!-! bis-!  cis-! dis-! e-! gis-! a!-! bis-!  cis-! dis-! e-!}
	a16( e cis a) e'( cis a e) a( e cis a) cis'4(_\fbenmarc
% Bars 376 to 380
	b8) r cis4( gis8) r a4(\<
	b2\> e,8)\! r cis'4(
	b8) r cis4( gis8) r a4(\<
	a'2\> e4)\! fis(
	fisis)-! gis\sf(~ gis16 fis e d) fis4(~
% Bars 381 to 385
	fis16 e d cis) d4(~ d16 cis b ais) b4(~
	b8 ais) b4.( d,8) cis16( d e fis
	g fis e dis) e( fis g a b a g fis) g( cis e fis
	g fis e cis) g( cis e fis g8)-. r r4
	r f,16( b d e f e d b) f( b d e
% Bars 386 to 390
	f8-.) r r4 r cis,,!16( e a cis
	e8-.) r a,16( c e a c8-.) r e,16( a c e) \bar "||" \key a \minor \mark \default
	a4.\ff g8 e4 r8 dis-.
	e( c b) a-.\noBeam g( e d) c-.\noBeam
	f'4. e8 a,4 r8 gis-.
% Bars 391 to 395
	a8( f e) d-.\noBeam c( a g) f-.\noBeam
	e8_\sempref e4 e e e8~
	e\noBeam e''( d b) c( b e,) a(\noBeam
	g c,) f( e a,) d( c f,)
	b( f) a( e) a( d,) gis( d)
% Bars 396 to 400
	c\fp-.^\solo c-. c-. d-. e-. e-. e-. c->-. 
	e-. e-. e-. f->-. e-. e-. e-. b-. 
	c c a a b b gis gis
	a\> a r4 d8 d\! r4
	c4 r r2
% Bars 401 to 405
	R1
	r4 ees(\pp des2)
	r4 f( ees2)
	r4 aes(_\crescpocoapoco ges2)
	r4 bes( aes2)
% Bars 406 to 410
	r4 d( dis) dis~
	dis dis( e) e~
	e_\crescmarkup e( f) a,~
	a b2 f'4(
	e\mf) e( d) d(
% Bars 411 to 415
	c) c( bes) bes(
	e,2.\fp) f4(
	e2.)_\dimmarkup d4(
	\hairpinShorten #'(0 . -2) c\p\> des2.)\!
	c4(\pp cis2) r4
% Bars 416 to 420
	d8\f d4 d d d8(
	b4-!) c-! r2
	cis4-! d-! r2
	c!4-.\f r r a\p^\pizz
	c\< e a\! <e' c'>\f
% Bars 421 to 425
	<dis b'> <e c'> <c gis'> <c a'>
	<b b'> <b b'> <<{e} \\ {e}>> <e c'>
	<dis b'> <e c'> <c gis'> <c a'>
	<a a''> q e'' a,
	<a, a''> q e'' a,,
% Bars 426 to 430
	a' r a r
	e r e r
	a,^\arco-. r8 e'-. a,4-. r8 e''-.
	a,4-. r d-. f-.
	a-. r <e,, c' a'>-. r
% Bar 431
	a,1\fermata \bar "|."
}
