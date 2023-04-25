%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIMvtIII = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring "cueVoiceFloteImIII" #UP {
		\ni \clef bass R2
		R \no \clef treble
	}
	R2*22
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\cueDuring #"cueVoiceFloteImIII" #UP {
		\ni R2
% Bars 26 to 30
		R
		R
		R
		R^\pocorit
		R \no
	}
% Bars 31 to 35
	c2\pp~
	c(
	a8)^\intempo r r4
	R2*5
% Bars 36 to 40
	
	
	\mark \default
	e'2\ff-\tweak X-offset #1.5 ^\tutti
	c8-. c-. r f-.
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
	a-. r r4^\solo
	R2
% Bars 51 to 55
	a,16\p-.^\tutti a-. c-. a-. fis-. fis-. a-. fis-. 
	d-. d-. fis-. d-. b-. b-. d-. b-. 
	a-. c-. ees-. c-. b-. d-. a-. d-. 
	b-. g-. r8 r4^\solo
	R2*10
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	
	
	R2*4^\tutti
% Bars 66 to 70
	
	
	
	R2*8^\solo
% Bars 71 to 75
	
% Bars 76 to 80
	
	
	\cueDuring #"cueVoiceFloteImIII" #UP {
		\ni R2
		R
		R
% Bars 81 to 85
		R
		R
		R
		R
		R \bar "||" 
		\time 3/4 R2.
% Bars 86 to 90
		R2.
		\bar "||" 
		\time 4/4 r2 r4 \no } fis'(\f
	g\< a ais b) \bar "||" \time 2/4
	cis8-.\f r r4
	a8-. r r4
% Bars 91 to 95
	a'8-. r r4
	R2*3
	
	
	\shape #'((0 . -1.5)(0 . 1)(0 . 0)(0 . -1)) Slur c,8(\p g' fis f
% Bars 96 to 100
	e d c\< g
	a\> g)\! r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	R2*2^\tutti
% Bars 106 to 110
	
	\cueDuring "cueVoiceFloteImIII" #UP {
		\ni R2
		R \no
	}
	e'8->\p^\solo d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
% Bars 111 to 115
	a8 r r4
	r a16(\p\> e') r8\!
	R2*3
% Bars 116 to 120
	\cueDuring "cueVoiceFloteImIII" #UP { 
		\ni \MmrPos #4 R2^\tutti 
		\MmrPos #4 R
		R \bar "||" 
		\key d \minor R2
		R
% Bars 121 to 125
		R \no
	}
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring "cueVoiceFloteImIII" #UP { 
		\ni R2
		R
% Bars 136 to 140
		R \no
	}
	\times 2/3 {a4(\ff^\tutti g8)} \times 2/3 {f( g a)}
	\times 2/3 {a4( g8)} \times 2/3 {f( g a)}
	a4 e
	R2*2^\solo
% Bars 141 to 145
	
	r8. g16-.^\tutti g8[-. r16 g-.]
	\times 2/3 {g4( f8)} \times 2/3 {d( e f)}
	\times 2/3 {f4( e8)} \times 2/3 {c( d e)}
	b4 a
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	\MmrLength #10 R2*18
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	\cueDuring "cueVoiceFloteImIII" #UP { 
		\ni \MmrPos #6 R2 
		\MmrPos #6 R
		\MmrPos #6 R
		\MmrPos #6 R
		\MmrPos #6 R
% Bars 171 to 175
		\MmrPos #6 R
		r4 r8 \no } a,8(\f
	a'-.) a4 gis8(
	a) a4 r8
	R2
% Bars 176 to 180
	r4 r8 f'(\f
	e) a,4 d8(
	c) f,4 r8
	R2 \mark \default
	R2*12
% Bars 181 to 185
	
% Bars 186 to 190
	
% Bars 191 to 195
	
	\cueDuring "cueVoiceFloteImIII" #UP { 
		\ni R2
		R
		R
		R
% Bars 196 to 200
		r4 r8. \no } a'16\ff^\tutti
	a4.. a16
	a4.. a16
	\times 2/3 {a4( g8)} \times 2/3 {f( g a)}
	\times 2/3 {a4( g8)} \times 2/3 {f( g a)}
% Bars 201 to 205
	a4 e
	r8. f16-. a8[-. r16 f-.]
	\times 2/3 {a4( g8)} \times 2/3 {g( a bes)}
	\times 2/3 {bes4( a8)} \times 2/3 {f( g a)}
	e4 d8. d16
% Bars 206 to 210
	d8(\sf c16) c( bes) bes( a) a(
	bes8\sf)( a16) a( g) g( f) f(
	e) e( f) f( e) e( f) f(
	e8-.) r^\solo r8. a'16
	a8(\sf^\tutti g16) g( f) f( e) e(
% Bars 211 to 215
	f8\sf)( e16) e( d) d( c) c(
	b) b( c) c( b) b( c) c(
	b8-.) r^\solo r8. e16
	e2\fp~^\tutti
	e_\dimmarkup~
% Bars 216 to 220
	e~
	e \bar "||" \mark \default \key a \minor
	a,8-.\p^\solo r r4
	R2*3
	
% Bars 221 to 225
	
	a16\p-. c-. e-. c-. g8-. r
	R2
	c16-. e-. g-. e-. b8-. r
	R2*9
% Bars 226 to 230
	
% Bars 231 to 235
	
	
	
	\cueDuring #"cueVoiceFloteImIII" #UP {
		\ni R2
		R \no
	}
% Bars 236 to 240
	e8->\p d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-. \mark \default
	g8-. r r4
	R2*3
	
% Bars 241 to 245
	
	f8(\p e16 f) e4
	d16( c bes c) a4
	R2*2
% Bars 246 to 250
	\MmrLength #10 R2*4^\pocorit
	
	
	
	\MmrLength #10 R2*4^\atempo
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceFloteImIII" #UP {
		\ni R2 \no
	}
	e''2_\mfcresc(
% Bars 256 to 260
	f)(
	gis)
	a8-.\ff c,-.^\tutti r f
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
	R2*1
	R2*3^\tutti
% Bars 271 to 275
	
	
	R2^\solo \bar "||" \key a \major
	R2*11
% Bars 276 to 280
	
% Bars 281 to 285
	
	
	
	
	\cueDuring "cueVoiceFloteImIII" #UP {
		\ni R2
% Bars 286 to 290
		R
		R
		R \bar "||" 
		\time 3/4 R2.
		R \bar "||" 
% Bars 291 to 295
		\time 4/4 a4\rest \no } cis,(_\pcresc d dis
	e\< fis fisis gis) \bar "||" \time 2/4
	ais8-.\f r r4
	fis8-. r r4
	fis'8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\tempo "Poco meno Allegro" a,8(_\pdolce e' dis d
	cis b a) r
	R2
	r8. e16( a cis e cis
% Bars 301 to 305
	a8) r r a(
	b a d a
	<< {bes a4.)~} {s4 s_\dimmarkup} >>
	a4.( gis!8)
	R2*4
% Bars 306 to 310
	
	
	
	r4 r8 d'(_\crescmarkup
	cis b a gis
% Bars 311 to 315
	eis fis) r fis'(
	e\> d cis b)\!
	a\p r r4
	R2
	r4 r8 a'(
% Bars 316 to 320
	gis\> fis d gis,)\!
	a\p r r4
	R2
	r4 r8 a(
	gis'4\sf\> fis)\!
% Bars 321 to 325
	a,\p r8 a(\pp\<
	gis'4\> fis8)\! r
	gis4(\> fis8)\! r \bar "||"
	\tempo "Tempo primo" a,8-.\f r dis4->~
	dis2~
% Bars 326 to 330
	dis8 d-. cis-. b-.
	cis-. r b-. r
	a-.\p e'4 e8~
	e e4^\one e8~
	e e4^\two e8~
% Bars 331 to 335
	e e4^\three e8~
	e e4_\pcresc^\four e8~
	e e4^\five e8~
	e e4^\six e8~
	e e4^\seven e8
% Bars 336 to 340
	cis8-.\f r r4
	R2
	cis8-. r r4
	cis8-. r r4
	a2\fermata \bar "|."
}
