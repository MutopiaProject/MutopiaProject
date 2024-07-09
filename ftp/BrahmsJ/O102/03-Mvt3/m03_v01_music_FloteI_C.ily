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
	R2*28
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	R2*2
% Bars 31 to 35
	\dynEO #'(0 . 2) c2\pp~
	c^(
	a8) r r4
	R2*5
% Bars 36 to 40
	
	
	\mark \default
	\once \partCombineApart e'2
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
	a-. r r4
	R2
% Bars 51 to 55
	\aIIXoffset #-3  a,16\p-. a-. c-. a-. fis-. fis-. a-. fis-. 
	d-. d-. fis-. d-. b-. b-. d-. b-. 
	a-. c-. ees-. c-. b-. d-. a-. d-. 
	b-. g-. r8 r4
	R2*30
% Bars 56 to 60
	
% Bars 61 to 65
	
% Bars 66 to 70
	
% Bars 71 to 75
	
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	
	\bar "||" \time 3/4
	R2.*2
% Bars 86 to 90
	\bar "||" \time 4/4
	\partCombineApart r2 r4 fis'(\f 
	g a ais b) \partCombineAutomatic \bar "||" \timeMvtIII
	cis8-. r r4
	a8-. r r4
% Bars 91 to 95
	\once \partCombineChords a'8-. r r4
	R2*3
	
	
	\partCombineApart \shape #'((0 . 0)(0 . 0)(0 . -0.5)(0 . -3)) Slur c,8( g' fis f 
% Bars 96 to 100
	\oneVoice \omitBeam e d c g
	\omitBeam a g) \partCombineAutomatic r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*8
% Bars 106 to 110
	
	
	
	e'8->_\p d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
% Bars 111 to 115
	a8 r r4
	r a16(\p\> e')\! r8
	R2*6
% Bars 116 to 120
	
	
	\bar "||" \key d \minor
	R2*18
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
% Bars 136 to 140
	
	\tuplet 3/2 4 {a4(\ff g8) f( g a)
	a4( g8) f( g a)}
	a4 e
	R2*2
% Bars 141 to 145
	
	r8. g16-. g8[-. r16 g-.]
	\tuplet 3/2 4 {g4( f8) d( e f)
	f4( e8) c( d e)}
	b4 \once \partCombineApart \voiceOne a
% Bars 146 to 150
	R2*2
	\mark \default
	R2*24
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	
	r4 r8 \partCombineApart a,(
	\once \oneVoice \noFlag a'-.) \partCombineAutomatic a4 gis8(
	a) a4 r8
	R2
% Bars 176 to 180
	r4 r8 f'(\f
	e) \once \partCombineApart a,4 d8(
	c) \once \partCombineApart f,4 r8
	R2 \mark \default
	R2*16
% Bars 181 to 185
	
% Bars 186 to 190
	
% Bars 191 to 195
	
% Bars 196 to 200
	r4 r8. \partCombineApart a'16
	a4.. \partCombineAutomatic a16
	a4.. a16
	\tuplet 3/2 4 {a4( g8) f( g a)
	a4( g8) f( g a)}
% Bars 201 to 205
	a4 e
	r8. f16-. a8[-. r16 f-.]
	\tuplet 3/2 4 {a4( g8) g( a bes)
	bes4( a8) f( g a)}
	e4 d8. d16
% Bars 206 to 210
	d8(\sf c!16) c( bes) bes( a) a(
	bes8\sf)( a16) a( g) g( f) f(
	e) e( f) f( e) e( f) f(
	e8-.) r r8. a'16
	a8(\sf g16) g( f) f( e) e(
% Bars 211 to 215
	f8\sf)( e16) e( d) d( c) c(
	b) b( c) c( b) b( c) c(
	b8-.) r r8. e16
	\dynEO #'(0 . 2) e2\fp~
	\markEO #'(0 . 2) e_\dimmarkup~
% Bars 216 to 220
	e~
	e \bar "||" \mark \default \key a \minor
	a,8-.\p r r4
	R2*3
	
% Bars 221 to 225
	
	a16_\p-. c-. e-. c-. g8-. r
	R2
	c16-. e-. g-. e-. b8-. r
	R2*11
% Bars 226 to 230
	
% Bars 231 to 235
	
% Bars 236 to 240
	\aIIXoffset #-3 e8->_\p d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-. \mark \default
	g8-. r r4
	R2*3
	
% Bars 241 to 245
	
	f8(\p e16 f) e4
	d16( c bes c) a4
	R2*2
% Bars 246 to 250
	R2*4
	
	
	
	R2*5
% Bars 251 to 255
	
	
	
	
	\partCombineApart \markEO #'(0 . 2) e''2_\mfcresc(
% Bars 256 to 260
	\oneVoice f)(
	gis) \partCombineAutomatic
	\dynEO #'(0 . 2) a8-.\ff c,-. r f-.
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
	a,-. r r4
	R2*5
	
% Bars 271 to 275
	
	
	\bar "||" \key a \major
	R2*15
% Bars 276 to 280
	
% Bars 281 to 285
	
% Bars 286 to 290
	
	
	\bar "||" \time 3/4
	R2.*2
	\bar "||" \time 4/4
% Bars 291 to 295
	\partCombineApart \voiceOne r4 cis,(^\pcresc d dis 
	e fis fisis gis) \bar "||" \timeMvtIII 
	\partCombineAutomatic ais8-. r r4
	fis8-. r r4
	\once \oneVoice \noFlag fis'8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\partCombineApart a,8( e' dis d
	cis[ b a]) \partCombineAutomatic r
	R2
	\partCombineApart r8. e16( a cis e cis 
% Bars 301 to 305
	a8) r r \shape #'((-0.5 . 1.5)(0 . 0)(0 . 0)(0 . -1)) Slur a(
	b a d a
	<< {\oneVoice \noFlag bes a4.)~} {s4 s_\dimmarkup} >>
	a4.( \noFlag gis!8) \partCombineAutomatic
	R2*4
% Bars 306 to 310
	
	
	
	r4 r8 d'(_\crescmarkup
	cis b a gis
% Bars 311 to 315
	eis fis) r fis'(
	e\> d cis b)\!
	\once \partCombineApart \voiceOne a r r4
	R2
	r4 r8 a'(
% Bars 316 to 320
	gis\> fis d gis,)\!
	\once \partCombineApart a r r4
	R2
	r4 r8 \partCombineApart a( 
	\oneVoice gis'4 fis)
% Bars 321 to 325
	\voiceOne a, \partCombineAutomatic r8 \partCombineApart a(
	\oneVoice gis'4 fis8) \partCombineAutomatic r
	gis4(\> fis8)\! r \bar "||"
	a,8-.\f r dis4->~
	dis2~
% Bars 326 to 330
	dis8 d-. cis-. b-.
	cis-. r b-. r
	\partCombineApart \voiceOne a-. e'4 e8~
	e e4 e8~
	e e4 e8~
% Bars 331 to 335
	e e4 e8~
	e \partCombineAutomatic \markEO #'(1 . 2) e4_\pcresc e8~
	e e4 e8~
	e e4 e8~
	e e4 e8
% Bars 336 to 340
	cis8-.-\tweak X-offset #-2.5 \f r r4
	R2
	cis8-. r r4
	cis8-. r r4
	\once \partCombineApart a2\fermata \bar "|."
}
