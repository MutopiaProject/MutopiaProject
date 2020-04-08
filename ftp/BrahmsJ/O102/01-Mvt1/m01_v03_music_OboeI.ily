% Project Name : Double Concerto Op102
% Fichier :      m01_v03_music_OboeI.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicOboeIMvtI = \relative c'' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	e4._\fmarc^\tutti d8 b4 r
	c4. b8 e,4 r
	dis'-. r d-. r
	c-. e-. d-. f-. 
	\textLengthOn <>_\markup {(in modo d'un recit.)} R1*18^\markup {Solo-Vlc.}
% Bars 6 to 10
	\textLengthOff
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	\cueDuring #"cueVoiceOboeImI" #DOWN {
		\clef bass \ni \MmrPos #8 R1
		R
		R
% Bars 26 to 30
		<< R1 {s2 s4 \clef treble s} >>
		R1
		r2 r4 \no } cis(_\pdolce
	b) cis( gis) a(\<
	a'2\> e4\!) r
% Bars 31 to 35
	\textLengthOn <>_\markup { \center-column { \lower #1 \line {Solo-Viol. u.} \line {Solo-Vlc.}}} R1*21 \textLengthOff
	
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
	\cueDuring #"cueVoiceOboeImI" #UP {
		\ni \MmrPos #-6 R1
		R
		R
		R
% Bars 56 to 60
		R \no \mark \default 
	}
	a4.\ff-\tweak X-offset #1 ^\tutti g8 e4 r
	f4. e8 c4 r
	f4-. f-. f4.-> a8
	g4. f8 e4. e8
% Bars 61 to 65
	f2-> fis->
	e2.-> e4
	f2-> fis->
	g2.-> g4
	\times 2/3 {a2 f4} \times 2/3 {g2 e4}
% Bars 66 to 70
	f2 e
	dis->\ff dis->
	e-> e->
	e fis
	b, a
% Bars 71 to 75
	g4-.\p r r2
	R1
	r4 r8 bes\p\<( des4. c8)
	r4 r8 f( des4. c8)\!
	r4 f2->\f aes4-.
% Bars 76 to 80
	d,!-! r aes-! r
	c-! r r2
	R1 \mark \default
	e8\f e4 e8( d) d4 d8(
	des4)-. c-. r2
% Bars 81 to 85
	e8 e4 e8( d) d4 d8(
	cis4)-. a-. r2
	g'8 g4 g8( f) f4 f8~
	f4-. e-. r2
	g8 g4 g8( f) f4 f8(
% Bars 86 to 90
	ees4)-! ees-! r2
	c4-! c-! r bes-!
	r a-! r2
	r r4 a'(\f \mark \default
	g8) r a4( e8) r f4(
% Bars 91 to 95
	g2 c,4) a'(
	g8) r a4( e8) r c4(
	f8) f4 f8~ f f4 f8(
	a4-.) g2\sf g4~
	g g2 g4(~
% Bars 96 to 100
	g8 fis) g4.( fis8) g4\f(~
	g16 f! ees d) ees4(~ ees16 d c b!) c4~
	c c~ c8-. r r4
	r c2 c4~
	c8-. r r4 r2
% Bars 101 to 105
	R1
	dis2(\sf e4-.) r
	gis2(\sf a4-.) r
	r2 r4 a(
	g! f e2)
% Bars 106 to 110
	r2 gis8(\sf\> a b c)\!
	r2 cis,8(\sf\> d e f)\!
	R1
	e16( gis b cis d8-.) r r4 e,16( gis b cis
	d8-.) r r4 r a,16( c! dis fis)
% Bars 111 to 115
	\afterGrace gis1\trill( {fis16[ gis])} \mark \default
	a4-.^\solo r r2
	R1*19
% Bars 116 to 120
	
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
	\cueDuring #"cueVoiceOboeImI" #UP {
		\ni R1
		R
		R
		R
% Bars 136 to 140
		R
		R \no
	}
	c,2\pp( ees
	g fis)
	R1*3
% Bars 141 to 145
	
	\mark \default
	g4.^\espressivo_\pdolce( f8 d2)
	r4 r8 g(\< f4. d8
	g4.\> f8 d2)\!
% Bars 146 to 150
	R1_\gp
	R1*19
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	\cueDuring #"cueVoiceOboeImI" #UP {
		\ni R1
		R
		R
		R
		R
% Bars 171 to 175
		R \mark \default
		r2 r4 \no } c(\f 
	cis-.) d2( a4)
	r2 r4 f'(
	fis) g(~ g16 f e d) r4
% Bars 176 to 180
	R1
	r2 r4 a'4(\p\<~
	a8\> e)\! f4.( cis8) d4~
	d_\dimmarkup d2 c4\pp\<(~
	c1\>~
% Bars 181 to 185
	c2\! b)
	bes1(~
	bes
	a2) r
	R1*8
% Bars 186 to 190
	
% Bars 191 to 195
	
	\mark \default
	\cueDuring #"cueVoiceOboeImI" #UP {
		\ni \MmrPos #-6 R1
		\MmrPos #-6 R \no
	}
	b'8\f-. b4 b8( a) a4 a8(\<
% Bars 196 to 200
	aes2\>)( g4)\! r
	b8^\tutti b4 b8( a!) a4 a8(
	gis4)-. e-. r2
	b'8 b4 b8( a) a4 a8(
	aes4-.) g-. r2
% Bars 201 to 205
	b8 b4 b8( a) a4 a8(
	d,4)-. g-. r2
	e4-. g-. r f-.
	r e-. r2
	g,4.( e'8) e( g) g4(
% Bars 206 to 210
	fis8) r g4( f8) r e4(
	d2.) g4(
	fis8) r g4( f8) r e4(
	c'2 g4) e(
	g-.) f2-> f4~
% Bars 211 to 215
	f f2 f4(~
	f8 e) f4.( cis'8) d4(\sf~
	d16 c! bes a) bes4(~ bes16 a  g fis) g4~
	g g4~ g8-. r r4
	r g2 g4~
% Bars 216 to 220
	g8-. r r4 r bes,->
	cis-> e-> g-> bes-> \mark \default
	R1*13
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	\cueDuring #"cueVoiceOboeImI" #DOWN { 
		\ni \MmrPos #6 R1
		\MmrPos #6 R
		r2 r8 \no } fis(\p e d)
	r2 r8 b( cis d)
	r2 r8 b'( a g)
% Bars 236 to 240
	r2 r8 gis(_\dimmarkup fis eis)
	r ais( gis fis) r b( ais gis)
	R1*4 
% Bars 241 to 245
	\mark \default
	\cueDuring #"cueVoiceOboeImI" #UP { 
		\ni R1
		r2 r4 r8 \no } eis-._\pmarc
	fis-. gis-. a-. r r2
	R1*2
% Bars 246 to 250
	
	\cueDuring #"cueVoiceOboeImI" #UP {r2 r4 r8} ais-.
	b-. cis-. d-. r r2
	R1
	r2 r4 r8 fis,-.\f
% Bars 251 to 255
	g-. a-. bes-. r r2
	\cueDuring #"cueVoiceOboeImI" #UP { 
		\ni R1
		r8 \no } cis,-.\f d-. e-. f!-. r r4
	r8 b,-. c!-. d-. ees-. r r4
	R1*3
% Bars 256 to 260
	
	
	f4.->_\ffmarc ees8  c4 r
	des4.-> c8 f,4  r-\tweak X-offset #-3 ^\tutti
	R1*2 
% Bars 261 to 265
	
	c''4._\ffmarc^\solo bes8 g4 r
	aes4. g8 c,4 r-\tweak X-offset #-3 ^\tutti
	c-. r c-. r
	c-. f2 des4~
% Bars 266 to 270
	des ees2 c4~
	c des2 bes4~
	bes c2 aes4-.
	f-. r ees-. r \mark #11
	\MmrLength #15 R1*14^\solo
% Bars 271 to 275
	
% Bars 276 to 280
	
% Bars 281 to 285
	
	
	
	\cueDuring #"cueVoiceOboeImI" #DOWN {
		\ni R1
		R1 \no
	}
% Bars 286 to 290
	a'4\ff-! r e-! r
	f-! r fis-! r
	g-! r r2
	gis4-! r r2 \mark \default
	a4.\ff-\tweak X-offset #1 ^\tutti g!8 e4 r
% Bars 291 to 295
	f4. e8 a,4 r
	f'4-. f-. f4.-> a8
	g4. f8 e4. e8
	f2 fis
	e2. e4
% Bars 296 to 300
	f2 fis
	g2. e4
	f2 b,
	a4-. r r2
	R1*10^\solo
% Bars 301 to 305
	
% Bars 306 to 310
	
	
	
	
	\cueDuring #"cueVoiceOboeImI" #UP { 
		\ni R1
% Bars 311 to 315
		R
		<< R1 {s2. \clef bass s4 } >> \no
	} \mark \default \bar "||" \key a \major
	\clef treble e'4.\espressivo_\pdolce( d8 b2)
	r4 r8 e( d4. b8\<
	e4.\> d8\! b2)
% Bars 316 to 320
	R1_\gp
	R1*19
% Bars 321 to 325
	
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	\cueDuring #"cueVoiceOboeImI" #UP {
		\ni R1
		R1
		\MmrPos #-6 R
		R
		R
% Bars 341 to 345
		R \mark \default
		r2 r4 \no } a'\f(
	ais-.) b2( fis4)
	r2 r4 d(
	dis)-. e(~ e16 d cis b) r4
% Bars 346 to 350
	R1
	r2 r4 fis'4\p(~
	fis8 cis) d4.( ais8) b4~
	b_\dimmarkup b2 a!4\pp~
	a1~(
% Bars 351 to 355
	a2 gis)
	R1*11
	
% Bars 356 to 360
	
% Bars 361 to 365
	
	
	\cueDuring #"cueVoiceOboeImI" #DOWN { 
		\ni R1
		\MmrPos #8 R1 \no
	}
	gis'8-.\f gis4 gis8( fis) fis4 fis8(\<
% Bars 366 to 370
	f2\> e4)\! r \mark \default
	gis8-\tweak X-offset #1 ^\tutti gis4 gis8( fis!) fis4 fis8(
	eis4-.) cis-. r2
	gis'8 gis4 gis8( fis) fis4 fis8(
	f4-.) e-. r2
% Bars 371 to 375
	b'8 b4 b8( a) a4 a8(
	g4)-. g-. r2
	g4-. g-. r fis-.
	r a-. r2
	r r4 e(
% Bars 376 to 380
	dis8) r e4( d8) r cis4(
	fis gis8 a e4) e(
	dis8) r e4( d8) r cis4(
	a'2 e4) cis(
	e-.) d2-> d4~
% Bars 381 to 385
	d d2 d4(~
	d8 cis) d4.( ais'8) b4\sf~(
	b16 a! g fis) g4(~ g16 fis e dis) e4~
	e e~ e8-. r r4
	r f2 f4~
% Bars 386 to 390
	f8-. r r4 r2
	R1 \mark \default \bar "||" \key a \minor
	dis2\ff\trill e8( c b a)
	g4 r8 dis'-. e4-. r4
	gis2\trill a8( f e d)
% Bars 391 to 395
	c4 r8 gis'-. a4-. r
	R1
	e8\f e4 e e e8~
	e e4 e e e8~
	e4 e-. r2
% Bars 396 to 400
	R1*10^\solo
% Bars 401 to 405
	
% Bars 406 to 410
	\cueDuring #"cueVoiceOboeImI" #UP { 
		\ni R1
		R1
		R1
		r2 \no } f\f
	e4-.\f r r2
% Bars 411 to 415
	R1*3
	
	
	R1^\pocorit
	r2 r4 r^\intempo
% Bars 416 to 420
	R1*4
	
	
	
	\cueDuring #"cueVoiceOboeImI" #UP {
		\ni R1
% Bars 421 to 425
		R
		R
		R
		R
		r2 r4 \no } a,-.\f
% Bars 426 to 430
	a'2 a
	e e
	a,4-. r a-. r 
	a-. r d-. f-.
	a-. r a-. r
% Bar 431
	\ni R1\fermataMarkup \bar "|."
}
