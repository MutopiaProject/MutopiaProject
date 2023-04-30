%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIMvtI = \relative c'' {
	\clef treble
	\key a \minor
	\transposition e
% Bars 1 to 5
	c4._\fmarc c8 c4 r
	c4. c8 c4 r
	\once \partCombineApart b-. r \once \partCombineApart bes-. r
	c-. c-. \partCombineApart bes-. bes-. \partCombineAutomatic
	R1\fermata
% Bars 6 to 10
	R1*20
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	c,1~\p
	c~
	c~
	c~
	c2. r4
% Bars 31 to 35
	R1\fermata
	R1*25
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
% Bars 56 to 60
	\mark \default
	c'4.-\tweak X-offset #-2 \f bes8 c4 r
	f4. e8 f4 r
	R1
	r2 \once \partCombineApart c4. \once \partCombineApart c8
% Bars 61 to 65
	g'2-> f->
	c2.-> c4
	g'2-> f-> 
	ees2.-> ees4
	r2 r4 \partCombineApart c
% Bars 66 to 70
	des2 c \partCombineAutomatic
	g->-\tweak X-offset #-3.7 \ff d'->
	g,-> ees'->
	\partCombineChords ees f \partCombineAutomatic
	g, g
% Bars 71 to 75
	\once \partCombineApart c,4-. r r2
	R1*3
	
	
	r4 \partCombineApart a'2-> e4-. \partCombineAutomatic
% Bars 76 to 80
	bes'-! r bes-! r
	c-! r r2 
	R1 \mark \default
	\once \override CombineTextScript.X-offset = #-4 ees4\f ees2 ees4~
	ees r r2
% Bars 81 to 85
	ees4 ees2 ees4~
	ees r r2
	R1*7
% Bars 86 to 90
	
	
	
	\mark \default
	R1*3
% Bars 91 to 95
	
	
	r2 r4 f\f( 
	aes-.) ees2-> ees4-.
	R1
% Bars 96 to 100
	r2 r4 f~
	f f2 f4~
	f f~ f8-. r r4
	r f2 f4~
	f8 r r4 r2
% Bars 101 to 105
	R1
	\partCombineApart b,2 c4-. \partCombineAutomatic r
	e2-\tweak X-offset #-1 \sf f4-. r
	r2 r4 \partCombineApart f(
	ees des) c2
% Bars 106 to 110
	b2( c4-.) \once \partCombineAutomatic r
	e2( f4-.) \partCombineAutomatic r
	r2 f4-. e-.
	r f-. e-. r
	f-. r f-. r
% Bars 111 to 115
	\once \partCombineApart c-. r \once \partCombineApart c,-. r \mark \default
	R1*31
% Bars 116 to 120
	
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
% Bars 136 to 140
	
% Bars 141 to 145
	
	\mark \default
	R1
	r4 r8 \partCombineApart ees8~ ees4. ees8~
	ees1 \partCombineAutomatic % ees1\> <>\!
% Bars 146 to 150
	R1^\gp
	\partCombineApart ees'1~_\dolce
	ees(_\<
	d\dimD_\>
	<< bes) {s4 s s\! s}>> \partCombineAutomatic
% Bars 151 to 155
	R1*21
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	\mark \default
	R1*17
% Bars 176 to 180
	
% Bars 181 to 185
	
% Bars 186 to 190
	
	
	
	r2 r4 c-._\pmamarc
	r c-. r c-.
% Bars 191 to 195
	r8 c-. r c-. r c-. r c-.
	r c-. r c-. r c-. r4 \mark \default
	R1*2
	
	\partCombineChords g'8-.-\tweak X-offset #-2 \f g4 g8( f) \partCombineAutomatic f4 \once \oneVoice \once \omit Flag f8( 
% Bars 196 to 200
	e2)( ees4) r
	\partCombineChords g8 g4 g8( f) \partCombineAutomatic f4 f8(
	e!4-.) \once \partCombineApart c-. r2
	\partCombineChords g'8 g4 g8( f) \partCombineAutomatic f4 f8(
	e4-.) ees-. r2
% Bars 201 to 205
	ees8 ees4 ees8( f) f4 f8(
	ges4-.) r4 r2
	ees4-. r  r des-.
	r ees-. r2
	R1
% Bars 206 to 210
	r2 r4 \partCombineApart c(
	bes2 ees4) \partCombineAutomatic r
	r2 r4 \partCombineApart c(
	bes2 ees4) \partCombineAutomatic r
	r \partCombineApart ees,2 ees4-. \partCombineAutomatic
% Bars 211 to 215
	R1
	r2 r4 fis-\tweak X-offset #-1 \sf~
	fis fis-. r \partCombineChords ees'~
	ees ees~ ees8-. \partCombineAutomatic r r4
	r \partCombineChords ees2 ees4~
% Bars 216 to 220
	ees8-. \partCombineAutomatic r r4 r ees->
	ees-> c-> c-> \once \partCombineApart c,-> \mark \default
	R1*7
% Bars 221 to 225
	
	
	
	
	r2 g'\fp~
% Bars 226 to 230
	g1
	r2 fis2\fp~
	fis1
	R1*13
% Bars 231 to 235
	
% Bars 236 to 240
	
% Bars 241 to 245
	\mark \default
	R1*4
% Bars 246 to 250
	\partCombineSoloI g'2(_\pdolce f
	e ees4) r \partCombineAutomatic
	R1*14
% Bars 251 to 255
	
% Bars 256 to 260
	
% Bars 261 to 265
	
	\once \partCombineApart c4-! r r \partCombineApart ees,-!
	c'-! \partCombineAutomatic r r2
	R1*6
% Bars 266 to 270
	
	
	
	\mark #11
	R1*16
% Bars 271 to 275
	
% Bars 276 to 280
	
% Bars 281 to 285
	
% Bars 286 to 290
	r2 \once \partCombineApart c4-! r
	\once \partCombineApart bes-! r \once \partCombineApart bes-! r
	\once \partCombineApart g-! r r2
	c4-! r r2 \mark \default
	c4.-\tweak X-offset #0.5 \ff bes8 c4 r
% Bars 291 to 295
	f4. e8 f4 r
	R1
	r2 \partCombineApart c4. c8 \partCombineAutomatic
	g'2 f
	c2. c4
% Bars 296 to 300
	g'2 f
	ees2. r4
	r \once \partCombineApart bes-. ees-. r
	R1*14
% Bars 301 to 305
	
% Bars 306 to 310
	
% Bars 311 to 315
	
	\bar "||" \mark \default
	c,1\pp
	r4 r8 c8~ c4. \partCombineUnisono c8\<~
	<<c1 {s4\> s s s\!}>> \partCombineAutomatic
% Bars 316 to 320
	R1^\gp
	c'1\pp~
	<< c( {s4 s8 s_\< s4 s8 s\!}>>
	b1)(_\dimmarkup
	bes)~
% Bars 321 to 325
	bes4 r r2
	R1*20
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	
% Bars 341 to 345
	\mark \default
	R1*5
% Bars 346 to 350
	
	r2 r4 d(\p~
	d8 ees) d4.( c8) bes4~
	bes_\dimmarkup g2 \partCombineApart g4~
	g1~
% Bars 351 to 355
	g2( c)(
	ees1)~
	ees(
	d4) r r2 \partCombineAutomatic
	R1*10
% Bars 356 to 360
	
% Bars 361 to 365
	
	
	
	
	\partCombineChords e8-. e4 e8( d) \partCombineApart d4 d8^\((
% Bars 366 to 370
	des2) c4\) \partCombineAutomatic r4 \mark \default
	\partCombineChords e8 e4 e8( d) \partCombineAutomatic d4 d8(
	cis4-.) \once \partCombineApart a-. r2
	\partCombineChords e'8 e4 e8( d) \partCombineAutomatic d4 d8(
	des4-.) c-. r2
% Bars 371 to 375
	c8 c4 c8( d) d4 d8( 
	ees4-.) ees-. r2
	ees4-. ees-. r d-.
	r c-. r2
	c2( c,4) r
% Bars 376 to 380
	r2 r4 \partCombineApart a'(
	g2 c4) \partCombineAutomatic r
	r2 r4 \partCombineApart a(
	g2 c4) \partCombineAutomatic r
	r g2-\tweak X-offset #-1.5 \sf g4-.
% Bars 381 to 385
	R1
	r2 r4 ees'-\tweak X-offset #-2 \sf~
	ees ees-. r c\f~
	c c~ c8 r r4
	r g2 g4~
% Bars 386 to 390
	g8 r r4 r2
	R1 \bar "||" \mark \default
	g2-\tweak X-offset #-3.5 \sf c4 r8 \once \partCombineApart g-.
	c4-. r8 \once \partCombineApart g-. c4-. r
	e2 f4 r8 e-.
% Bars 391 to 395
	f4-. r8 e-. f4-. r
	c8-\tweak X-offset #-0.4 \f c4 c c c8~
	c c4 c c c8~
	c c4 c c c8~
	c4 c2 c4-.
% Bars 396 to 400
	R1*30
% Bars 401 to 405
	
% Bars 406 to 410
	
% Bars 411 to 415
	
% Bars 416 to 420
	
% Bars 421 to 425
	
% Bars 426 to 430
	r4 des-.\f r d-.
	r \once \partCombineApart c-. r c-.
	c-. r r2
	r \partCombineApart bes4-. bes-. \partCombineAutomatic
	\once \partCombineApart c-. r \once \partCombineApart c-. r
% Bar 431
	R1\fermata \bar "|."
}
