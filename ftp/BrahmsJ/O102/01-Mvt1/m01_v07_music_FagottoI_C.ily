%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIMvtI = \relative c' {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	e4._\fmarc d8 b4 r
	c4. b8 e,4 r
	a-. r b-. r
	c-. a-. f'-. d-.
	R1\fermata
% Bars 6 to 10
	R1*21
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	\partCombineApart r2 r4-\tweak X-offset #-1 ^\pdolce \clef tenor fis,(\<
	a2\> gis4)\! a(
	fis'2 f
	e cis4) \partCombineAutomatic r
% Bars 31 to 35
	R1\fermata
	R1*25
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
% Bars 56 to 60
	\clef bass \mark \default
	a,4.-\tweak X-offset #-2 \ff b8 c4 r
	d4. e8 f4 r
	g2 a4. f8
	b4. g8 c4. a8
% Bars 61 to 65
	d2-> dis-> 
	\tupletUp \tuplet 3/2 2 {e2-> d!4-. c4( b) a-.}
	d2-> dis->
	\tuplet 3/2 2 {e2-> d!4-. c( g) \once \partCombineApart c,-. 
	f2 \once \partCombineApart b,4 e2 \once \partCombineApart a,4} \tupletNeutral 
% Bars 66 to 70
	d2 \once \partCombineApart c \partCombineUnisono
	b8-.-\tweak X-offset #-3.7 \ff\<-. dis-. fis-. a-.\! c4.\>( b8)
	b,-.\< e-. g-. ais-.\! c4.(\> b8)\!
	cis,-. e-. a!-. cis-. dis,2
	e8-. g-. ais-. b-. b,2 \partCombineApart
% Bars 71 to 75
	c4 r8 bes'( des4. c8)
	r4 r8 f8( des4. c8)
	r4 r8 bes( des4. c8)
	r4 r8 f( des4. c8)
	\partCombineChords aes4-.\f bes2-> c4-.
% Bars 76 to 80
	f,-! \partCombineAutomatic r \once \partCombineApart f,-! r
	\once \partCombineApart c'-! r r2
	R1 \mark \default
	e'8\f e4 e8( d) d4 d8(
	des4-.) c-. r2
% Bars 81 to 85
	e8 e4 e8( d) d4 d8(
	cis4-.) a-. r2 \clef tenor
	g'8 g4 g8( f) f4 f8(
	f4-.) e-. r2
	g8 g4 g8( f) f4 f8(
% Bars 86 to 90
	ees4-!) c-! r2 \clef bass
	c4-! c-! r d-!
	r f-! r2
	c2(\f c,4) c'( \mark \default
	d8) r8 c4( des8) r c4(
% Bars 91 to 95
	d!2 c4) c(
	d8) r c4( des8) r c4(
	d!) c8 b! c f, f'4(
	f,)-. bes2\sf bes4~
	bes bes2 bes4~
% Bars 96 to 100
	bes bes4.( \clef tenor fis'8) \partCombineChords g4(~
	g16 \partCombineUnisono f! ees d) \partCombineAutomatic ees4(~ ees16 d c b!) c4~
	c c4~ c8-. r r4
	r \clef bass \partCombineChords a2 a4~
	a8-. \partCombineAutomatic r r4 r c->
% Bars 101 to 105
	a-> fis-> dis-> c->
	b2-\tweak X-offset #-1.5 \sf c4-. r
	e2-\tweak X-offset #-1 \sf f4-. r
	r2 r4 \partCombineApart \oneVoice f'^(
	e f) a,^( gis) \partCombineAutomatic
% Bars 106 to 110
	r2 \voiceOne c4( d8 e)
	r2 cis8(\sf\> d e f)\!
	\partCombineApart r2 r4 r16 e,( gis b
	e8-.) r d-. \once \partCombineAutomatic r r16 e,( gis b e8-.) r
	d-. \partCombineAutomatic r8 r4 \once \override CombineTextScript.X-offset = #-2  a,16( c! dis fis a c dis fis)
% Bars 111 to 115
	\afterGrace d!1(\trill {c16[ d)]} \mark \default
	c4-. r r2
	R1*7
% Bars 116 to 120
	
	
	
	
	fis,2(\p g
% Bars 121 to 125
	gis a)
	b(_\crescpocoapoco c
	cis d)
	\partCombineChords bis( cis
	d f!)
% Bars 126 to 130
	e8-. \partCombineAutomatic r r4 r2
	R1*5
% Bars 131 to 135
	
	r4 \clef tenor e-.\p r f-.\<
	r fis-. d-.\sf r
	r e-. r f-.\<
	r fis-. \clef bass a,-.\sf r
% Bars 136 to 140
	r g-. r g-.\<
	r g-. a-.\sf r
	a1\pp~
	a
	R1*3
% Bars 141 to 145
	
	\mark \default
	b4.(_\pdolce c8 d2)
	r4 r8 b8(\< c4. d8\!
	b4.\> c8 d2\!)
% Bars 146 to 150
	r1^\gp
	bes1_\dolce~
	bes(
	a2)( c)~
	c( b)
% Bars 151 to 155
	R1
	r2 r4 \partCombineApart g4~_\pdolce
	g8 \partCombineAutomatic r a4~ a8 r aes4~(\<
	aes\> f8)\! r r4 \partCombineApart g~
	g8 \partCombineAutomatic r a4~ a8 r aes4(\<~
% Bars 156 to 160
	aes\> g8)\! r r2
	R1*9
% Bars 161 to 165
	
% Bars 166 to 170
	r2 r4 \partCombineApart g_\pdolce~
	g8 \partCombineAutomatic r a4~ a8 r aes4~(\<
	aes\> f8)\! r r4 \partCombineApart g~
	g8 \partCombineAutomatic r a!4~ a8\< r aes4~
	aes\>( g2)\! r4
% Bars 171 to 175
	R1 \mark \default
	r2 r4 \clef tenor c(\f
	cis-.) d2( a4)
	r2 r4 f'(
	fis-.) g4(~ g16 f e d)  a'4\fp(~
% Bars 176 to 180
	a8 e) f4.( cis8) d4~
	d \clef bass a2\>( g4)\!
	\partCombineApart r8 bes( a4. g8) f4~
	f_\dimmarkup f2 \partCombineChords a4(~
	a1~
% Bars 181 to 185
	a2 g4) \partCombineAutomatic r
	R1
	r2 \partCombineChords g(
	a1
	f!
% Bars 186 to 190
	e2 a
	d, g) \partCombineAutomatic
	c,1_\dimmarkup~
	c4 r r2
	R1*3
% Bars 191 to 195
	
	\mark \default
	R1*2
	
	\once \override CombineTextScript.X-offset = #1 g2-\tweak X-offset #-1 \f d'\<
% Bars 196 to 200
	g2.\> r4\!
	g,2 b
	e4-! a,-! r2
	g2 d'
	g4-! g-! r2
% Bars 201 to 205
	g, d'
	g4-! c,-! r2
	f4-! f,-! r f'-.
	r g-. r2
	g2. c,4(
% Bars 206 to 210
	c'8) r c,4( c'8) r c,4(
	c') b8 a b g c,4(
	c'8) r c,4( c'8) r c,4(
	a') g8 fis g c, c'4(
	c,-.) f!2-> b,4~
% Bars 211 to 215
	b d2 f4~
	f a4.( cis8) \partCombineApart \once \oneVoice d4(~
	d16 c! bes a) \partCombineAutomatic bes4(~ bes16 a g fis) g4~
	g c,~ c8 r r4
	r4 cis2 cis4~
% Bars 216 to 220
	cis8 r r4 r cis'->
	cis-> e-> e-> cis-> \mark \default
	R1*7
% Bars 221 to 225
	
	
	
	
	r2 e,\fp~
% Bars 226 to 230
	e1
	r2 cis\fp~
	cis1
	R1*4
	
% Bars 231 to 235
	
	
	r2 r8 \clef tenor d'8(\p e fis)
	R1
	\partCombineApart r2 r8 e( fis g) \partCombineAutomatic
% Bars 236 to 240
	\clef bass R1*6 
	
% Bars 241 to 245
	\mark \default
	R1*2
	
	r4 r8 gis,-._\pmarc a-. b-. c-. r
	R1*3
% Bars 246 to 250
	
	
	r4 \clef tenor r8 cis_\marc-. d-. e-. f-. r
	R1*2
	
% Bars 251 to 255
	\partCombineApart r4 \clef bass r8 cis-._\f d-. e-. fis-. r \partCombineAutomatic
	R1
	r2 r8 gis,-.\f a-. a,-. 
	r2 r8 fis'-. g!-. g,-.
	R1 \clef tenor
% Bars 256 to 260
	bes'2(_\pcresc ges')
	ges,( ges')
	\once \override CombineTextScript.X-offset = #-3 f4.-\tweak X-offset #-2.5 _\ffmarc-> ees8 c4 r
	des4.-> c8 f,4 r \clef bass
	bes ges2 bes4
% Bars 261 to 265
	ges ees2 ges4
	bes,1-\tweak X-offset #-4 \sf
	bes2~ bes8 bes'-. aes-. g-.
	f4-. r g-. r
	aes-. f-. des'-. bes-.
% Bars 266 to 270
	\tuplet 3/2 2 {ees,-. f-. g-. aes-. bes-. c~}
	c des,-. bes'-. g-.
	\tuplet 3/2 2 {c,-! d-! e!-! f-! g-! aes-!
	bes-. c-. des-. ees,-. f-. g-.} \mark #11
	c,-. r r2
% Bars 271 to 275
	R1*12
% Bars 276 to 280
	
% Bars 281 to 285
	
	
	c'1(_\pcresc
	a2) r
	R1
% Bars 286 to 290
	cis4-\tweak X-offset #-2 \ff-! r \once \partCombineChords c-! r
	a-! r \once \partCombineChords c-! r
	\once \partCombineChords b-! r r2
	e,4-! r r2 \mark \default
	a,4.-\tweak X-offset #0.5 \ff b8 c4 r
% Bars 291 to 295
	d4. e8 f4 r
	g2 a4. f8
	b4. g8 c4. a8
	d2 dis
	\tupletUp \tuplet 3/2 2 {e2 d!4-. c( b) a-.}
% Bars 296 to 300
	d2 dis
	\tuplet 3/2 2 {e2 d!4 c( g) c,-.
	f2 d4 g2 e4} \tupletNeutral
	a2 \once \partCombineApart f,
	R1*5
% Bars 301 to 305
	
	
	
	
	r4 \clef tenor e''4-.\p r f-.\<
% Bars 306 to 310
	r fis-. d-.\sf r
	r c-.\p r c-.
	r \clef bass c-.\< a-.\sf r
	r bes-.\p r bes-. 
	r bes-.\< g!\sf-. r
% Bars 311 to 315
	r a-. \partCombineChords dis2~
	dis4\! \partCombineAutomatic r r2 \bar "||" \key a \major \mark \default
	gis,4._\pdolce( a8 b2)
	r4 r8 gis( a4.\< b8\!
	gis4.\> a8\! b2)
% Bars 316 to 320
	R1^\gp
	a1~-\tweak X-offset #-1.5 _\pp
	a~
	a~_\dimmarkup
	a2 gis2~
% Bars 321 to 325
	gis4 r r2
	R1*20
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	
% Bars 341 to 345
	\mark \default
	r2 r4 \once \override CombineTextScript.X-offset = #-4 a\f(
	ais-.) b2( fis4)
	r2 r4 \clef tenor d'(
	dis)-. e4(~ e16 d cis b) fis'4(~\fp
% Bars 346 to 350
	fis8 cis) d4.( ais8) b4~
	b \clef bass \partCombineChords d2( b4) \partCombineAutomatic
	R1*5
% Bars 351 to 355
	
	
	r2 \partCombineChords e,^(
	fis1
	gis
% Bars 356 to 360
	e!2 dis
	d! cis
	c1)~_\dimmarkup
	c4 \partCombineAutomatic r r2
	R1*5
% Bars 361 to 365
	
	
	
	
	e,2\f b'
% Bars 366 to 370
	e2. r4 \mark \default
	e,2 gis
	cis4-! fis,-! r2
	e2 b'
	e4-! e-! r2
% Bars 371 to 375
	e, b'
	e4-! a,-! r2
	d4-! d,-! r d'-.
	r e-. r2
	r r4 a,(
% Bars 376 to 380
	a'8) r a,4( a'8) r a,4(
	a') gis8 fis gis e a,4(
	a'8) r a,4( a'8) r a,4(
	fis') e8 dis e a, a'4(
	a,-.) e2-> gis4~
% Bars 381 to 385
	gis b2 d4~
	d \clef tenor d'4.( fis8) g4(~-\tweak X-offset #-2 \sf
	g16 a g fis) g4(~ g16 fis e dis) \partCombineChords e4(
	cis) \partCombineAutomatic \clef bass a~ a8-. r r4
	r gis2 gis4~
% Bars 386 to 390
	gis8-. r r4 r \once \partCombineApart a->
	e'-> c-> a-> c,-\tweak X-offset #1 -> \bar "||" \key a \minor \mark \default
	b2-\tweak X-offset #-4 \ff c4 r8 b'-.
	c4-. r8 \once \partCombineApart b,-. \once \partCombineApart c4-. r
	e2 f4 r8 e-.
% Bars 391 to 395
	f4-. r8 e-. f4-. r8 d-.
	\once \override CombineTextScript.X-offset = #0.5 e'(\f d b) c( b e,) e e~
	e e4 e e e8~
	e e4 e e e8~
	e4 e2 e4-.
% Bars 396 to 400
	R1*3
	
	
	\partCombineSoloI e4\p( fis gis4. gis8)
	a8(\< c b a\! d4.\> c8)
% Bars 401 to 405
	a8(\< c b a\! d4.\> c8)\!
	a4 r r2
	\partCombineAutomatic R1
	\partCombineChords f2( ges
	g! aes)~
% Bars 406 to 410
	aes a~
	a bes~
	bes a~
	a b!
	c4-. r r2
% Bars 411 to 415
	R1*14
% Bars 416 to 420
	
% Bars 421 to 425
	
	
	
	
	r2 r4 \once \partCombineApart a-.
% Bars 426 to 430
	\partCombineChords d,2 b
	c e
	\partCombineUnisono a,4-. r  a-. r
	a-. r f'-. d-.
	a-. r a-. r
% Bar 431
	a1\fermata \bar "|."
}
