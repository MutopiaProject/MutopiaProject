%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicKlarinetIIMvtIII = \relative c'' {
	\clef treble
	\key c \minor
	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni \clef "bass" R2
		R \no
	}
	R2*6 \clef treble
% Bars 6 to 10
	
	
	
	b!4( c
	b! c8 d
% Bars 11 to 15
	ees8) r r4
	R2*13
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	
	
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
% Bars 26 to 30
		R
		R
		R \no
	}
	\tempo "poco rit." c2~\pp
	c~
% Bars 31 to 35
	c~
	c
	\tempo "in tempo" aes(
	f
	ees8)-. r r4
% Bars 36 to 40
	R2*3
	
	\mark \default
	b'!2\ff^\tutti
	c8-. c-. r aes-.
% Bars 41 to 45
	r f-.  r ees-.
	r ees-. r ees-.
	r ees-. r ees-.
	g-. g-. r g-.
	r g-. r g-.
% Bars 46 to 50
	bes4( c~
	c2)
	c8-. c-. c-. b!-.
	c-. r^\solo r4
	R2
% Bars 51 to 55
	R2*3^\tutti
	
	
	R2*11^\solo
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	
	
	R2*4^\tutti
% Bars 66 to 70
	
	
	
	R2*8^\solo
% Bars 71 to 75
	
% Bars 76 to 80
	
	\cueDuring #"cueVoiceKlarIImIII" #UP {
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
		\time 4/4 R1 \no
	}
	d,4(\< ees e f8 bes)\! \bar "||" 
	\time 2/4 g8-.\f r r4
	f8-. r r4
% Bars 91 to 95
	aes8-. r r4
	R2
	ees'8\p( des c ces
	bes aes g f\<
	aes\> g\!) r4
% Bars 96 to 100
	R2*5
	
	
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	R2*2^\tutti
% Bars 106 to 110
	
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
		R
		R^\solo \no
	}
	R2*6
% Bars 111 to 115
	
	
	%r4 c16\p\>( g')\! r8
	%R2*5
% Bars 116 to 120
	R2*2^\tutti
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2 \bar "||" \key f \minor
		R
% Bars 121 to 125
		R
		R \no
	}
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
		R
% Bars 136 to 140
		R \no
	}
	f4..\ff^\tutti f16
	fes4.. fes16
	ees4 e
	R2*2^\solo
% Bars 141 to 145
	
	r8.^\tutti bes'16-. ees8[-. r16 ees-.]
	ees4 d
	d c
	b c
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	r4 r8 c,-\tweak X-offset #-2 _\ppdolce\((
	aes') aes4 g8(
	aes) aes4 c,8(
% Bars 151 to 155
	aes') aes4 g8(
	aes) aes4\) des8\((
	c) c4 aes8~
	aes\) r8 r4
	R2
% Bars 156 to 160
	r4 r8 ees\((
	aes) aes4 g8(
	aes) aes4\) g8->\((
	a) a4\) r8
	r4 r8 f8\((\>
% Bars 161 to 165
	c') c4\! bes8(_\dimmarkup
	ges) ges4 f8(
	des!) des4 bes8(
	c) c4\) r8
	R2*15
% Bars 166 to 170
	
% Bars 171 to 175
	
% Bars 176 to 180
	
	
	
	\mark \default
	R2
% Bars 181 to 185
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
		R
		R
		R \no
	}
	R2*7
% Bars 186 to 190
	
% Bars 191 to 195
	
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
		R
		R
		R
% Bars 196 to 200
		r4 \no } r8. c''16\ff^\tutti
	c4.. aes!16
	aes4.. aes16
	\tuplet 3/2 4 {aes4( g8) f( g aes)}
	\tuplet 3/2 4 {aes4( ges8) fes( ges aes)} 
% Bars 201 to 205
	ees4 e 
	r8. aes,16-. aes8[-. r16 aes-.]
	aes4 g
	g f
	e f
% Bars 206 to 210
	f'8(\sf ees! des c)
	des(\sf c bes aes)
	g( d g d)
	g-. r r4
	c8(\sf^\solo bes! aes g)
% Bars 211 to 215
	aes'(\sf^\tutti g f ees)
	d( a d a)
	d-. r^\solo r4
	g,8(\fp^\tutti aes! g f
	g_\dimmarkup f ees f
% Bars 216 to 220
	g4 f
	g8 f ees d) \bar "||" \mark \default \key c \minor
	c-.\p^\solo r r4
	R2*17
	
% Bars 221 to 225
	
	
	%ces'16-.\p ees-. g-. ees-. bes8-. r
	%R2
	%ees16-. g-. bes-. g-. d8-. r
% Bars 226 to 230
	%R2*7
% Bars 231 to 235
	
	
	%ces16\p-. ees-. g-. ees-. bes8-. r
	%R2
	%ees16-. g-. bes-. g-. d8-. r
% Bars 236 to 240
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
		R \mark \default \no
	}
	ees'4_\dolce( des
	c d!)~
	d8 r r4
% Bars 241 to 245
	R2*3
	
	
	b8(_\dolce dis16 e) dis8( cis16 dis)
	cis( b a b) gis4
% Bars 246 to 250
	\tempo "poco rit." R2*4
	%d!8(_\dimmarkup cis16 d) d'4
	%R2
	%fis,8(_\pp eis16 fis) fis'4~
	\tempo "in tempo" R2*4 %\tempo "in tempo" fis8 r r4
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2 \no 
	}
	g,2_\mfcresc(
% Bars 256 to 260
	\shape #'((0 . 2)(0 . 1)(0 . 1)(0 . 0)) Slur f)(
	f'')
	ees8-.\ff^\tutti c-. r aes-.
	r f-. r ees-.
	r ees-. r ees-.
% Bars 261 to 265
	r ees-. r ees-.
	g-. g-. r g-.
	r g-. r g-.
	bes4( c)~
	c2
% Bars 266 to 270
	c8-. ees-. d-. d-.
	c-. c-. bes-. bes-.
	aes-. r^\solo r4
	R2*1
	R2*3
% Bars 271 to 275
	
	
	r4 r^\solo \bar "||" \key c \major
	R2*7
% Bars 276 to 280
	
% Bars 281 to 285
	\cueDuring #"cueVoiceKlarIImIII" #UP {
		\ni R2
		R
		R
		R
		R
% Bars 286 to 290
		R
		R
		R \bar "||" 
		\time 3/4 R2.
		R \bar "||"
% Bars 291 to 295
		\time 4/4 \MmrPos #-6 R1 \no
	}
	b,4(\< c cis d8 g)\! \bar "||"
	\time 2/4 e8-.\f r r4
	d8-. r r4
	f!8 r r4
% Bars 296 to 300
	R2 \bar "||"
	\tempo "Poco meno Allegro" c'8(_\pdolce bes a aes
	g f e) e'(
	f e4) e8(
	dis e4.)~
% Bars 301 to 305
	e r8
	R2*2
	
	r4 r8 b\<(
	c\> b8\!) r d\p(
% Bars 306 to 310
	c b) r8 g(\<
	a\> g) r8\! f'\p(
	e d) r8 b(~
	b_\crescmarkup c) r4
	r r8 b(~
% Bars 311 to 315
	b c) r c(
	b\> a g b)\!
	c\p r r4
	R2
	r4 r8 a'(
% Bars 316 to 320
	g\> f d b)\!
	c\p r r4
	R2
	r4 r8 c(
	g'4\sf\> f)\!
% Bars 321 to 325
	c\p r
	R2*2
	\bar "||"
	\tempo "Tempo primo" r4 r8 ees(\f
	c a fis ees)
% Bars 326 to 330
	c4. c'8-.
	c-. r b-. r
	c-.\p r r4
	R2*7
% Bars 331 to 335
	
% Bars 336 to 340
	e8-.\f r r4
	R2
	c8-. r r4
	c8-. r r4
	c2\fermata \bar "|."
}
