%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicOboeIMvtIII = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceOboeImIII" #UP { 
		\clef "bass" \ni R2
		R2 \clef treble \no
	}
	R2*26
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	\tempo "poco rit." \MmrLength #12 R2*4
	
% Bars 31 to 35
	
	
	\tempo "in tempo" \MmrLength #12 R2*2
	
	\cueDuring #"cueVoiceOboeImIII" #DOWN {
		\ni R2
% Bars 36 to 40
		R
		R
		R \mark \default \no 
	}
	gis2\ff^\tutti
	a8-. a-. r f-.
% Bars 41 to 45
	r d-. r c-.
	r c-. r c-.
	r c-. r c-.
	e-. e-. r e-.
	r e-. r e-.
% Bars 46 to 50
	e2(
	f)
	e8-. a-. a-. gis-. 
	a-.^\solo r r4
	R2
% Bars 51 to 55
	e4\p^\tutti c
	a fis
	a8-. r r4
	R2*11^\solo
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	
	
	R2*4^\tutti
% Bars 66 to 70
	
	
	
	R2*15^\solo
% Bars 71 to 75
	
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2 \bar "||"
		\time 3/4 R2.
% Bars 86 to 90
		R2. \bar "||"
		\time 4/4 R1
		R1  \bar "||"
		\time 2/4 R2 \no
	}
	R2*3
% Bars 91 to 95
	
	
	\cueDuring #"cueVoiceOboeImIII" #UP { 
		\ni R2
		R
		R
% Bars 96 to 100
		r4 \no } e'8(^\dolce\p\< g
	a\> g)\! r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	R2*2^\tutti
% Bars 106 to 110
	
	c,8->\p b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis-.
	e8^\solo r r4
	R2*2
% Bars 111 to 115
	
	r4 a,16(\p\> e')\! r8
	R2*3
	
	
% Bars 116 to 120
	R2*2^\tutti
	
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2 \bar "||" \key d \minor
		R
		R
% Bars 121 to 125
		R \no
	}
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2
		R2
% Bars 136 to 140
		R \no
	}
	d4..\ff^\tutti d16
	des4.. des16
	c4 cis
	R2*2^\solo
% Bars 141 to 145
	
	r8.^\tutti c!16 e8-.[ r16 e16-.]
	a4 d,
	g c,
	d cis
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	R2*18
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni \MmrPos #-8 R2
		\MmrPos #-8 R
		\MmrPos #-8 R
		\MmrPos #-8 R
		\MmrPos #-8 R
% Bars 171 to 175
		\MmrPos #-8 R
		r4 \no } r8 a\f(
	a') a4 gis8(
	a) a4 r8
	R2
% Bars 176 to 180
	r4 r8 f(\f
	e) a4 d,8(
	c) f4 r8
	R2 \mark \default
	R2*12
% Bars 181 to 185
	
% Bars 186 to 190
	
% Bars 191 to 195
	
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2
		R
		R
		R
% Bars 196 to 200
		r4 \no } r8. a16\ff^\tutti
	a4.. a16
	a4.. a16
	\tuplet 3/2 4 {a4( g8) f( g a)}
	\tuplet 3/2 4 {a4( g8) f( g a)}
% Bars 201 to 205
	a4 e
	r8. c'!16-. c8[-. r16 c-.]
	\tuplet 3/2 4 {c4( bes8) g( a bes)}
	\tuplet 3/2 4 {bes4( a8) f( g a)}
	e4 d
% Bars 206 to 210
	d'8(\sf c bes a)
	bes\sf( a g f)
	e( f e f)
	e-.^\solo r r4
	a8(\sf^\tutti g! f e)
% Bars 211 to 215
	f(\sf e d c)
	b( c b c)
	b-.^\solo r r4
	e8(\fp^\tutti d' c b %\shape #'((0 . -1)(0 . 1)(0 . 0)(0 . 0)) Slur 
	c_\dimmarkup b a gis
% Bars 216 to 220
	a g! fis f
	e d c b) \bar "||" \mark \default \key a \minor
	a8\p r r4
	R2*13
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2
		R
		R
		R \no
	}
% Bars 236 to 240
	e'8->\p d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-. \mark \default
	g8-. r r4
	R2
	g'8( f16 e) g4~\<
% Bars 241 to 245
	g8(\> a16 bes)\! a8( g)
	f r r4
	R2*3
% Bars 246 to 250
	\tempo "poco rit." aes8(\p g16 aes) aes,4_\dimmarkup
	R2
	aes'8( g16 aes) aes,4
	R2
	\tempo "in tempo" \MmrLength #18 R2*5
% Bars 251 to 255
	
	
	
	
	\cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2
% Bars 256 to 260
		R \no
	}
	gis'2\f
	a8-.\ff^\tutti a-. r f-.
	r d-. r c-.
	r c-. r c-.
% Bars 261 to 265
	r c-. r c-.
	e-. e-. r e-.
	r e-. r e-.
	e2(
	f)
% Bars 266 to 270
	e8-. a-. a-. g-.
	g-. f-. f-. e-.
	a,-. r^\solo r4
	R2
	R2*3^\tutti
% Bars 271 to 275
	
	
	R2 \mark \markup {\small Solo} \bar "||" \key a \major
	R2*14
% Bars 276 to 280
	
% Bars 281 to 285
	
% Bars 286 to 290
	
	
	\cueDuring #"cueVoiceOboeImIII" #UP { 
		\ni R2 \bar "||"
		\time 3/4 R2.
		R2. \bar "||"
% Bars 291 to 295
		\time 4/4 R1
		R1 \bar "||"
		\time 2/4 R2 \no
	}
	R2*3
	
% Bars 296 to 300
	\bar "||"
	\tempo "Poco meno Allegro" \cueDuring #"cueVoiceOboeImIII" #UP {
		\ni R2
		R
		R
		r4 \no } r8. e16(_\pdolce
% Bars 301 to 305
	a cis e cis a8) r
	R2
	r8. a16( d fis a fis
	d8) r r e(\<
	fis\> e)\! r gis(\p
% Bars 306 to 310
	fis e) r e(\<
	fis\> e)\! r b'(\p
	a gis) r e(
	gis_\crescmarkup fis) r4
	r r8 eis(
% Bars 311 to 315
	gis fis) r4
	R2
	e8(\p eis) fis4(~\<
	fis8 fisis) gis4~\!
	gis8\> cis( b a)\!
% Bars 316 to 320
	R2*3
	
	
	r4 r8 a,(
	gis'4\sf\> fis)\!
% Bars 321 to 325
	a,\p r8 a(-\tweak X-offset #-2 \pp\<
	gis'4\> fis8)\! r
	gis4(\> fis8)\! r \bar "||"
	\tempo "Tempo primo" r4 r8 c'(\f
	a fis dis c)
% Bars 326 to 330
	a4. fis'8-.
	\tuplet 3/2 4 {a8( e)-. e-. fis( e)-. e-.}
	a,\p-. e'4 e8~
	e e4^\one e8~
	e e4^\two e8~
% Bars 331 to 335
	e e4^\three e8~
	e e4_\pcresc^\four e8~
	e e4^\five e8~
	e e4^\six e8~
	e e4^\seven e8
% Bars 336 to 340
	cis'-.\f r r4
	R2
	a8-. r r4
	a8-. r r4
	a2\fermata \bar "|."
}
