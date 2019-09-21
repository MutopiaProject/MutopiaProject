% Project Name : Double Concerto Op102
% Fichier :      m01_v02_music_FloteII.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIIMvtI = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	e4._\fmarc^\tutti d8 b4 r
	c4. b8 e,4 r
	\times 2/3 {fis4-. gis-. a-. } \times 2/3 {gis-. a-. b-. }
	\times 2/3 {a-. b-. c-. } \times 2/3 {d-. e-. f-. }
	R1^\fermataMarkup
% Bars 6 to 10
	R1*17
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	\new CueVoice { \set instrumentCueName = "Solo-Vlc." }
	\cueDuringWithClef #"cueVoiceFloteIImI" #DOWN #"bass" {R1*3 r2}
% Bars 26 to 30
	\new CueVoice { \set instrumentCueName = "Klar." }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {r2 R1 r2 r4}
	 a,(_\pdolce
	fis2 f)
	e4( cis2) r4
% Bars 31 to 35
	R1\fermataMarkup
	R1*20
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {
		R1 \override MultiMeasureRest.staff-position = #-4
		R1*4 \revert MultiMeasureRest.staff-position
		}
% Bars 56 to 60
	\mark \default
	c'4.\ff^\tutti d8 c4 r
	a4. gis8 a4 r
	\times 2/3 {b-. c-. d-.} c4.-> a8
	g4. f8 e4. c'8
% Bars 61 to 65
	b2-> a->
	e2.-> c'4
	b2-> a->
	g2. e'4
	\times 2/3 {c2 d4} \times 2/3 {b2 c4}
% Bars 66 to 70
	a2 a
	a\ff-> a->
	g-> g->
	a a
	g dis
% Bars 71 to 75
	e4-.\p r r2
	R1*3
	
	
	r4 des'2->\f c4-.
% Bars 76 to 80
	aes4-! r d,!-! r
	e-! r r2
	R1 \mark \default
	g8\f g4 g8( f) f4 f8~
	f4-. e-. r2
% Bars 81 to 85
	bes'8 bes4 bes8~ bes bes4 bes8(
	a4) a-. r2
	e'8 e4 e8( d) d4 d8(
	des4-.) c-. r2
	e8 e4 e8( d) d4 d8(
% Bars 86 to 90
	c4)-! c-! r2
	a4-! a-! r g-!
	r f-! r2
	r r4 a(\f \mark \default
	g8) r a4( e8) r f4(
% Bars 91 to 95
	g2 c,4) a'4(
	g8) r a4( e8) r f4(\<
	f'2\> c4)\! d(
	dis)-. e(~\sf e16 d c bes) d4(~
	d16 c bes a) bes4(~ bes16 a g fis) g4(~
% Bars 96 to 100
	g8 fis) g4.( d'8) ees4(\f~
	ees16 f ees d) ees4(~ ees16 d c b!) c4~
	c a~ a8-. r r4
	r a2 a4~
	a8-. r r4 r2
% Bars 101 to 105
	R1
	a2\sf~ a4-. r
	d!2\sf~ d4-. r
	r2 r4 f(
	e b c b)
% Bars 106 to 110
	r2 c,8(\sf\> e gis a)\!
	r2 f8(\sf\> a cis d)\!
	r2 r4 r16 e,,( gis b
	e8)-. r8 a, r r16 e( gis b e8)-. r
	a,-. r r4 a16( c! dis fis a c dis fis)
% Bars 111 to 115
	\afterGrace gis1\trill( {fis16[ gis]) } \mark \default
	a4-. r r2
	R1*7
% Bars 116 to 120
	
% Bars 121 to 125
	
	\new CueVoice { \set instrumentCueName = "Klar.I" }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {R1*4}
	dis,,2_\pcresc( e
	f! a)
% Bars 126 to 130
	a8-.\f r r4 r2
	R1*5
% Bars 131 to 135
	\new CueVoice { \set instrumentCueName = "Fl.I" }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1}
	r4 fis-. gis-.\sf r
	R1
	r4 fis-. fis-.\sf r
% Bars 136 to 140
	r g-. r g-.\<
	r g-. cis-.\sf r
	R1*2
	
	a2\pp( c_\dimmarkup
% Bars 141 to 145
	ees1
	c \mark \default
	b4) r r2
	R1*2
	
% Bars 146 to 150
	R1^\gp
	bes,1_\dolce~
	bes(\<
	a)~\dimD\>
	a2( g)\!
% Bars 151 to 155
	R1*11
% Bars 156 to 160
	
% Bars 161 to 165
	\new CueVoice { \set instrumentCueName = "Solo-Vlc." }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {R1*4 r2}
% Bars 166 to 170
	 r4 c~_\pdolce
	c8 r c4~ c8 r c4(\<
	aes4\> g8\!) r8 r4 c~
	c8 r c4~ c8 r c4~\<
	c1\dimD\>~
% Bars 171 to 175
	c4\! r r2 \mark \default
	r r4 c'\f(
	cis)-. d2( a4)
	r2 r4 f'(
	fis-.) g4(~ g16 f e d) f4\fp(~
% Bars 176 to 180
	f8 bes,) a4.( g8) f4~
	f f2(\> d4)\!
	R1*5
% Bars 181 to 185
	
	
	r2 g\pp(
	c1
	b
% Bars 186 to 190
	g2 fis
	f! e)
	ees1_\dimmarkup~
	ees4 r r2
	R1*3
% Bars 191 to 195
	
	\mark \default
	R1*2
	
	b'8\f-. b4 b8( a) a4 a8\<(
% Bars 196 to 200
	aes2\>)( g4)\! r
	b8 b4 b8( a!) a4 a8(
	gis4)-. e-. r2
	d'8 d4 d8( c) c4 c8~
	c4-. b-. r2
% Bars 201 to 205
	d8 d4 d8( c) c4 c8(
	bes4-.) bes-. r2
	bes4-. bes-. r a-.
	r c-. r2
	r r4 e(
% Bars 206 to 210
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4~
	c2~ c4 c(
	e-.) d2-> d4~
% Bars 211 to 215
	d d2 d4(~
	d8 cis) d4.( a8) bes4\sf(~
	bes16 c! bes a) bes4(~ bes16 a g fis) g4~
	g g~ g8-. r r4
	r g2 g4~
% Bars 216 to 220
	g8-. r r4 r2
	R1 \mark \default
	R1*13
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1 R1 \once \override MultiMeasureRest.staff-position = #-8 R1 r2 r8}
	 b(\p a g)
	R1*7
% Bars 236 to 240
	
% Bars 241 to 245
	\mark #10
	a,1\p~
	a4 r r2
	R1*6
	
% Bars 246 to 250
	\new CueVoice { \set instrumentCueName = "Ob.I" }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1 r4 r8}
	\new CueVoice { \set instrumentCueName = "Fag. I" }
	\cueDuringWithClef #"cueVoiceFloteIImI" #UP #"bass" {r8 r2}
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
% Bars 251 to 255
	\cueDuring #"cueVoiceFloteIImI" #DOWN {r2 r4}
	r8 cis'\f-.
	d-. e-. f-. r r4 r8 b,-.
	c!-. d-. ees-. r r2
	R1*3
% Bars 256 to 260
	
	
	f4._\ffmarc-> ees8 c4 r
	des4.-> c8 f,4 r
	bes2(^\tutti des,)
% Bars 261 to 265
	ges( bes,)
	c'4._\ffmarc^\solo bes8 g!4 r
	aes4. g8 c,4 r
	\times 2/3 {d!4-.^\tutti e-. f-.} \times 2/3 {e-. f-. g-.}
	\times 2/3 {f-. g-. aes-.} \times 2/3 {bes-. c-. des-.~}
% Bars 266 to 270
	des ees,-. c'-. aes-.
	\times 2/3 {des,-. e-. f-.} \times 2/3 {g-. aes-. bes-.~}
	bes c,-. aes'-. f-.
	des-. r r2 \mark \default
	R1*5
% Bars 271 to 275
	
% Bars 276 to 280
	
	\new CueVoice { \set instrumentCueName = "Solo-Vlc." }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1*4 r4 r8}
	 ais'8\p\<( b cis\> d)\! r
	r ais(_\dimmarkup cis) r r gis( b) r
% Bars 281 to 285
	r fis( a) dis,( fis) c!( dis) r
	e4-! r r2
	R1*3
	
	
% Bars 286 to 290
	cis'4-.\ff r c-. r
	a-. r c-. r
	b-. r r2
	d4-. r r2 \mark \default
	c4.\ff d8 c4 r
% Bars 291 to 295
	a4. gis8 a4 r
	\times 2/3 {b-. c-. d-.} c4.-> a8
	g4. f8 e4. c'8
	b2 a
	e2. c'4
% Bars 296 to 300
	b2 a
	g2. r4
	R1*2
	
	R1*3^\solo
% Bars 301 to 305
	
	
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {R1*2 r4}
	\new CueVoice { \set instrumentCueName = "Fl.I" }
	\cueDuring #"cueVoiceFloteIImI" #UP {r4 r2}
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {r4}
% Bars 306 to 310
	 fis-.\< gis-.\sf r
	R1
	r4 c,-.\< fis-.\sf r
	R1
	r4 ees-.\< e-.\sf r
% Bars 311 to 315
	r a-. a2\fp\>~
	a4\! r r2 \bar "||" \key a \major \mark \default
	R1*3
	
	
% Bars 316 to 320
	R1^\gp
	\new CueVoice { \set instrumentCueName = "Fl.I" }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1}
	R1*18
% Bars 321 to 325
	
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	\new CueVoice { \set instrumentCueName = "Solo-Vlc" }
	\cueDuring #"cueVoiceFloteIImI" #DOWN {R1*5 r2 r4}
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
% Bars 341 to 345
	\cueDuring #"cueVoiceFloteIImI" #UP {r4 \mark \default r2 r4}
	a\f(
	ais-.) b2( fis4)
	r2 r4 d'(
	dis)-. e4(~ e16 d cis b) d4\fp(~
% Bars 346 to 350
	d8 g,) fis4.( e8) d4~
	d d2(\> b4)\!
	R1*5
% Bars 351 to 355
	
	
	r2 e(\pp
	a1
	d,
% Bars 356 to 360
	cis2 b~
	b a~
	a1)~_\dimmarkup
	a4 r r2
	R1*5
% Bars 361 to 365
	
	
	
	
	gis'8-.\f gis4 gis8( fis) fis4 fis8\((\<
% Bars 366 to 370
	f2)\> e4\)\! r \mark \default
	gis8^\tutti gis4 gis8( fis!) fis4  fis8(
	eis4-.) cis-. r2
	b'8 b4 b8( a) a4 a8~
	a4-. gis-. r2
% Bars 371 to 375
	b8 b4 b8( a) a4 a8(
	g4)-. g-. r2
	e4-. e-. r d-.
	r cis-. r2
	r2 r4 cis'(
% Bars 376 to 380
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'2 e4) a,(
	cis-.) b2-> b4~
% Bars 381 to 385
	b b2 b4~(
	b8 ais) b4.( fis'8) g4(~
	g16 a! g fis) g4(~ g16 fis e dis) e4(
	cis) cis~ cis8-. r r4
	r d2 d4~
% Bars 386 to 390
	d8-. r r4 r2
	R1 \bar "||" \key a \minor \mark \default
	dis2\ff\trill e8( c b a)
	g4 r8 a-. g4-. r
	gis'2\trill a8( f e d)
% Bars 391 to 395
	c4 r8 d-. c4-. r
	R1
	e,8\f e4 e e e8~
	e e4 e e e8~
	e4 e-. r2
% Bars 396 to 400
	R1*4^\solo
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1*2}
% Bars 401 to 405
	
	a,2(\pp bes
	b! c)
	d( ees
	e! f)~
% Bars 406 to 410
	f_\crescmarkup fis~
	fis g~
	g f!~
	f gis
	a4-.\f r r2
% Bars 411 to 415
	R1*3
	
	
	R1^\pocorit
	r2 r4 r^\atempo
% Bars 416 to 420
	R1*3
	\new CueVoice { \set instrumentCueName = "Solo-Viol." }
	\cueDuring #"cueVoiceFloteIImI" #UP {R1 r2 r4}
	
	 c-.\f
% Bars 421 to 425
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-. 
	b-. c-. gis-. a-. 
	a-. a-. e'-. a,-. 
	a-. a-. e'-. a,\f-. 
% Bars 426 to 430
	d2 dis
	e gis,
	a4-. r a-. r
	a-. r f-. a-.
	c-. r c-. r
% Bar 431
	R1\fermataMarkup \bar "|."
}
