%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicTrumpetIIMvtI = \relative c'' {
	\clef treble
	\key a \minor
	\transposition d
% Bars 1 to 5
	d4._\fmarc^\tutti d8 d4 r
	d4. d8 d4 r
	g,-. r c,-. r
	g-. g-. g'-. g-.
	\textLengthOn <>_\markup {(in modo d'un recit.)} R1*18^\markup {Solo-Vlc.} \textLengthOff
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni \clef "bass" R1
		\MmrPos #4 R
		\MmrPos #4 R
% Bars 26 to 30
		<< \MmrPos #-6 R1 {s2 \clef treble s^\tutti }>>
		\MmrPos #-6 R1
		\MmrPos #-6 R
		\MmrPos #-6 R 
		R \no
	}
% Bars 31 to 35
	\textLengthOn <>_\markup {Solo-Viol. u. Solo-Vlc.} R1*21 \textLengthOff
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni \MmrPos #-6 R1
		R
		R
		R
% Bars 56 to 60
		R \mark \default \no
	}
	bes4.\f^\tutti c8 d4 r
	c,4. c8 g4 r
	c-. c-. g-. r
	R1
% Bars 61 to 65
	c2-> g'->
	d'2.-> r4
	c,2-> g'->
	f2.-> r4
	r2 r4 g,
% Bars 66 to 70
	g2 g
	e'\f g
	d' d
	g, g
	f4 r r2
% Bars 71 to 75
	R1*4
	
	
	
	ees4-.\f ees2-> ees4-.
% Bars 76 to 80
	ees-! r ees-! r
	bes'-! r r2
	R1 \mark \default
	R1*6
% Bars 81 to 85
	
	
	
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
% Bars 86 to 90
		R
		R
		R \no
	}
	bes2\f bes4 r \mark \default
	R1*3
% Bars 91 to 95
	
	
	r2 r4 g,(\f
	g'-.) bes2-> bes4-.
	R1*2
% Bars 96 to 100
	
	r2 r4 g\f~
	g g4~ g8-. r r4
	r g2 g4~
	g8-. r r4 r2
% Bars 101 to 105
	R1
	g2\sf g4-. r
	c,2\sf c4-. r
	bes'-. r r2
	bes4( c) d2
% Bars 106 to 110
	bes2\sf bes4-. r
	ees,2\sf ees4-. r
	c'-. r c-. d-.
	r c-. d-. r
	g,,-. r g-. r
% Bars 111 to 115
	d''-. r d-. r \mark \default
	\MmrLength #15 R1*31^\solo
% Bars 116 to 120
	
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
% Bars 136 to 140
	
% Bars 141 to 145
	
	\once \override Score.RehearsalMark.self-alignment-X = #1 \mark \default
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
		R
		R \no
	}
% Bars 146 to 150
	R1_\gp
	R1*25
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	\mark \default
	R1*5
% Bars 176 to 180
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
		R
		R
		R
% Bars 181 to 185
		R
		R
		R
		R \no
	}
	R1*8
% Bars 186 to 190
	
% Bars 191 to 195
	
	\mark \default
	R1*3
	
	
% Bars 196 to 200
	\cueDuring #"cueVoiceTptIImI" #DOWN {
		\ni \MmrPos #-4 R1
		\MmrPos #-4 R
		\MmrPos #-4 R \no
	}
	c,2\f c 
	c4-. r r2
% Bars 201 to 205
	c2 c
	c4-. d'-. r2
	d4-. r r c-.
	r bes-. r2
	R1*8
% Bars 206 to 210
	
% Bars 211 to 215
	
	
	r2 r4 d\f~
	d d4~ d8-. r r4
	r d2 d4~
% Bars 216 to 220
	d8-. r r4 r2
	R1 \mark \default
	\MmrLength #15 R1*24^\solo
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	
% Bars 236 to 240
	
% Bars 241 to 245
	\mark \default
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
		R
		R \no
	}
	R1*9
% Bars 246 to 250
	
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
		R
% Bars 256 to 260
		R
		R \no
	}
	ees,4-!\f r r bes'-!
	ees,-! r r r^\tutti
	R1*2
% Bars 261 to 265
	
	r4 r^\solo r2
	r r4 r^\tutti
	bes'4-. r bes-. r
	ees,-. r r2
% Bars 266 to 270
	\MmrLength #8 R1*4
	
	
	\mark #11
	\MmrLength #16 R1*14
% Bars 271 to 275
	
% Bars 276 to 280
	
% Bars 281 to 285
	
	
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni \MmrPos #-8 R1
		\MmrPos #-8 R \no
	}
% Bars 286 to 290
	g,4-!-\tweak X-offset #-2 \f r g'-! r
	c,-! r c-! r
	c-! r r2
	c'4-! r r2 \mark \default
	bes4.\ff-\tweak X-offset #1 ^\tutti c8 d4 r
% Bars 291 to 295
	c,4. c8 g4 r
	c-. c-. g-. r
	R1
	c2 g'
	d'2. r4
% Bars 296 to 300
	c,2 g'
	f2. r4
	R1*2
	
	\MmrLength #12 R1*13^\solo
% Bars 301 to 305
	
% Bars 306 to 310
	
% Bars 311 to 315
	
	\bar "||" \mark \default
	R1*3
	
	
% Bars 316 to 320
	R1_\gp
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
		R
		R
		R
% Bars 321 to 325
		R \no
	}
	\MmrLength #12 R1*20
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	
% Bars 341 to 345
	\mark \default
	R1*2
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
		R
% Bars 346 to 350
		R
		R
		R
		R \no
	}
	R1*16
% Bars 351 to 355
	
% Bars 356 to 360
	
% Bars 361 to 365
	
% Bars 366 to 370
	\cueDuring #"cueVoiceTptIImI" #UP { 
		\ni R1 \mark \default
		R -\tweak X-offset #7 ^\tutti
		R \no
	}
	c2\f c
	c4-! c-! r2
% Bars 371 to 375
	c2 c
	c'4-! g-! r2
	d'4-. r r c-.
	r g-. r2
	r2 r4 g,\f~
% Bars 376 to 380
	g8 r g4~ g8 r g4~
	g8 r r4 r g4~
	g8 r g4~ g8 r g4~
	g8 r r4 r2
	r4 c'2\sf c4-. 
% Bars 381 to 385
	R1
	r2 r4 g,\sf~
	g g-. r g'\f~
	g g~ g8-. r r4
	r c,2 c4~
% Bars 386 to 390
	c8-. r r4 r2
	R1 \bar "||" \mark \default
	g'2\sf d'4-. r
	d-. r d-. r
	c,2 g4-. r
% Bars 391 to 395
	g-. r g-. r
	d''8-. r r4 r2
	R1*3
	
	
% Bars 396 to 400
	R1*18^\solo
% Bars 401 to 405
	
% Bars 406 to 410
	
% Bars 411 to 415
	
	
	
	R1^\pocorit
	r2 r4 r^\intempo 
% Bars 416 to 420
	R1*4
	
	
	
	\cueDuring #"cueVoiceTptIImI" #UP {
		\ni R1
% Bars 421 to 425
		R
		R
		R
		R
		R
% Bars 426 to 430
		r4 \no } g,-.\f r g-.
	r d'-. r d-.
	g,-. r g-. r
	g-. r c,-. c-.
	g-. r g-. r
% Bar 431
	g1\fermata \bar "|."
}
