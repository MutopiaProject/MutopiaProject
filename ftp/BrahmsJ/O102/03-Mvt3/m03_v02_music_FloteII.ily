% Project Name : Double Concerto Op102
% Fichier :      m03_v02_music_FloteII.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFloteIIMvtIII = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni \clef bass R2
		R \no \clef treble
	}
	R2*22
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni R2
% Bars 26 to 30
		R
		R
		R
		R^\pocorit
		R \no
	}
% Bars 31 to 35
	a2\pp~
	a(
	f8)^\intempo r r4
	R2*5
% Bars 36 to 40
	
	
	\once \override Score.RehearsalMark.X-offset = #-1.8 \mark \default
	e'2\ff^\tutti
	a,8-. a-. r a-.
% Bars 41 to 45
	r gis-. r a-.
	r a-. r a-.
	r a-. r a-.
	c-. c-. r c-.
	r c-. r c-.
% Bars 46 to 50
	c2(
	a)
	a8-. c-. b-. b-.
	a-. r^\solo r4
	R2
% Bars 51 to 55
	R2*3^\tutti
	
	
	\MmrLength #12 R2*11^\solo
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	
	
	R2*4^\tutti
% Bars 66 to 70
	
	
	
	\MmrLength #10 R2*8^\solo
	
% Bars 71 to 75
	
% Bars 76 to 80
	
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni R2
		R
		R
		R
% Bars 81 to 85
		R
		R
		R
		R \bar "||" 
		\time 3/4 R2.
% Bars 86 to 90
		R \bar "||" 
		\time 4/4 R1 %r2 r4 fis'(\f
	}
	b,4(\f\< c cis d8 g)\! \bar "||" \time 2/4
	e-.\f r r4
	fis8-. r r4
% Bars 91 to 95
	f!8-. r r4
	R2*3
	
	
	c'8(\p bes a aes
% Bars 96 to 100
	g f e\< d
	f\> e)\! r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	R2*4^\tutti
% Bars 106 to 110
	
	
	
	R2*7^\solo %e'8->\p d16-. e-. d8-> e16-. d-.
	%e8-> d16-. e-. d( f) d-. b-.
% Bars 111 to 115
	%a8 r r4
	%r a16(\p\> e') r8\!
	%R2*6
% Bars 116 to 120
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni \MmrPos #4 R2^\tutti
		\MmrPos #4 R
		R \bar "||" 
		\key d \minor R
		R
% Bars 121 to 125
		R
	}
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni R2
		R
% Bars 136 to 140
		R \no
	}
	\times 2/3 {f'4(\ff^\tutti e8)} \times 2/3 {d( e f)}
	\times 2/3 {f4( ees8)} \times 2/3 {des( ees f)}
	c4 cis
	R2*2^\solo
% Bars 141 to 145
	
	r8.^\tutti c!16-. e8[-. r16 e-.]
	\times 2/3 {e4( d8)} \times 2/3 {b( c d)}
	\times 2/3 {d4( c8)} \times 2/3 {a( b c)}
	gis4 a^\solo
% Bars 146 to 150
	R2*2
	\mark \default
	R2*18
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	\cueDuring #"cueVoiceFloteIImIII" #DOWN {
		\ni R2
		R
		R
		R
		R
% Bars 171 to 175
		R
		r4 r8 \no } a,(\f
	f'-.) f4 e8(
	f) f4 r8
	R2
% Bars 176 to 180
	r4 r8 d'(\f
	c) a4 bes8(
	a) f4 r8
	R2 \mark \default
	R2*12
% Bars 181 to 185
	
% Bars 186 to 190
	
% Bars 191 to 195
	
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni R2
		R
		R
		R
% Bars 196 to 200
		r4 \no } r8. -\tweak X-offset #-2.8 ^\tutti a'16\ff
	a4.. f!16
	f4.. f16
	\times 2/3 {f4( e8)} \times 2/3 {d( e f)}
	\times 2/3 {f4( ees8)} \times 2/3 {des( ees f)}
% Bars 201 to 205
	c4 cis
	r8. c!16-. c8[-. r16 c-.]
	\times 2/3 {c4( bes8)} \times 2/3 {e( f g)}
	\times 2/3 {g4( f8)} \times 2/3 {d( e f)}
	cis4 d8. d16
% Bars 206 to 210
	d8(\sf c!16) c( bes) bes( a) a(
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
	a,8-.\p r r4
	R2*17
	
% Bars 221 to 225
	
	%a16\p-. c-. e-. c-. g8-. r
	%R2
	%c16-. e-. g-. e-. b8-. r
	%R2*11
% Bars 226 to 230
	
% Bars 231 to 235
	
% Bars 236 to 240
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni R2 
		R \mark \default 
		R
		R
		R
% Bars 241 to 245
		R \no
	}
	a,8(\p c16 d) c4
	bes16( a g a) f4
	R2*2
% Bars 246 to 250
	\MmrLength #10 R2*4^\pocorit
	
	
	
	\MmrLength #10 R2*4^\intempo
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni \MmrPos #-6 R2 \no
	}
	e''2_\mfcresc(
% Bars 256 to 260
	d)(
	b)
	c8-.\ff^\tutti a-. r a
	r gis-. r a-.
	r a-. r a-.
% Bars 261 to 265
	r a-. r a-.
	c-. c-. r c-.
	r c-. r c-.
	c2(
	a)
% Bars 266 to 270
	a8-. c-. b-. b-.
	c-. c-. g-. g-.
	f-. r r4^\solo
	R2
	R2*3^\tutti
% Bars 271 to 275
	
	
	R2^\solo \bar "||" \key a \major
	R2*11
% Bars 276 to 280
	
% Bars 281 to 285
	
	
	
	
	\cueDuring #"cueVoiceFloteIImIII" #UP {
		\ni \MmrPos #-6 R2
% Bars 286 to 290
		R2
		R
		R \bar "||" \time 3/4
		R2.
		R2. \bar "||" \time 4/4
% Bars 291 to 295
		R1 \no %r4 cis,(_\pcresc d dis
	}
	gis,4(\< a ais b8 e) \bar "||" \time 2/4
	cis8-.\f r r4
	dis8-. r r4
	d!8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\tempo "Poco meno Allegro" a'8(_\pdolce g fis f
	e d cis) r
	R2*2
	%r8. e16( a cis e cis
% Bars 301 to 305
	r4 r8 fis(
	g fis4) fis8(
	<< {f fis4.)~} {s4 s_\dimmarkup} >>
	fis4. e8
	R2*4
% Bars 306 to 310
	
	
	
	r4 r8 fis(_\crescmarkup
	e d cis b
% Bars 311 to 315
	d a) r a'(
	gis\> fis e gis)\!
	a\p r r4
	R2
	r4 r8 fis'(
% Bars 316 to 320
	e\> d b e,)\!
	a\p r r4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	R2
	r4 r8 a(
	e'4\sf\> d)\!
% Bars 321 to 325
	a\p r8 a(\pp\<
	e'4\> dis8)\! r
	e4(\> dis8)\! r \bar "||"
	\tempo "Tempo primo" a8-.\f r dis4->~
	dis2~
% Bars 326 to 330
	dis8 d-. cis-. b-.
	a-. r gis-. r
	a-.\p r r4
	R2*3%e e4 e8~
	%e e4 e8~
% Bars 331 to 335
	%e e4 e8~
	r8 e'4_\pcresc e8~
	e e4 e8~
	e e4 e8~
	e e4 e8
% Bars 336 to 340
	a,8-.\f r r4
	R2
	a8-. r r4
	a8-. r r4
	a2\fermata \bar "|."
}
