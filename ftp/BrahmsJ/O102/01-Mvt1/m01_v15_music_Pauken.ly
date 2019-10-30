% Project Name : Double Concerto Op102
% Fichier :      m01_v15_music_Pauken.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicPaukenMvtI = \relative c {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	e2\startTrillSpan_\fmarc^\tutti e4\stopTrillSpan r
	e2\startTrillSpan_\fmarc e4\stopTrillSpan r
	a,-. r e'-. r
	e-. e-. a,-. a-.
	\textLengthOn <>_\markup {(in modo d'un recit.)} R1*18^\markup {Solo-Vlc.} \textLengthOff
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	\cueDuring #"cueVoicePkmI" #UP {
		\ni R1
		\MmrPos #-6 R
		\MmrPos #-8 R
		<<R1 {s2 \clef treble s^\tutti } >>
		R1
% Bars 26 to 30
		\MmrPos #-6 R
		R
		R \no
	}
	\textLengthOn <>_\markup {Solo-Viol.u.Solo-Vlc.} R1*21 \textLengthOff
% Bars 31 to 35
	
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \MmrPos #-6 R1
		R
		R
		R
% Bars 56 to 60
		R \mark \default \clef bass \no
	}
	a2\startTrillSpan-\tweak X-offset #1.5 ^\tutti e'4\stopTrillSpan r
	a,2\startTrillSpan a4\stopTrillSpan r
	R1*8
% Bars 61 to 65
	
% Bars 66 to 70
	
	a2\startTrillSpan\f a4\stopTrillSpan r
	e'2\startTrillSpan e4\stopTrillSpan r
	a,2\startTrillSpan a4\stopTrillSpan r
	e'2\startTrillSpan e4\stopTrillSpan r
% Bars 71 to 75
	R1*8
% Bars 76 to 80
	
	
	\mark \default
	R1*10
% Bars 81 to 85
	
% Bars 86 to 90
	
	
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \clef "treble" R1 \mark \default
		R
% Bars 91 to 95
		R
		R
		R
		R
		R
% Bars 96 to 100
		R
		r2 r4 \clef bass \no } a,\f~\startTrillSpan
	a\stopTrillSpan a\startTrillSpan a8-.\stopTrillSpan r r4
	r a2\trill a4\trill
	a8 r r4 r2
% Bars 101 to 105
	R1
	a2\trill e'4-. r
	e2\trill a,4-. r
	\MmrLength #10 R1*8
% Bars 106 to 110
	
% Bars 111 to 115
	\mark \default
	\MmrLength #10 R1*31
% Bars 116 to 120
	
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
% Bars 136 to 140
	
% Bars 141 to 145
	
	\once \override Score.RehearsalMark.self-alignment-X = #1 \mark \default
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \clef "treble" R1
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
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni R1
		R
		R
		R
% Bars 181 to 185
		R \no
	}
	R1*11
% Bars 186 to 190
	
% Bars 191 to 195
	
	\mark \default
	R1*4
	
	
% Bars 196 to 200
	
	R1*2^\tutti
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \MmrPos #-8 R1
		R \no
	}
% Bars 201 to 205
	R1*8
% Bars 206 to 210
	
	
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni R1
		R
% Bars 211 to 215
		R
		R
		r2 r4 \clef bass \no } e'4\startTrillSpan~
	e\stopTrillSpan e4\trill e8-. r r4
	r4 e2\trill e4\trill
% Bars 216 to 220
	e8-. r r4 r2
	R1 \mark \default
	\MmrLength #15 R1*24^\solo
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	
% Bars 236 to 240
	
% Bars 241 to 245
	\mark \default
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \clef "treble" R1
		R1
		R \no
	}
	R1*15^\tutti
% Bars 246 to 250
	
% Bars 251 to 255
	
% Bars 256 to 260
	
	
	
	
	R1*2
% Bars 261 to 265
	
	r4 r^\solo r2
	r r4 r^\tutti
	R1*6
	
% Bars 266 to 270
	
	
	
	\mark #11
	\MmrLength #10 R1*4^\solo
% Bars 271 to 275
	
	
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \MmrPos #-6 R1
		R
% Bars 276 to 280
		R
		R \clef bass \no
	}
	e1\pp~\startTrillSpan^\solo
	e~
	e~
% Bars 281 to 285
	e
	e4\stopTrillSpan r r2
	R1*7
% Bars 286 to 290
	
	
	
	\mark \default
	a,2\ff\trill -\tweak Y-offset #4.5 -\tweak X-offset #1.5 ^\tutti e'4 r
% Bars 291 to 295
	a,2\trill a4 r
	R1*8
	
	
	
% Bars 296 to 300
	
	
	
	
	\MmrLength #10 R1*13^\solo
% Bars 301 to 305
	
% Bars 306 to 310
	
% Bars 311 to 315
	
	\bar "||" \once \override Score.RehearsalMark.self-alignment-X = #1 \mark \default
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \clef "treble" R1
		R
		R \no
	}
% Bars 316 to 320
	R1_\gp
	\MmrLength #10 R1*25
% Bars 321 to 325
	
% Bars 326 to 330
	
% Bars 331 to 335
	
% Bars 336 to 340
	
% Bars 341 to 345
	\mark \default
	R1*2
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni R1
		R
% Bars 346 to 350
		R
		R \no
	}
	R1*19
% Bars 351 to 355
	
% Bars 356 to 360
	
% Bars 361 to 365
	
% Bars 366 to 370
	\mark \default
	\MmrLength #15 R1*2^\tutti
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \MmrPos #-6 R1
		\MmrPos #-6 R
% Bars 371 to 375
		\MmrPos #-6 R
		R
		R
		R
		R \clef bass \no
	}
% Bars 376 to 380
	a16\f\> a a a\! r4 a16\> a a a\! r4
	a2\startTrillSpan e'4\stopTrillSpan r
	a,16\> a a a\! r4 a16\> a a a\! r4
	a2\startTrillSpan a4\stopTrillSpan r
	r e'2\sf\startTrillSpan e8-.\stopTrillSpan r
% Bars 381 to 385
	R1
	r2 r4 a,\sf\startTrillSpan~
	a a8-.\stopTrillSpan r r4 a\startTrillSpan~
	a\stopTrillSpan a\startTrillSpan~ a8-.\stopTrillSpan r r4
	r << e'2 {s4\startTrillSpan s\stopTrillSpan} >> e4\startTrillSpan
% Bars 386 to 390
	e8-.\stopTrillSpan r r4 r2
	R1 \bar "||" \mark \default
	a,2\sf\trill e'4 r8 a,-.
	e'4-. r8 a,-. e'4-. r
	e2\trill a,4 r8 e'-.
% Bars 391 to 395
	a,4-. r8 e'-. a,4-. r8 a-.
	\times 2/3 {e'8 e e} \times 2/3 {e e e} \times 2/3 {e e e} \times 2/3 {e e e}
	\times 2/3 {e e e} \times 2/3 {e e e} \times 2/3 {e e e} \times 2/3 {e e e} 
	\times 2/3 {e e e} \times 2/3 {e e e} \times 2/3 {e e e} \times 2/3 {e e e} 
	e e r e r e r e
% Bars 396 to 400
	a,4^\solo r r2
	R1*17
% Bars 401 to 405
	
% Bars 406 to 410
	
% Bars 411 to 415
	
	
	
	R1^\pocorit
	r2 r4 r^\intempo
% Bars 416 to 420
	R1*4
	
	
	
	\cueDuring #"cueVoicePkmI" #UP {
		\ni \clef "treble" R1
% Bars 421 to 425
		R
		R
		R
		R
		R
% Bars 426 to 430
		r4 \clef bass \no } a-.\f r a-.
	r e'-. r e-.
	a,-. r a-. r
	a-. r r2
	a4-. r a-. r
% Bar 431
	a1\trill\fermata \bar "|."
}
