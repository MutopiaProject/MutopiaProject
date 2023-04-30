%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicHornIVMvtI = \relative c'' {
	\clef treble
	\key a \minor
	\transposition d
% Bars 1 to 5
	\mark \markup {\abs-fontsize #16 "in D"} d4._\fmarc^\tutti d8 d4 r
	d4. d8 d4 r
	g,-. r c,-. r
	g-. g-. g'-. g-.
	\textLengthOn <>_\markup {(in modo d'un recit).} R1*18^\markup {Solo-Vlc.} \textLengthOff
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
	
	\cueDuring #"cueVoiceHrnIVmI" #DOWN {
		\ni \clef "bass" \MmrPos #6 R1
		R
		R
% Bars 26 to 30
		r2 \clef treble \no } r4 g_\pdolce(^\tutti
	c2 b)
	a2. g4~
	g1~
	g2. r4
% Bars 31 to 35
	\textLengthOn <>_\markup {Solo-Viol. u. Solo-Vlc.} R1*21 \textLengthOff
% Bars 36 to 40
	
% Bars 41 to 45
	
% Bars 46 to 50
	
% Bars 51 to 55
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni \MmrPos #-6 R1
		R
		R
		R
% Bars 56 to 60
		R \no \mark \default
	}
	g4.\f -\tweak X-offset #1.5 ^\tutti c8 d4 r
	g,4. fis8 g4 r
	c-. a-. bes4.-> bes8
	c4. c8 d4. bes8
% Bars 61 to 65
	c2-> g->
	d'2.-> d4
	c2-> g->
	bes2.-> bes4
	r2 r4 g,
% Bars 66 to 70
	g2 g2
	cis'\ff-> g->
	d'-> d->
	g, g
	d'4 r r2
% Bars 71 to 75
	R1*4
	
	
	
	ees,4-.\f ees2-> ees4-.
% Bars 76 to 80
	ees-! r ees-! r
	bes'-! r r2
	R1 \mark \default
	R1*6
% Bars 81 to 85
	
	
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
% Bars 86 to 90
		R
		R
		R \no
	}
	ees,4.\f( g8) bes( ees) ees4( \mark \default
	c8) r ees4( d8) r ees4(
% Bars 91 to 95
	a,!2 bes4) ees(
	c8) r ees4( d8) r ees4~
	ees2. g,4(
	bes-.) bes2-> bes4~
	bes bes-. r2
% Bars 96 to 100
	r r4 ees,~
	ees ees2 ees4~
	ees ees~ ees8-. r r4
	r e!2 e4~
	e8-. r r4 r2
% Bars 101 to 105
	R1
	g2\sf g4-. r
	c,2\sf c4-. r
	bes'-. r r ees(
	bes c) d2
% Bars 106 to 110
	bes2\sf bes4-. r
	ees,2\sf ees4-. r
	c'-. d-. ees-. d-.
	r ees-. d-. r
	g,-. r g-. r
% Bars 111 to 115
	d'-. r d-. r \mark \default
	\MmrLength #12 R1*20
% Bars 116 to 120
	
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
		R
		R
		R
% Bars 136 to 140
		R
		R \no
	}
	g,2(\pp bes
	des bes)
	<< c1~\pp {s2 s_\dimmarkup}>>
% Bars 141 to 145
	c1~
	c \mark \default
	ees_\pdolce~
	ees~
	ees 
% Bars 146 to 150
	R1_\gp
	R1
	bes1~\<
	bes~\dimD\>
	bes2( a)\!
% Bars 151 to 155
	R1
	r2 r4 bes_\pdolce~
	bes8 r bes4~ bes8 r bes4\<(~
	bes\> a8\!) r r4 bes~
	bes8 r bes4~ bes8 r bes4\<(~
% Bars 156 to 160
	bes~\> bes8\!) r r2
	R1*6
% Bars 161 to 165
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
		R
		R
% Bars 166 to 170
		r2 \no } r4 bes_\pdolce~
	bes8 r bes4~ bes8 r bes4(~\<
	bes\> a8\!) r r4 bes~
	bes8 r bes4~ bes8 r\< bes4~
	bes2.\> r4\!
% Bars 171 to 175
	R1 \mark \default
	R1*5
% Bars 176 to 180
	
	r2 r4 ees(~_\pespr
	ees8 d) c4.( b8) g4~
	g_\dimmarkup g2 g4\pp~
	g r r2
% Bars 181 to 185
	R1*7
	
	
	
% Bars 186 to 190
	
	
	\cueDuring #"cueVoiceHrnIVmI" #DOWN {
		\ni R1
		r2 \no } r4 bes_\pmamarc-.
	r bes-. r bes-.
% Bars 191 to 195
	r8 bes-. r8 bes-. r8 bes-. r8 bes-. 
	r8 bes-. r8 bes-. r8 bes-. r4 \mark \default
	R1*2
	
	c8-.\f c4 c8( bes) bes4 bes8\<~
% Bars 196 to 200
	bes2\>( a4) r4\!
	c8^\tutti c4 c c c8~
	c4-. c-. r2
	c8 c4 c8( bes) bes4 bes8~
	bes4-. a-. r2
% Bars 201 to 205
	c8 c4 c c c8~
	c4-. bes4-. r2
	b!4-. r r c-.
	r bes-. r2
	R1*5
% Bars 206 to 210
	
	
	
	
	r4 c2\sf c4-.
% Bars 211 to 215
	R1
	r2 r4 bes\sf~
	bes bes-. r d\ff~
	d d~ d8-. r r4
	r d2 d4~
% Bars 216 to 220
	d8-. r r4 r2
	R1 \mark \default
	\MmrLength #12 R1*19^\solo
% Bars 221 to 225
	
% Bars 226 to 230
	
% Bars 231 to 235
	
% Bars 236 to 240
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
		R
		R
		R
% Bars 241 to 245
		\MmrPos #6 R \mark \default \no
	}
	g,1\pp~
	g2. r4
	R1*10
% Bars 246 to 250
	
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
		R
% Bars 256 to 260
		R
		R \no
	}
	ees'4\f-! r r bes-!
	ees-! r r2^\tutti
	R1*2
% Bars 261 to 265
	
	bes4\f-!^\solo r r ees-!
	bes-! r r2^\tutti
	bes4-. r bes-. r
	ees,-. r r2
% Bars 266 to 270
	R1*4
	
	
	\mark #11
	R1*8
% Bars 271 to 275
	
% Bars 276 to 280
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni \clef "bass" R1
		R
		R
% Bars 281 to 285
		R
		<< \MmrPos #-8 R1 {s2 \clef treble s}>>
		R1
		r2 r4 \no } c-._\mfcresc
	g'-. r8 c,-. g'4-. r8 c-.
% Bars 286 to 290
	g4-!\ff r g,-! r
	c-! r c-! r
	c-! r r2
	c'4-! r r2 \mark \default
	g4.\ff-\tweak X-offset #1 ^\tutti c8 d4 r
% Bars 291 to 295
	g,4. fis8 g4 r
	c4-. a-. bes4.-> bes8
	c4. c8 d4. bes8
	c2 g
	d'2. d4
% Bars 296 to 300
	c2 g
	bes2. bes4-.
	g-. r r d'-.
	g,,2 g4 r
	R1*10^\solo
% Bars 301 to 305
	
% Bars 306 to 310
	
	
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
% Bars 311 to 315
		R
		\MmrPos #4 R \bar "||" \mark \default \no
	}
	c'1\pp~
	<<c~ {s4 s s s\<}>>
	<<c1 {s4\> s s\! s}>>
% Bars 316 to 320
	R1_\gp
	g,1\pp~
	g2(\< g')~
	g1~\dimD\>(
	g2 fis~
% Bars 321 to 325
	fis4)\! r r2
	r2 r4 g_\pdolce(
	c8) r g4( c8) r g4(
	g,) r r g'( 
	c8) r g4( c8) r g4(
% Bars 326 to 330
	g,) r r2
	R1*6
% Bars 331 to 335
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
		R
		R
% Bars 336 to 340
		r2 \no } r4 g'(_\pdolce 
	c8) r g4( c8) r g4(
	g,) r r g'(
	c8) r g4( c8) r g4(
	g,) r4 r2
% Bars 341 to 345
	R1 \mark \default
	R1*5
% Bars 346 to 350
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
		r2 r4 \no } c'\pp~
	c c2 c4~
	c1~
% Bars 351 to 355
	c2( a4) r
	R1*11
	
	
% Bars 356 to 360
	
% Bars 361 to 365
	
	
	\cueDuring #"cueVoiceHrnIVmI" #DOWN {
		\ni R1
		\MmrPos #6 R \no
	}
	a8-.\f a4 a8( g) g4 g8\<~
% Bars 366 to 370
	g2\>( fis4) r4\! \mark \default
	a8-\tweak X-offset #1.5 ^\tutti a4 a a a8~
	a4-. a-. r2
	c8 c4 c8~ c c4 c8~
	c4-! c-! r2
% Bars 371 to 375
	c8 c4 c8~ c c4 c8~
	c4-. g-. r2
	b4-. r r c-.
	r g-. r2
	g4.( b8) b4 g4->(
% Bars 376 to 380
	cis8) r g4->( c8) r g4(
	cis2 d4) g,(
	cis8) r g4( c8) r g4~
	g2~ g4 r
	r c2\sf c4-.
% Bars 381 to 385
	R1
	r2 r4 g,\sf~
	g g-. r g'\f~
	g g~ g8-. r r4
	r c,2 c4~
% Bars 386 to 390
	c8-. r r4 r2 
	R1 \bar "||" \mark \default
	cis'2\sf d4 r8 cis-.
	d4-. r8 cis8-. d4-. r
	c!2 bes4 r8 c-.
% Bars 391 to 395
	bes4-. r8 c-. bes4-. r8 g-.
	d'-. r r4 r2
	R1*3
	
	
% Bars 396 to 400
	\MmrLength #10 R1*18^\solo
% Bars 401 to 405
	
% Bars 406 to 410
	
% Bars 411 to 415
	
	
	
	R1^\pocorit
	r2 r4 r^\intempo
% Bars 416 to 420
	R1*4
	
	
	
	\cueDuring #"cueVoiceHrnIVmI" #UP {
		\ni R1
% Bars 421 to 425
		R
		R
		R
		R
		R
% Bars 426 to 430
		r4 \no } g,-.\f r g-.
	r g-. r d'-.
	g,-. r g-. r
	g-. r g-. g-.
	bes-. r g,-. r
% Bar 431
	g1\fermata \bar "|."
}
