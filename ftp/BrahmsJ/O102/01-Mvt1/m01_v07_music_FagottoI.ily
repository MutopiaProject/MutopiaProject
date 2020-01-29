% Project Name : Double Concerto Op102
% Fichier :      m01_v07_music_FagottoI.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIMvtI = \relative c' {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	e4._\fmarc^\tutti d8 b4 r
	c4. b8 e,4 r
	a-. r b-. r
	c-. a-. f'-. d-.
	\textLengthOn <>_\markup {(in modo d'un recit.)} R1*18^\markup {Solo-Vlc.} \textLengthOff
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	\cueDuring #"cueVoiceFagImI" #DOWN {
		\MmrPos #8 \ni R1
		R
		R
% Bars 26 to 30
		<<R1 {s2 s4^\tutti \clef treble s }>>
		r2 r4 \no } \clef bass fis,(\p\<_\dolce
	a2\> gis4)\! a(
	fis'2 f
	e cis4) r
% Bars 31 to 35
	\textLengthOn <>^\markup {Solo-Viol. u. Solo-Vlc.} R1*21 \textLengthOff
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
	\cueDuring #"cueVoiceFagImI" #UP {
		\ni \MmrPos #6 R1
		R \clef "tenor"
		R
		<< R {s2 s4 \clef bass s } >>
% Bars 56 to 60
		R1 \mark \default \no
	}
	a,4.\ff-\tweak X-offset #1 ^\tutti b8 c4 r
	d4. e8 f4 r
	g2 a4. f8
	b4. g8 c4. a8
% Bars 61 to 65
	d2-> dis->
	\times 2/3 {e2-> d!4-.} \times 2/3 {c4( b) a-.}
	d2-> dis->
	\times 2/3 {e2-> d!4-.} \times 2/3 {c( g) c,-.}
	\times 2/3 {f2 b,4} \times 2/3 {e2 a,4}
% Bars 66 to 70
	d2 c
	b8\ff\<-. dis-. fis-. a-. c4.\>( b8)
	b,-.\< e-. g-. ais-. c4.(\> b8)\!
	cis,-. e-. a!-. cis-. dis,2
	e8-. g-. ais-. b-. b,2
% Bars 71 to 75
	c4\p r8 bes'\<( des4.\> c8\!)
	r4 r8 f8(\< des4.\> c8)\!
	r4 r8 bes(\< des4. c8)
	r4 r8 f( des4. c8)
	aes4\f-. bes2-> c4-.
% Bars 76 to 80
	f,-! r f,-! r
	c'-! r r2
	R1 \mark \default
	e'8\f e4 e8( d) d4 d8(
	des4-.) c-. r2
% Bars 81 to 85
	e8 e4 e8( d) d4 d8(
	cis4-.) a-. r2 \clef tenor
	g'8 g4 g8( f) f4 f8~
	f4-. e-. r2
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
	bes bes4.( \clef tenor fis'8) g4(\f~
	g16 f! ees d) ees4(~ ees16 d c b!) c4~
	c c4~ c8-. r r4
	r \clef bass a2 a4~
	a8-. r r4 r c->
% Bars 101 to 105
	a-> fis-> dis-> c->
	b2\sf c4-. r
	e2\sf f4-. r
	r2 r4 f'(
	e f) a,( gis)
% Bars 106 to 110
	r2 c4(\sf\> d8 e)\!
	r2 cis8(\sf\> d e f)\!
	r2 r4 r16 e,( gis b
	e8-.) r d-. r r16 e,( gis b e8-.) r
	d-. r8 r4 a,16( c! dis fis a c dis fis)
% Bars 111 to 115
	\afterGrace d!1(\trill {c16[ d)]} \mark \default
	c4-. r^\solo r2
	R1*5
% Bars 116 to 120
	
	
	\cueDuring #"cueVoiceFagImI" #UP {
		\ni \clef "treble" R1
		R \clef bass \no
	}
	fis,2(\p g
% Bars 121 to 125
	gis a)
	b(_\crescpocoapoco c
	cis d)
	bis( cis
	d f!)
% Bars 126 to 130
	e8-.\f r r4 r2
	R1*5
% Bars 131 to 135
	
	r4 \clef tenor e-.\p r f-.\<
	r fis-. d-.\sf r
	r e-. r f!-.\<
	r fis-. a,-.\sf r \clef bass
% Bars 136 to 140
	r g-. r g-.\<
	r g-. a-.\sf r
	a1\pp~
	a
	R1*3
% Bars 141 to 145
	
	\mark \default
	b4.(_\pdolce c8 d2)
	r4 r8 b8(\< c4. d8
	b4.\> c8 d2\!)
% Bars 146 to 150
	R1_\gp
	bes1_\dolce~
	bes(\<
	a2)(\dimD\> c)~
	c( b)\!
% Bars 151 to 155
	R1
	r2 r4 g4~_\pdolce
	g8 r a4~ a8 r aes4~(\<
	aes\> f8)\! r r4 g~
	g8 r a4~ a8 r aes4(\<~
% Bars 156 to 160
	aes\> g8)\! r r2
	R1*4
% Bars 161 to 165
	\cueDuring #"cueVoiceFagImI" #UP {
		\ni \clef "tenor" R1
		R
		R
		R
		R
% Bars 166 to 170
		r2 \clef bass \no } r4 g_\pdolce~
	g8 r a4~ a8 r aes4~(\<
	aes\> f8)\! r r4 g~
	g8 r a!4~ a8\< r aes4~
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
	r8 bes( a4. g8) f4~
	f_\dimmarkup f2 a4\pp(~
	a1~
% Bars 181 to 185
	a2 g4) r
	R1
	r2 g\pp(
	a1
	f!
% Bars 186 to 190
	e2 a
	d, g)
	c,1_\dimmarkup~
	c4 r r2
	R1*3
% Bars 191 to 195
	
	\mark \default
	R1*2
	
	g2\f d'\<
% Bars 196 to 200
	g2.\> r4\!
	g,2^\tutti b
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
	f a4.( cis8) d4\sf(~
	d16 c! bes a) bes4(~ bes16 a g fis) g4~
	g c,~ c8 r r4
	r4 cis2 cis4~
% Bars 216 to 220
	cis8 r r4 r cis'->
	cis-> e-> e-> cis-> \mark \default
	\MmrLength #10 R1*7^\solo
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
	r2 r8 e( fis g)
% Bars 236 to 240
	\clef bass R1*6 
	
% Bars 241 to 245
	\mark \default
	\cueDuring #"cueVoiceFagImI" #UP {
		\ni \clef "treble" R1
		R
		r4 r8 \clef bass \no } gis,-._\pmarc a-. b-. c-. r
	R1*3
% Bars 246 to 250
	
	
	r4 r8 cis_\marc-. d-. e-. f-. r
	R1*2
	
% Bars 251 to 255
	r4 r8 cis-.\f d-. e-. fis-. r
	R1
	r2 r8 gis,-.\f a-. a,-. 
	r2 r8 fis'-. g!-. g,-.
	R1 \clef tenor
% Bars 256 to 260
	bes'2(_\pcresc ges')
	ges,( ges')
	f4._\ffmarc-> ees8 c4 r
	des4.-> c8 f,4 r^\tutti \clef bass
	bes ges2 bes4
% Bars 261 to 265
	ges ees2 ges4
	bes,1\sf^\solo
	bes2~ bes8 bes'-.^\tutti aes-. g-.
	f4-. r g-. r
	aes-. f-. des'-. bes-.
% Bars 266 to 270
	\times 2/3 {ees,-. f-. g-.} \times 2/3 {aes-. bes-. c~}
	c des,-. bes'-. g-.
	\times 2/3 {c,-! d-! e!-! } \times 2/3 {f-! g-! aes-!}
	\times 2/3 {bes-. c-. des-.} \times 2/3 {ees,-. f-. g-.} \mark #11
	c,-.-\tweak X-offset #1.5 ^\solo r r2
% Bars 271 to 275
	R1*8
% Bars 276 to 280
	
	
	
	\cueDuring #"cueVoiceFagImI" #DOWN {
		\ni \clef "treble" R1
		R
% Bars 281 to 285
		R
		R \clef bass \no
	}
	c'1(_\pcresc
	a2) r
	R1
% Bars 286 to 290
	cis4\ff-! r c-! r
	a-! r c-! r
	b-! r r2
	e,4-! r r2 \mark \default
	a,4.\ff -\tweak X-offset #1 ^\tutti b8 c4 r
% Bars 291 to 295
	d4. e8 f4 r
	g2 a4. f8
	b4. g8 c4. a8
	d2 dis
	\times 2/3 {e2 d!4-.} \times 2/3 {c( b) a-.}
% Bars 296 to 300
	d2 dis
	\times 2/3 {e2 d!4} \times 2/3 {c( g) c,-.}
	\times 2/3 {f2 d4} \times 2/3 {g2 e4}
	a2 f,
	R1*5^\solo
% Bars 301 to 305
	
	
	
	
	r4 \clef tenor e''4-.\p r f-.\<
% Bars 306 to 310
	r fis-. d-.\sf r
	r \clef bass c-.\p r c-.
	r c-.\< a-.\sf r
	r bes-.\p r bes-. 
	r bes-.\< g!\sf-. r
% Bars 311 to 315
	r a-. dis2\fp\>~
	dis4\! r r2 \bar "||" \key a \major \mark \default
	gis,4._\pdolce( a8 b2)
	r4 r8 gis( a4.\< b8
	gis4.\> a8\! b2)
% Bars 316 to 320
	R1_\gp
	a1~_\pp\<
	a~
	a~\dimD\>
	a2 gis2~
% Bars 321 to 325
	gis4\! r r2
	R1*14
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	\cueDuring #"cueVoiceFagImI" #UP {
		\ni \clef "treble" R1
		R
		\once \override MultiMeasureRest.staff-position = #-6 R
		R
		R
% Bars 341 to 345
		R \mark \default
		r2 r4 \clef bass \no } a\f(
	ais-.) b2( fis4)
	r2 r4 \clef tenor d'(
	dis)-. e4(~ e16 d cis b) fis'4(~\fp
% Bars 346 to 350
	fis8 cis) d4.( ais8) b4~
	b \clef bass d2(\> b4)\!
	R1*5
% Bars 351 to 355
	
	
	r2 e,\pp(
	fis1
	gis
% Bars 356 to 360
	e2 dis
	d! cis
	c1)~_\dimmarkup
	c4 r r2
	R1*5
% Bars 361 to 365
	
	
	
	
	e,2\f b'
% Bars 366 to 370
	e2. r4 \mark \default
	e,2-\tweak X-offset #1 ^\tutti gis
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
	d \clef tenor d'4.( fis8) g4(~\sf
	g16 a g fis) g4(~ g16 fis e dis) e4(
	cis) \clef bass a~ a8-. r r4
	r gis2 gis4~
% Bars 386 to 390
	gis8-. r r4 r a->
	e'-> c-> a-> c,-> \bar "||" \key a \minor \mark \default
	b2\ff c4 r8 b'-.
	c4-. r8 b,-. c4-. r
	e2 f4 r8 e-.
% Bars 391 to 395
	f4-. r8 e-. f4-. r8 d-.
	e'(\f d b) c( b e,) e e~
	e e4 e e e8~
	e e4 e e e8~
	e4 e2 e4-.
% Bars 396 to 400
	R1*3^\solo
	
	
	e4\p(^\solo fis gis4. gis8)
	a8(\< c b a d4.\> c8)
% Bars 401 to 405
	a8(\< c b a d4.\> c8)\!
	a4 r r2
	R1
	f2\pp( ges
	g! aes)~
% Bars 406 to 410
	aes_\crescmarkup a~
	a bes~
	bes a~
	a b!
	c4-.\f r r2
% Bars 411 to 415
	R1*3
	
	
	R1^\pocorit
	r2 r4 r^\intempo
% Bars 416 to 420
	R1*4
	
	
	
	\cueDuring #"cueVoiceFagImI" #DOWN {
		\ni \clef "treble" \MmrPos #-4 R1
% Bars 421 to 425
		\MmrPos #-4 R
		\MmrPos #-4 R
		\MmrPos #-4 R
		\MmrPos #-4 R
		e2\rest e4\rest \clef bass \no } a,-.\f
% Bars 426 to 430
	d,2 b
	c e
	a,4-. r  a-. r
	a-. r f'-. d-.
	a-. r a-. r
% Bar 431
	a1\fermata \bar "|."
}
