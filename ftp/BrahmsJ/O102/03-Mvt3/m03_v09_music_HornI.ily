%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIMvtIII = \relative c'' {
	\clef treble
	\key a \minor
	\transposition e
% Bars 1 to 5
	\mark \markup {\abs-fontsize #16 "in E"} \cueDuring #"cueVoiceHrnImIII" #DOWN {
		\ni R2
		R \no
	}
	R2*18
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	\cueDuring #"cueVoiceHrnImIII" #DOWN {
		\ni R2
		R
		R
		\MmrPos #6 R
		\MmrPos #-2 R
% Bars 26 to 30
		\MmrPos #-2 R
		\MmrPos #-2 R
		\MmrPos #-2 R \no
	}
	R2*4^\pocorit
	
% Bars 31 to 35
	
	
	\textLengthOn <>^\intempo R2*2 \textLengthOff
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
% Bars 36 to 40
		R
		R
		R \mark \default \no
	}
	g2\ff-\tweak X-offset #1.5 ^\tutti
	c8-. r r4
% Bars 41 to 45
	R2
	r8 c-. r c-.
	r c-. r c-.
	r ees-. r ees-.
	r ees-. r ees-.
% Bars 46 to 50
	ees4( f)~
	f2
	r8 c-. c-. r
	r4 r^\solo
	R2
% Bars 51 to 55
	R2*3^\tutti
	
	
	r4 r^\solo
	R2*6
% Bars 56 to 60
	
% Bars 61 to 65
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
		R
		R
		\MmrPos #-10 R \no
	}
	ees8\f^\tutti ees4 ees8~
% Bars 66 to 70
	ees ees4 ees8\p~
	ees ees4_\dimmarkup ees,8~
	ees ees4 ees8
	r4 r^\solo
	R2*10
% Bars 71 to 75
	
% Bars 76 to 80
	
	
	
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni \MmrPos #-6 R2
% Bars 81 to 85
		R
		R
		R
		R \bar "||"
		\time 3/4 R2. \no
	}
% Bars 86 to 90
	R2. \bar "||"
	\time 4/4 \cueDuring #"cueVoiceHrnImIII" #DOWN { r2 r4 } bes'\mf
	ees,2\< ees\! \bar "||"
	\time 2/4 R2*12
% Bars 91 to 95
	
% Bars 96 to 100
	
	
	
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	R2*2^\tutti
% Bars 106 to 110
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
		R
		R^\solo \no
	}
	R2*6
% Bars 111 to 115
	
% Bars 116 to 120
	R2*2^\tutti
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2 \bar "||"
		R
		R
% Bars 121 to 125
		R \no
	}
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
		R
% Bars 136 to 140
		R \no
	}
	ees4\ff->^\tutti fis->
	a4.-> r8
	R2
	R2*2^\solo
% Bars 141 to 145
	
	R2*4^\tutti
	
	
	
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	\textLengthOn <>_\markup {(Klar. Fag.)} R2*32 \textLengthOff
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	
% Bars 176 to 180
	
	
	
	\mark \default
	R2
% Bars 181 to 185
	\cueDuring #"cueVoiceHrnImIII" #DOWN {
		\ni R2
		R
		R
		R
		R
% Bars 186 to 190
		R
		R
		R
		R
		R \no
	}
% Bars 191 to 195
	g2~
	g4 r
	R2*3
	
	
% Bars 196 to 200
	r4 r8.^\tutti r16
	R2
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
		R
		R
% Bars 201 to 205
		R \no
	}
	r8. aes'16\ff-. aes8-.[ r16 aes-.]
	\tuplet 3/2 4 {aes4( ges8) ees( f ges)}
	\tuplet 3/2 4 {ges4( f8) des( ees f)}
	c4 bes
% Bars 206 to 210
	bes2\sf
	bes\sf
	c8-. g-. c-. g-.
	c-. r^\solo r4
	R2*2^\tutti
% Bars 211 to 215
	
	g8-. d'-. g,-. d'-.
	g,-. r^\solo r4
	c,2\fp~^\tutti
	c_\dimmarkup~
% Bars 216 to 220
	c~
	c \mark \default \bar "||"
	\MmrLength #10 R2*12^\solo
% Bars 221 to 225
	
% Bars 226 to 230
	
	
	
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
% Bars 231 to 235
		R
		R
		R \no
	}
	r8 c'-.\p g'-. r
	r4 r8 g,-.
% Bars 236 to 240
	c,-. r r4
	R2 \mark \default
	R2*8
% Bars 241 to 245
	
% Bars 246 to 250
	\tempo "poco rit." \MmrLength #12 R2*4
	
	
	
	\tempo "in tempo" \MmrLength #12 R2*4
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni \MmrPos #-8 R2
		R
% Bars 256 to 260
		R \no
	}
	c2\f
	c'8-.^\tutti r r4
	R2
	r8 c-. r c-.
% Bars 261 to 265
	r c-. r c-.
	r ees-. r ees-.
	r ees-. r ees-.
	ees4( f)~
	f2
% Bars 266 to 270
	c8-. c-. c-. r
	R2
	R2*2^\solo
	
	c4(\mf^\tutti c-\tweak X-offset #0 \dimD\>
% Bars 271 to 275
	c c
	c c)\!
	r r^\solo \bar "||"
	R2*7
% Bars 276 to 280
	
% Bars 281 to 285
	r4 c(\pocofD\<
	b bes
	a) d(~\>
	d8 bes)\! d(-. e-.)
	f( c) d-.( c-.)
% Bars 286 to 290
	bes( g) d'4(~
	d8 bes) d4(~
	d g,) \bar "||"
	\time 3/4 g2 r4
	R2. \bar "||"
% Bars 291 to 295
	\time 4/4 r2 r4 g_\pcresc
	c,2 c' \bar "||" 
	\time 2/4 c8-.\f r r4
	R2*3
	
% Bars 296 to 300
	\bar "||"
	\tempo "Poco meno Allegro" R2*4
% Bars 301 to 305
	\cueDuring #"cueVoiceHrnImIII" #UP {
		\ni R2
		R
		R
		R
		d8\rest \no } c(-\tweak X-offset #-1.5 \p\< d\> c\!)
% Bars 306 to 310
	r e(\p d c)
	r c(\< d\> c\!)
	r g'(\p f e)
	r (d_\crescmarkup f d)
	R2
% Bars 311 to 315
	r8 d( f d)
	R2
	c8(\p cis) d4(\<~
	d8 dis) e4(\!~
	e8\> a g f)\!
% Bars 316 to 320
	R2*4
	
	
	
	e4(\sf\> d)\!
% Bars 321 to 325
	c\p r
	e(-\tweak X-offset #-1.5 \pp\> d8)\! r
	e4(\> d8)\! r \bar "||"
	\tempo "Tempo primo" c4\f-. f-.
	R2*5
% Bars 326 to 330
	
	
	
	
	r8 c4\p c8~
% Bars 331 to 335
	c c4 c8~
	c c4_\crescmarkup c8~
	c c4 c8~
	c c4 c8~
	c c4 c8
% Bars 336 to 340
	c8-.\f r r4
	R2
	c8-. r r4
	c8-. r r4
	c2\fermata \bar "|."
}
