%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIMvtI = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\markEO #'(0 . 1) e4._\fmarc d8 b4 r
	c4. b8 e,4 r
	\tupletUp \tuplet 3/2 2 {fis4-. gis-. a-. gis-. a-. b-. 
	a-. b-. c-.  d-. e-. f-. } \tupletNeutral
	R1^\fermata
% Bars 6 to 10
	R1*22
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	r2 r4 cis(\pdolceD
	b) cis( gis) a\<(
	a'2\> e4)\! r
% Bars 31 to 35
	R1\fermata
	R1*25
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
% Bars 56 to 60
	\mark \default
	\dynEO #'(0 . 2) a4.\ff g8 e4 r
	f4. e8 c4 r
	\tupletUp \aIIXoffset #-3 \tuplet 3/2 {b-. c-. d-.} c4.-> a8
	g4. f8 e4. c'8
% Bars 61 to 65
	b2-> a->
	e'2.-> \partCombineApart c4
	b2-> a-> \partCombineAutomatic
	g'2.-> g4
	\tuplet 3/2 2 {\tupletOffset #6 a2 f4 \tupletOffset #6 g2 e4} \tupletNeutral
% Bars 66 to 70
	f2 e
	\dynEO #'(0 . 2) dis\ff-> dis->
	e-> e->
	e fis
	b, a
% Bars 71 to 75
	g4-.\p r r2
	R1 
	r4 r8 \aIIXoffset #-4 bes\p\<( des4. c8)
	r4 r8 f( des4. c8)\! 
	r4 f2->\f aes4-.
% Bars 76 to 80
	d,!4-! r aes-! r
	c-! r r2
	R1 \mark \default
	e8\f e4 e8( d) d4 d8^(
	des4-.) c-. r2
% Bars 81 to 85
	e8 e4 e8^( d) d4 d8(
	cis4) \once \partCombineApart a-. r2
	g'8 g4 g8( f) f4 f8^(
	f4-.) e-. r2
	g8 g4 g8( f) f4 f8(
% Bars 86 to 90
	ees4)-! ees-! r2
	c4-! c-! r bes-!
	r a-! r2
	r r4 a(\f \markWhiteout \mark \default
	g8) r a4( e8) r f4(
% Bars 91 to 95
	g2 c,4) a'4(
	g8) r a4( e8) r f4(\<
	f'2\> c4)\! d(
	dis)-. \dynEO #'(0 . 2) e(~\sf e16 d c bes) d4(~
	d16 c bes a) bes4(~ bes16 a g fis) g4(~
% Bars 96 to 100
	g8 fis) g4.( fis'8) \dynEO #'(0 . 2) g4(\f~
	g16 f! ees d) ees4(~ ees16 d c b!) c4~
	c c~ c8-. r r4
	r c2 c4~
	c8-. r r4 r2
% Bars 101 to 105
	R1
	\dynEO #'(0 . 2) dis2^(\sf e4-.) r
	\dynEO #'(0 . 2) gis2^(\sf a4-.) r
	r2 r4 \partCombineChords a
	g! f \once \partCombineApart e2 \partCombineAutomatic
% Bars 106 to 110
	r2 gis,8(\sf\> a b c)\!
	r2 cis8(\sf\> d e f)\!
	\partCombineApart R1
	e,16( gis b cis d8-.) r r4 e,16( gis b cis
	d8-.) r r4 \partCombineAutomatic a,16( c! dis fis a c dis fis)
% Bars 111 to 115
	\afterGrace gis1\trill( {fis16[ gis]) } \mark \default
	\once \partCombineApart a4-. r r2
	R1*11
% Bars 116 to 120
	
% Bars 121 to 125
	
	
	
	bis,2(_\pcresc cis
	d f!)
% Bars 126 to 130
	e8-.\f r r4 r2
	R1*5
% Bars 131 to 135
	
	\partCombineApart r4 e,-.\p r f-.\< \partCombineAutomatic
	r fis-. gis-.\sf r
	\partCombineApart r e-. r f-._\< \partCombineAutomatic
	r fis-.\! \once \partCombineChords dis'^._\sf r
% Bars 136 to 140
	r b-. r c-.\<
	r cis-. g'-.\sf r
	R1*2
	
	c,2\pp( ees_\dimmarkup
% Bars 141 to 145
	g1
	fis \once \override Score.RehearsalMark.X-offset = #0 \mark \default
	g4) r r2
	R1*2
	
% Bars 146 to 150
	R1^\gp
	\partCombineApart bes,,1~
	bes(
	a)(
	d) \partCombineAutomatic
% Bars 151 to 155
	R1*15
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	r2 r4 e~_\pdolce
	e8 r e4~ e8 r d4~
	d4. r8 r4 e~
	e8 r e4~ e8 r \partCombineChords e4~
	e1~
% Bars 171 to 175
	e4\! \partCombineAutomatic r r2 \mark \default
	r r4 c'\f(
	cis)-. d2( a4)
	r2 r4 f'(
	fis-.) g4(~ g16 f e d) a'4\fp(~
% Bars 176 to 180
	a8 e) f4.( cis8) d4~
	d c!2(\> b4)\!
	R1*5
% Bars 181 to 185
	
	
	r2 e\pp(
	ees1
	d
% Bars 186 to 190
	cis2 d
	b c!)
	a1_\dimmarkup~
	a4 r r2
	R1*3
% Bars 191 to 195
	
	\mark \default
	R1*2
	
	b8-\tweak X-offset #-1 \f-. b4 b8( a) a4 a8\<(
% Bars 196 to 200
	aes2\>)( g4)\! r
	b8 b4 b8( a!) a4 a8(
	gis4)-. e-. r2
	d'8 d4 d8( c) c4 c8~
	c4-. b-. r2
% Bars 201 to 205
	d8 d4 d8( c) c4 c8\(
	d4-.\) g-. r2
	e4-. g-. r f-.
	r e-. r2
	r r4 e\(
% Bars 206 to 210
	d8\) r e4\( b8\) r c4\(
	d2 g,4\) e'\(
	d8\) r e4\( b8\) r c4(
	c'2 g4) e(
	g-.) f2-> f4~
% Bars 211 to 215
	f f2 f4(~ 
	f8 e) f4.( cis8) \partCombineApart \once \stemDown d4(~
	d16 c! bes a) \partCombineAutomatic bes4\(~ bes16 a g fis\) g4~
	g e'~ e8-. r r4
	r e2 e4~
% Bars 216 to 220
	e8-. r r4 r2
	R1 \mark \default
	R1*16
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	
	
	
	r2 r8 d(\p cis b)
	R1
% Bars 236 to 240
	 r2 r8 b(_\dimmarkup ais gis)
	r cis( b ais) r dis( cis b)
	R1*4
% Bars 241 to 245
	\mark \default
	\partCombineApart c,!1~
	c4  r8 gis'-.^\marc a-. b-. c!-. r \partCombineAutomatic
	R1*3
	
% Bars 246 to 250
	
	r4 r8 cis-. d-. e-. f!-. r
	R1*4
	
	
% Bars 251 to 255
	
	r2 r4 r8 cis\f-.
	d-. e-. f-. r r4 r8 b,-.
	c!-. d-. ees-. r r2
	R1*3
% Bars 256 to 260
	
	
	\markEO #'(-2.5 . 2) f4._\ffmarc-> ees8 c4 r
	des4.-> c8 f,4 r
	des'2( bes)
% Bars 261 to 265
	bes( ges)
	\markEO #'(-2 . 2) c4._\ffmarc bes8 g!4 r
	aes4. g8 c,4 r
	\tuplet 3/2 2 {d!4-. e-. f-. e-. f-. g-.
	f-. g-. aes-. bes-. c-. des-.~}
% Bars 266 to 270
	des ees,-. c'-. aes-.
	\tuplet 3/2 2 {des,-. ees-. f-. g-. aes-. bes-.~}
	bes c,-. aes'-. f-.
	des-. r r2 \mark #11
	R1*9
% Bars 271 to 275
	
% Bars 276 to 280
	
	
	
	r4 r8 cis'8\p\<( d e\> fis)\! r
	r cis(_\dimmarkup e) r r b( d) r
% Bars 281 to 285
	r a( c!) fis,( a) dis,( fis) r
	\once \partCombineApart e4-! r r2
	R1*3
	
	
% Bars 286 to 290
	\dynEO #'(0 . 2) a'4-!\ff r e-! r
	f-! r fis-! r
	g-! r r2
	gis4-! r r2 \once \override Score.RehearsalMark.X-offset = #-4 \mark \default
	\dynEO #'(0 . 2) a4.\ff g!8 e4 r
% Bars 291 to 295
	f4. e8 \once \partCombineApart a,4 r
	\once \override CombineTextScript.X-offset = #-3.5 \tuplet 3/2 {b-. c-. d-.} c4.-> a8
	g4. f8 e4. c'8
	b2 a
	e'2. \partCombineApart c4
% Bars 296 to 300
	b2 a \partCombineAutomatic
	g'2. r4
	R1*7
% Bars 301 to 305
	
	
	
	
	\partCombineApart r4 e,-. -\tweak X-offset #-1 \p r f-. \once \partCombineAutomatic
% Bars 306 to 310
	r  fis-. gis-. \once \partCombineAutomatic r
	r e-.-\tweak X-offset #-1 \p r f-.  
	\partCombineAutomatic r f-.\< a-.\sf r \partCombineApart
	 r d,-.-\tweak X-offset #-1 \p r ees-.  
	\once \partCombineAutomatic r ees-. \once \stemDown bes'-. \partCombineAutomatic r
% Bars 311 to 315
	r \once \partCombineApart a-. dis2\fp\>~
	dis4\! r r2 \bar "||" \key a \major \mark \default
	R1*3
	
	
% Bars 316 to 320
	R1^\gp
	\aIIXoffset #-3 cis4._\espressivo(_\pdolce b8 e,2)
	r4 r8 cis'8( b4._\< e,8\!
	cis'4._\> b8 fis4. cis'8
	b4. fis8 b4.\! gis8
% Bars 321 to 325
	e4) r r2
	R1*20
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	
% Bars 341 to 345
	\mark \default
	r2 r4 \once \override CombineTextScript.X-offset = #-4 a\f\(
	ais-.\) b2\( fis4\)
	r2 r4 d'\(
	dis\)-. e4\(~ e16 d cis b\) fis'4\fp(~
% Bars 346 to 350
	fis8 cis) d4.( ais8) b4~
	b a!2(\> gis4)\!
	R1*5
% Bars 351 to 355
	
	
	r2 \partCombineChords cis(
	c1
	b
% Bars 356 to 360
	ais2 b
	gis a!
	fis1)~_\dimmarkup
	fis4 \partCombineAutomatic r r2
	R1*5
% Bars 361 to 365
	
	
	
	
	gis8-.\f gis4 gis8\( fis\) fis4 \partCombineUnisono fis8\((\<
% Bars 366 to 370
	f2)\> e4\)\! \partCombineAutomatic r \mark \default
	gis8 gis4 gis8\( fis!\) fis4  fis8\(
	eis4-.\) cis-. r2
	b'8 b4 b8\( a\) a4 a8~
	a4-. gis-. r2
% Bars 371 to 375
	gis'8 gis4 gis8( fis) fis4 fis8(
	b,4)-. e-. r2
	g,4-. cis-. r fis,-.
	r a-. r2
	r2 r4 cis\(
% Bars 376 to 380
	b8\) r cis4\( gis8\) r a4\(
	b2 e,4\) cis'\(
	b8\) r cis4\( gis8\) r a4\(
	a'2 e4\) cis(
	e-.) d2-> d4~
% Bars 381 to 385
	d d2 d4~(
	d8 cis) d4.( ais'8) \partCombineApart \once \stemDown b4(~
	b16 a! g fis) \partCombineAutomatic g4\(~ g16 fis e dis\) \once \stemDown  e4~
	\once \stemDown e  e~ e8-. r r4
	r f2 f4~
% Bars 386 to 390
	f8-. r r4 r2
	R1 \bar "||" \key a \minor \mark \default
	\aIIXoffset #-5 \dynEO #'(0 . 2) dis2\ff\trill e8\( c b a\)
	g4 r8 dis'-. e4-. r
	\once \override CombineTextScript.X-offset = #-4.5 gis2\trill a8\( f e d\)
% Bars 391 to 395
	c4 r8 gis'-. a4-. r
	R1
	e8\f e4 e e e8~
	e e4 e e e8~
	e4 e-. r2
% Bars 396 to 400
	R1*6
% Bars 401 to 405
	
	c,2(-\tweak X-offset #-3 \pp des
	d! ees)
	f( ges
	g! aes)~
% Bars 406 to 410
	aes_\crescmarkup a~
	a bes~
	bes a~
	a f'
	e4-.\f r r2
% Bars 411 to 415
	R1*9
% Bars 416 to 420
	
	
	
	
	r2 r4 c-.\f
% Bars 421 to 425
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-. 
	b-. c-. gis-. a-. 
	a'-. a-. \partCombineApart e-. a,-. \partCombineAutomatic
	a'-. a-. \partCombineApart e-. a,-. \partCombineAutomatic 
% Bars 426 to 430
	a'2 a
	\once \partCombineApart e  e
	\once \partCombineApart a,4-. r \once \partCombineApart a-.  r
	\once \partCombineApart a-.  r d-. f-.
	a-. r a-. r
% Bar 431
	R1\fermata \bar "|."
}
