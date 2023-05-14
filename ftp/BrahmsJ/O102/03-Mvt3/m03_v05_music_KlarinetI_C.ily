%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicKlarinetIMvtIII = \relative c'' {
	\clef treble
	\key a \minor
	\transposition a
% Bars 1 to 5
	R2*8
% Bars 6 to 10
	
	
	
	\partCombineApart \oneVoice \shape #'((0 . -2)(0 . -0.5)(0 . 0)(0 . -1)) Slur d4( f
	d \voiceOne \beamOffset #'(-0.5 . -0.5) f8. aes16
% Bars 11 to 15
	\oneVoice \noFlag g8) \partCombineAutomatic r r4
	R2*17
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	
	
	
	ees2~\pp
	ees~
% Bars 31 to 35
	ees~
	ees
	c(
	aes
	g8)-. r r4
% Bars 36 to 40
	R2*3
	
	\mark \default
	g'2-\tweak X-offset #0.5 \ff
	\partCombineApart \voiceOne ees8-. c-. \partCombineAutomatic r c-.
% Bars 41 to 45
	r b!-.  r c-.
	r c-. r c-.
	r c-. r c-.
	ees-. ees-. r ees-.
	r ees-. r ees-.
% Bars 46 to 50
	ees2(~
	ees4 f)
	g8-. ees-. d-. d-.
	\once \partCombineApart c-. r r4
	R2
% Bars 51 to 55
	\aIIXoffset -3 g'8[-.\p ees-.] ees-.[ c-.] 
	c-.[ a!-.] a-.[ f-.] 
	ees-. r r4
	R2*31
% Bars 56 to 60
	
% Bars 61 to 65
	
% Bars 66 to 70
	
% Bars 71 to 75
	
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	
	\bar "||"
	\time 3/4 R2.*2
% Bars 86 to 90
	\bar "||"
	\time 4/4 \partCombineApart r4 g(-\tweak X-offset 0 ^\mfcrescD\< aes a
	bes c cis d)\! \partCombineAutomatic \bar "||" 
	\timeMvtIII e!8-.\f r r4
	f8-. r r4
% Bars 91 to 95
	c8-. r r4
	R2
	\partCombineApart \shape #'( ((0 . -1.5)(0 . 0)(0 . 1)(0 . 0)) ()) Slur ees8( bes' a! aes
	\oneVoice \omitBeam g f ees bes
	\voiceOne c bes) \partCombineAutomatic r4
% Bars 96 to 100
	R2*5
	
	
	
	\mark \default
% Bars 101 to 105
	R2*12
% Bars 106 to 110
	
% Bars 111 to 115
	
	
	r4 c16\p\>( g')\! r8
	R2*5
% Bars 116 to 120
	
	
	\bar "||" \key f \minor
	R2*18
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
% Bars 136 to 140
	
	des4..\ff des16
	des4.. des16
	c4 c
	R2*2
% Bars 141 to 145
	
	r8. ees!16-. g8[-. r16 g-.]
	c4 f,
	bes ees,
	f e
% Bars 146 to 150
	R2*2
	\mark \default
	r4 r8 ees,!_\ppdolce\((
	c') c4 b8(
	c) c4 ees,8(
% Bars 151 to 155
	c') c4 b8(
	c) c4\) \partCombineApart \oneVoice \noFlag fes8^\((
	\noFlag ees) ees4 \voiceOne des8(
	ces) ces4 bes8(
	aes) aes4 g8(
% Bars 156 to 160
	f!) f4\) \shape #'((0 . 2.5)(0 . -1)(0 . -1)(0 . 0)) PhrasingSlur ees8^\((
	\oneVoice \noFlag c') c4 \once \voiceOne b8(
	\noFlag c) c4\) \shape #'((0 . 2)(0 . 1)(0 . 0)(0 . 0)) Slur c,8^>^\(^(
	\voiceOne c') c4 gis8(
	a) a4\) f'8^\((
% Bars 161 to 165
	\oneVoice \noFlag ees) ees4 \noFlag des!8(_\dimmarkup
	<ges, a>) q4 \once \voiceOne bes8
	fes fes4 ees8
	c c4\) \partCombineAutomatic r8
	R2*15
% Bars 166 to 170
	
% Bars 171 to 175
	
% Bars 176 to 180
	
	
	
	\mark \default
	R2*16
% Bars 181 to 185
	
% Bars 186 to 190
	
% Bars 191 to 195
	
% Bars 196 to 200
	r4 r8. \partCombineApart \voiceOne c''16
	c4.. \partCombineAutomatic c16
	c4.. c16
	\tuplet 3/2 4 {c4( bes8) aes( bes c)
	c4( bes8) aes( bes c)} 
% Bars 201 to 205
	c4 g
	r8. c,16-. c8[-. r16 c-.]
	f4 bes,
	ees aes,
	g \partCombineApart f
% Bars 206 to 210
	f'8( ees! des c) \partCombineAutomatic
	f(\sf ees des c)
	b( c b c)
	b-. r r4
	c'8(\sf bes! aes g)
% Bars 211 to 215
	c(\sf bes  aes g)
	fis( g fis g)
	fis-. r r4
	\partCombineApart \oneVoice \omitBeam g8( f! ees d
	\omitBeam ees_\dimmarkup d c b
% Bars 216 to 220
	\voiceOne c bes! a aes
	g aes! g f) \bar "||" \mark \default \key c \minor
	\partCombineAutomatic ees-.\p r r4
	R2*4
	
% Bars 221 to 225
	
	
	ces'16-.\p ees-. g-. ees-. bes8-. r
	R2
	ees16-. g-. bes-. g-. d8-. r
% Bars 226 to 230
	R2*7
% Bars 231 to 235
	
	
	ces16\p-. ees-. g-. ees-. bes8-. r
	R2
	ees16-. g-. bes-. g-. d8-. r
% Bars 236 to 240
	R2*2
	\mark \default
	g8_\dolce( f16 g) f4
	aes16( g f g) f4~
	f8 r r4
% Bars 241 to 245
	R2*3
	
	
	gis8(_\dolce fis16 gis) fis8( e16 fis)
	e( dis cis dis) b4
% Bars 246 to 250
	R2
	d!8(_\dimmarkup cis16 d) d'4
	R2
	fis,8(-\tweak X-offset #-2 _\pp eis16 fis) fis'4~
	fis8 r r4
% Bars 251 to 255
	R2*4
	
	
	
	\partCombineApart g,,,2-\tweak X-offset #1 _\mfcresc^(
% Bars 256 to 260
	aes!)(
	\once \oneVoice aes''!) \partCombineAutomatic
	g8-.\ff ees-. r c-.
	r b-. r c-.
	r c-. r c-.
% Bars 261 to 265
	r c-. r c-.
	\beamOffset #'(0.5 . 0.5) ees-. ees-. r ees-.
	r ees-. r ees-.
	ees2~
	ees4( f)
% Bars 266 to 270
	g8-. g-. g-. g-.
	ees-. ees-. ees-. ees-.
	\once \stemUp c-. r r4
	R2*5
% Bars 271 to 275
	
	
	\bar "||" \key c \major
	R2*15
% Bars 276 to 280
	
% Bars 281 to 285
	
% Bars 286 to 290
	
	
	\bar "||" 
	\time 3/4 R2.*2
	\bar "||"
% Bars 291 to 295
	\partCombineApart \time 4/4 r4 \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Slur e,(^\pcresc f fis
	g a ais b) \partCombineAutomatic \bar "||"
	\timeMvtIII cis8-.\f r r4
	d8-. r r4
	a8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\partCombineApart c8([ g' fis f]
	e[ d c]) g'(
	\beamOffset #'(-0.5 . -0.5) a g c g
	aes g4.)~
% Bars 301 to 305
	g \partCombineAutomatic r8
	R2*2
	
	r4 r8 d~
	d4 r8 d~
% Bars 306 to 310
	d4 r8 b~
	b4 r8 f'~
	f4 r8 d(~
	d_\crescmarkup f) r4
	r r8 d(~
% Bars 311 to 315
	d f) r a(
	\beamOffset #'(1 . 1) g\> f e d)\!
	\once \partCombineApart c r r4
	R2
	r4 r8 c'(
% Bars 316 to 320
	b\> a f g)\!
	\partCombineApart g( gis) a4(~_\crescD_\<
	a8 ais) b4\!~
	b8 r \once \partCombineAutomatic r c,(
	\oneVoice b'4 a)
% Bars 321 to 325
	\voiceOne c, \partCombineAutomatic r
	R2*2
	\bar "||"
	r4 r8 ees'(-\tweak X-offset #-3 \f
	c a fis ees)
% Bars 326 to 330
	c4. d8-.
	e!-. r f-. r
	e-.-\tweak X-offset #1 \p r r4
	R2*7
% Bars 331 to 335
	
% Bars 336 to 340
	c'8-.-\tweak X-offset #-2.5 \f r r4
	R2
	e,8-. r r4
	e8-. r r4
	e2\fermata \bar "|."
}
