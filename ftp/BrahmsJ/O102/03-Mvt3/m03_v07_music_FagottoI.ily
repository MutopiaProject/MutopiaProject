%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIMvtIII = \relative c' {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni R2
		r4 r8 \no } a-.\p
	c4 r8 a-.
	c4 r8 c-.
	e4 r8 c-.
% Bars 6 to 10
	e4 r8 \clef tenor e-.
	g4( fis
	e dis)
	e r4
	\clef bass R2*7
% Bars 11 to 15
	
% Bars 16 to 20
	
	\cueDuring #"cueVoiceFagImIII" #DOWN {
		\ni \clef "treble" \MmrPos #-4 R2
		\MmrPos #-4 R
		\MmrPos #-4 R
		\MmrPos #-4 R \clef bass \no
	}
% Bars 21 to 25
	c4(\p bes
	a b!)
	c(\< cis
	d\! f8\> e
	f4\!) r
% Bars 26 to 30
	R2*3
	
	
	\tempo "poco rit." \cueDuring #"cueVoiceFagImIII" #UP {
		\ni \clef "treble" R2
		R \clef bass \no
	}
% Bars 31 to 35
	c2\pp~
	c
	\tempo "in tempo" c(
	b
	c8-.) r r4
% Bars 36 to 40
	R2*3
	
	\mark \default
	e,2\ff-\tweak X-offset #1 ^\tutti
	a,16-. b-. c8-. a16-. c-. f8-.
% Bars 41 to 45
	a,16-. d-. gis8-. a,16-. e'-. c'-. b-. 
	a8-. e-. f-. e-. 
	a-. e-. f-. e-. 
	c'-. g-. a-. g-. 
	c-. g-. aes-. g-. 
% Bars 46 to 50
	e'->-. c-. c->-. a-. 
	a->-. f-. f->-. d-. 
	c-. a-. e'-. e,-. 
	a-. r^\solo r4
	R2 \clef tenor
% Bars 51 to 55
	a'8\p-.^\tutti a'-. a-. fis-. 
	fis-. d-. d-. b-. 
	c16-. a-. c-. ees-. d-. b-. d-. d,-. 
	g8-. r r4^\solo
	R2*7 \clef bass
% Bars 56 to 60
	
% Bars 61 to 65
	
	\cueDuring #"cueVoiceFagImIII" #DOWN {
		\ni \MmrPos #8 R2
		\MmrPos #8 R
		\MmrPos #8 R \no
	}
	g,8\f-.^\tutti g'-. g,-. g'-. 
% Bars 66 to 70
	g,-. g'-. g,-. g'\p~
	g g4_\dimmarkup g8~
	g g4 g8
	R2*5
% Bars 71 to 75
	
	
	
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni R2
		R
% Bars 76 to 80
		R
		R
		r4 \no } g,\mf\<(
	bes) a(\!
	d) f
% Bars 81 to 85
	e8( c) f(-. e-.)
	d( a) a4(~
	a d,)
	r a''(~ \bar "||"
	\time 3/4 a c2)
% Bars 86 to 90
	b2. \bar "||"
	\time 4/4 r4 e,(\mf f fis
	g\< a ais b)\! \bar "||"
	\time 2/4 cis8-.\f r r4
	a8-. r r4
% Bars 91 to 95
	f!8-. r r4
	R2*2
	
	r4 e8(\p\< g
	a\> g)\! r4
% Bars 96 to 100
	r e8(^\dolce\< g
	a\> g)\! r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*1 \clef treble
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni \MmrPos #-6 R2
		\MmrPos #-6 R
		\MmrPos #-6 R \no
	} 
	\clef tenor a8->\p^\tutti g16-. g-. c8-> g16-. g-.
% Bars 106 to 110
	aes8-> g16-. g-. c-. e-. g-. e-.
	c8 r r4
	R2
	R2*4^\solo
% Bars 111 to 115
	
	
	r4 a16(\p\> e')\! r8
	R2
	r8. f16(_\dimmarkup e8) r
% Bars 116 to 120
	r8.^\tutti f16( e8) r
	R2
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni \clef "treble" R2 \bar "||" \key d \minor
		R
		R
% Bars 121 to 125
		R \no
	} 
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni R2
		R
% Bars 136 to 140
		R \clef bass \no
	}
	\clef bass d4..\ff^\tutti d16
	des4.. bes16
	f8. g16 a4
	R2*2^\solo
% Bars 141 to 145
	
	r8.^\tutti e'16-. c8-.[ r16 c-.]
	a4 b
	g a
	e a,
% Bars 146 to 150
	R2*2^\solo
	\clef tenor \mark \default
	r4 r8 c'\(_\ppdolce~
	c c4 bes8(
	a) a4 c8~
% Bars 151 to 155
	c c4 bes8(
	a) a4\) f'8\((
	ees) ees4 des8(
	d!) d4 d8~
	d d4 c8(
% Bars 156 to 160
	f,) f( g)\) \shape #'((0 . 2)(0 . 0)(0 . 0)(0 . 0)) PhrasingSlur g\((
	a!) a4 bes8(
	a) a4\) a8\((->
	fis') fis4 d8~
	d d4\) fis8\(~\>
% Bars 161 to 165
	fis fis4\! g8_\dimmarkup(
	c,) c4 bes8(
	g) g4 g8(
	a) a4\) r8
	\clef bass R2*7 
% Bars 166 to 170
	
% Bars 171 to 175
	
	\cueDuring #"cueVoiceFagImIII" #DOWN {
		\ni \clef "treble" R2
		R
		R
		R
% Bars 176 to 180
		r4 r8 \clef bass \no } a(\f
	c4) r8 f,(
	a4) r
	R2 \mark \default
	R2*9
% Bars 181 to 185
	
% Bars 186 to 190
	
	
	
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni \clef "treble" R2
		R
% Bars 191 to 195
		R
		R
		R
		R
		R
% Bars 196 to 200
		r4 \clef bass \no } r8. a16\ff^\tutti
	a8( f!16) f( d) d( cis) cis(
	f) f( d) d( bes') bes( a) a
	g4.. g16
	bes4.. bes16
% Bars 201 to 205
	f8. g16 a4
	r8. a16-. f8[ r16 d-.]
	bes4 c
	a bes8. f16
	a4 d,
% Bars 206 to 210
	d''2\sf
	d\sf
	d4-> d->
	d8-. r^\solo r4
	a2\sf^\tutti
% Bars 211 to 215
	a\sf
	a4-> a->
	a8-. r^\solo r4
	e'8(\fp^\tutti d c b
	c_\dimmarkup b a gis
% Bars 216 to 220
	a bes a gis
	a4 e) \bar "||" \mark \default \key a \minor
	a,8-.\p r r4
	R2*4 \clef tenor 
% Bars 221 to 225
	
	
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni R2
		R
		R \no
	}
% Bars 226 to 230
	e''8->\p d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	c( e) c-. a-. a,8-. r
	R2*3
	
% Bars 231 to 235
	
	a'16-.\p c-. e-. c-. g8-. r
	R2
	c16-. e-. g-. e-. b8-. r
	R2*3
% Bars 236 to 240
	
	\mark \default
	e8_\dolce( d16 e) d4
	f16( e d e) d4~
	d8 b( c\< cis
% Bars 241 to 245
	d\> g f\! e)
	f r r4
	R2*2
	
	\clef bass r4 des8(\p c16 des)
% Bars 246 to 250
	\tempo "poco rit." ces4_\dimmarkup~ ces8( bes16 ces)
	aes4~ aes8( g16 aes)
	ees4~ ees8( d16 ees)
	ees,8 r r4
	\tempo "in tempo" R2*5
% Bars 251 to 255
	
	
	
	
	e''2_\mfcresc(
% Bars 256 to 260
	f)(
	d)
	a,16-.\ff b-. c8-. a16-. c-. f8-.
	a,16-. d-. gis8-. a,16-. e'-. c'-. b-.
	a8-. e-. f-. e-. 
% Bars 261 to 265
	a-. e-. f-. e-. 
	c'-. g-. a-. g-. 
	c-. g-. aes-. g-. 
	e'->-. c-. c->-. a-. 
	a->-. f-. f->-. d-. 
% Bars 266 to 270
	c-. a-. e'-. e,-. 
	a'-. a,-. c'-. c,-. 
	d'-. r^\solo r4
	R2
	R2*3^\tutti
% Bars 271 to 275
	
	
	r4 r^\solo \bar "||"
	\key a \major R2*4
% Bars 276 to 280
	
	
	\cueDuring #"cueVoiceFagImIII" #UP {
		\ni \clef "treble" R2
		R
		<<R2 {s4 \clef tenor s }>>
% Bars 281 to 285
		R2
		r4 \no } \clef bass e,\mf\<(
	g) fis(\!
	b,)\> d\!
	cis8( a) d(-. cis-.)
% Bars 286 to 290
	b( fis) fis4~
	fis b
	r fis'(~ \bar "||"
	\time 3/4 fis a2)
	gis2. \bar "||"
% Bars 291 to 295
	\time 4/4 r4 cis,(_\pcresc d dis
	e\<  fis fisis gis)\! \bar "||"
	\time 2/4 ais8-.\f r r4
	fis8-. r r4
	e8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\tempo "Poco meno Allegro" a8(_\pdolce e' dis d
	cis b a) e(
	fis e a e
	f e4.)~
% Bars 301 to 305
	e \clef tenor a8_\piup(
	b a d a
	<< {bes a4.)~ } {s4 s_\dimmarkup}>>
	a4. gis8
	<< {r8 b4 b8} {s8 s\< s\> s\!} >>
% Bars 306 to 310
	r8 b4\p b8 
	<< {r8 b4 b8} {s8 s\< s\> s\!} >>
	r8 d4\p d8
	r8 a4_\crescmarkup fis'8(
	e d cis b
% Bars 311 to 315
	d a4) a'8(
	gis\> fis e f)\!
	e\p r r4
	R2
	r4 r8 a(
% Bars 316 to 320
	gis\> fis d gis,)\! 
	a\p r r4
	R2 \clef bass
	eis4\f fis
	a2\sf\> %<< a2 {\once \override Hairpin.minimum-length = #5 s4\sf\> s\!}>>
% Bars 321 to 325
	a4\p r
	a4.\pp\> r8\! %<< {a4. r8} {s4\pp\> s\!}>>
	a4.\pp\> r8\! \bar "||" %<< {a4. r8} {s4\pp\> s\!}>> \bar "||"
	\tempo "Tempo primo" r4 r8 c(\f
	a fis dis c)
% Bars 326 to 330
	a4. b'8-.
	cis-. r d-. r
	cis-.\p r r4
	R2*7
% Bars 331 to 335
	
% Bars 336 to 340
	cis8-.\f r r4
	R2
	cis8-. r r4
	cis8-. r r4
	a2\fermata \bar "|."
}
