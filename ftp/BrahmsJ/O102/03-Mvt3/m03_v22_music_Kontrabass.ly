% Project Name : Double Concerto Op102
% Fichier :      m03_v22_music_Kontrabass.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicKontrabassMvtIII = \relative c {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	a4\p^\pizz^\solo r 
	a r 
	c r
	c r
	e r
% Bars 6 to 10
	e r
	g a
	g b
	e, f
	e f8[ r16 d]
% Bars 11 to 15
	a4 r
	a r
	c r 
	c r
	e r
% Bars 16 to 20
	e r
	g a
	g b
	e, f
	fis g
% Bars 21 to 25
	c, r
	R2*7
% Bars 26 to 30
	
	
	
	\tempo "poco rit." \MmrLength #10 R2*4
% Bars 31 to 35
	
	
	\tempo "in tempo" \cueDuring #"cueVoiceKtbmIII" #UP {
		\ni \clef treble R2
		R
		\clef tenor R
% Bars 36 to 40
		R
		\clef bass \MmrPos #-6 R
		R \mark \default \no
	}
	e,16\ff-.^\tutti^\arco e'-. e,-. e'-. e,-. e'-. e,-. e'-. 
	a,8-. c-. a-. f'-.
% Bars 41 to 45
	a,-. gis'-. a,-. c'16-. b-.
	a8-. e-. f-. e-. 
	a-. e-.  f-. e-.
	c'-. g-. a-. g-.
	c-. g-. aes-. g-.
% Bars 46 to 50
	e'->-. c-. c->-. a!-. 
	a->-. f-. f->-. d-. 
	c-. a-. e'-. e,-.
	a-. r r4^\solo
	R2
% Bars 51 to 55
	R2*3^\tutti
	
	
	R2*7^\solo
	
% Bars 56 to 60
	
% Bars 61 to 65
	\cueDuring #"cueVoiceKtbmIII" #UP {
		\ni \MmrPos #-6 R2
		\MmrPos #-6 R
		\MmrPos #-6 R
		\MmrPos #-10 R \no
	}
	g8-.\f^\tutti g'-. g,-. g'-.
% Bars 66 to 70
	g,-. g'-. g,-. r
	R2*3
	
	
	R2*3^\solo
% Bars 71 to 75
	
	
	r4 f'8-.(_\pocof e-.)
	d4( a)~
	a d~
% Bars 76 to 80
	d f,
	g2~
	g4\< g(
	bes) a\!(
	d) f
% Bars 81 to 85
	e8( c) f-.( e-.)
	d( a) a4~
	a d~
	d f \bar "||"
	\time 3/4 fis2 d4
% Bars 86 to 90
	g2 g,4 \bar "||"
	\time 4/4 a a'( d,) d
	g2\< g,\! \bar "||"
	\time 2/4 a8-.\f r r4
	d8-. r r4
% Bars 91 to 95
	g,8-. r r4
	r g'8^\pizz\p r
	c, r r4
	R2*7
% Bars 96 to 100
	
	
	
	
	\mark \default
% Bars 101 to 105
	a8-\tweak X-offset #1.5 ^\pizz r r4
	R2*3
	
	
	R2*4^\tutti
% Bars 106 to 110
	
	
	
	R2*4^\solo
	
% Bars 111 to 115
	
	
	\cueDuring #"cueVoiceKtbmIII" #UP {
		\ni R2
		\MmrPos #4 R
		\MmrPos #4 R
% Bars 116 to 120
		\MmrPos #4 R
		\MmrPos #4 R
		<< \MmrPos #4  R {s4 s8. s16^\solo } >> \bar "||" \key d \minor
		R2 \no 
	}
	g4..^\arco\mf g16
% Bars 121 to 125
	bes4.. bes16 
	f8. g16 a4
	r8. e''16-. c8-.[ r16 a-.]
	f4.. b,16
	e4.. a,16
% Bars 126 to 130
	d4 g,
	R2*3
	
	
	r8 g'^\arco\f-. a-. a,-.
% Bars 131 to 135
	d-.\p r r4
	R2*2
	
	r8 d-.\f f-. e-.
	a-.\p r r4
% Bars 136 to 140
	R2
	e,8.\ff^\tutti e16 g8. g16
	bes4.. bes16
	f8. g16 a4
	R2*2^\solo
% Bars 141 to 145
	
	r8. e''16-.\ff^\tutti c8-.[ r16 a-.]
	f4 g
	e f8. c16
	e4 a,
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	r4 f'\pp~
	f c~
	c f~
% Bars 151 to 155
	f c~
	c f~
	f bes,~
	bes b~
	b c~
% Bars 156 to 160
	c c\<~
	c\> c~\!
	c cis(\<
	d\>) a\!~
	a d~
% Bars 161 to 165
	d g,_\dimmarkup~
	g bes~
	bes c~
	c f,8 r
	R2*9
% Bars 166 to 170
	
% Bars 171 to 175
	
	
	
	\cueDuring #"cueVoiceKtbmIII" #UP {
		\ni << \MmrPos #-6 R2 {s4 s8 \clef treble s} >>
		R2
% Bars 176 to 180
		R
		R
		R
		R \mark \default
		r4 \no \clef bass } d'\pp~
% Bars 181 to 185
	d a~
	a d~
	d a~
	a d~\<
	d g,~\>
% Bars 186 to 190
	g\! gis~
	gis a~
	a a\pp~
	a d~
	d b~
% Bars 191 to 195
	b fis~
	fis dis'~
	dis e_\dimmarkup~
	e g,~
	g a(~
% Bars 196 to 200
	a d8) r^\tutti
	R2*2
	
	g,4..\ff g16
	bes4.. bes16
% Bars 201 to 205
	f8. g16 a4
	r8. a'16-. f8-.[ r16 d-.]
	bes4 c
	a bes8. f16
	a4 d
% Bars 206 to 210
	d'2\sf
	d\sf
	d4\sf d\sf
	d8-. r^\solo r4
	a2\sf^\tutti
% Bars 211 to 215
	a\sf
	a4\sf a\sf
	a8-. r^\solo r4
	e8-.^\pizz^\tutti r r4
	R2*2
% Bars 216 to 220
	
	e,8\p r r4 \bar "||" \key a \minor \mark \default
	a4^\solo r 
	a r
	c r
% Bars 221 to 225
	c r
	e r
	e r
	g a
	g b
% Bars 226 to 230
	e, f
	e f8[ r16 d]
	a4 r
	a r 
	c r
% Bars 231 to 235
	c r
	e r
	e r
	g a
	g b
% Bars 236 to 240
	e, f 
	fis g \mark \default
	c, r
	R2*5
% Bars 241 to 245
	
	
	
	\cueDuring #"cueVoiceKtbmIII" #UP {
		\ni \clef treble R2
		R \no \clef bass
	}
% Bars 246 to 250
	\tempo "poco rit." des2^\arco\pp(
	d!
	ees~
	ees)
	\tempo "in tempo" aes,8^\pizz r r4
% Bars 251 to 255
	R2*5
% Bars 256 to 260
	\cueDuring #"cueVoiceKtbmIII" #UP { \ni R2 \no }
	e2\sf^\arco
	a8-.\ff^\tutti c-. a-. f'-.
	a,-. gis'-. a,-. c'16-. b-.
	a8-. e-. f-. e-.
% Bars 261 to 265
	a-. e-. f-. e-.
	c'-. g-. a-. g-.
	c-. g-. aes-. g-.
	e'-.-> c-. c->-. a!-.
	a->-. f-. f->-. d-. 
% Bars 266 to 270
	c-. a-. e'-.\sf e,-.
	a'-.\sf a,-. c'-.\sf c,-.
	d'-. r^\solo r4
	R2
	e,,4(_\mf^\tutti e-\tweak X-offset #0 \dimD\>
% Bars 271 to 275
	e e
	e e)\!
	R2 \bar "||" \key a \major
	R2*3^\solo
	
% Bars 276 to 280
	
	r4 d''8(-.\mf cis-.)
	b4( fis)~
	fis b,~
	b d
% Bars 281 to 285
	e2~
	e4 e(\< 
	g) fis(\!
	b)\> d,\!
	cis8( a) d-.( cis-.)
% Bars 286 to 290
	b( fis) fis4~
	fis b~
	b d \bar "||" \time 3/4
	dis2_\crescmarkup b4
	e2 e,4 \bar "||"
% Bars 291 to 295
	\time 4/4 fis fis'( b,)\< b
	e2 e,\! \bar "||"
	\time 2/4 fis8-.\f r r4
	b8-. r r4
	e,8-. r r4
% Bars 296 to 300
	r e'8^\pizz\p r \bar "||"
	\tempo "Poco meno Allegro" a,8 r r4
	R2*4
% Bars 301 to 305
	
	\cueDuring #"cueVoiceKtbmIII" #UP {
		\ni \MmrPos #4 R2
		\MmrPos #4 R
		\MmrPos #4 R \no
	}
	d4^\pizz\p r\one 
% Bars 306 to 310
	d4 r\two
	d r\three
	d r\four
	d_\crescmarkup r\five
	d r\six
% Bars 311 to 315
	d r\seven
	d r\eight
	cis^\arco\p d\<
	dis e\!
	eis fis\>
% Bars 316 to 320
	b, e!8( d)\!
	cis4\p d\<
	dis e\!
	eis\f fis
	b,\sf\> r4\!
% Bars 321 to 325
	cis\p r
	b4.\pp\> r8\!
	b4.\> r8\! \bar "||" 
	\tempo "Tempo primo" cis4-.\f fis-.
	R2
% Bars 326 to 330
	r8 f-! e-! d-!
	cis-. r e-. r
	a,-.\p r r fis'!-.\sfp
	e-. d-. cis-. b-.
	cis-. r r fis-.\sfp
% Bars 331 to 335
	e-. d-. cis-. b-.
	cis-. cis'4\p e,8\<~
	e a4\! e8~\cresc
	e cis'4 e,8~
	e a4 e8-.
% Bars 336 to 340
	a,-.\f r r4
	R2
	a8-. r r4
	a8-. r r4
	a2\fermata \bar "|."
}
