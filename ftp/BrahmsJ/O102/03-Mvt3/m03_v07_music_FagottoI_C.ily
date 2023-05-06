%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIMvtIII = \relative c' {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	R2
	r4 r8 a-.\p
	c4 r8 a-.
	c4 r8 c-.
	e4 r8 c-.
% Bars 6 to 10
	e4 r8 \clef tenor e-.
	\partCombineApart \oneVoice g4( fis
	\voiceOne e dis)
	\partCombineAutomatic e r4
	R2*11
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	c4(\p bes
	a b!)
	c(\< cis
	d\! f8\> e
	f4\!) r
% Bars 26 to 30
	R2*3
	
	
	R2*2
	\clef bass
% Bars 31 to 35
	c2\pp~
	c
	c(
	b
	c8-.) r r4
% Bars 36 to 40
	R2*3
	
	\mark \default
	e,2-\tweak X-offset #-1.5 \ff
	a,16-. b-. c8-. a16-. c-. f8-.
% Bars 41 to 45
	a,16-. d-. gis8-. \partCombineApart \beamOffset #'(0.7 . -0.7) a,16-. e'-. c'-. b-. \partCombineAutomatic
	a8-. e-. f-. e-. 
	a-. e-. f-. e-. 
	\beamOffset #'(0.5 . 0.5) c'-. g-. a-. g-. 
	\beamOffset #'(0.5 . 0.5) c-. g-. aes-. g-. 
% Bars 46 to 50
	e'->-.[ c-.] c->-. a-. 
	a->-.[ f-.] f->-. d-. 
	\partCombineApart c-. a-. e'-. e,-.
	a-. \partCombineAutomatic r r4
	R2 \clef tenor
% Bars 51 to 55
	\aIIXoffset -3 a'8\p-. a'-. a-. fis-. 
	fis-. d-. d-. b-. 
	c16-. a-. c-. ees-. d-. b-. d-. d,-. 
	g8-. r r4
	R2*10
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	
	
	\clef bass g,8\f-. g'-. g,-. g'-. 
% Bars 66 to 70
	g,-. g'-. g,-. g'\p~\noBeam
	g g4_\dimmarkup g8~
	g g4 g8
	R2*9
% Bars 71 to 75
	
% Bars 76 to 80
	
	
	r4 g,\mf\<(
	bes) a(\!
	d) f
% Bars 81 to 85
	e8([ c)] f(-. e-.)
	d( a) a4(~
	a d,)
	r a''(~ \bar "||"
	\time 3/4 a c2)
% Bars 86 to 90
	b2. \bar "||"
	\time 4/4 \partCombineApart r4 e,(\mf f fis
	g a ais b) \partCombineAutomatic \bar "||"
	\timeMvtIII \once \partCombineChords cis8-. r r4
	a8-. r r4
% Bars 91 to 95
	f!8-. r r4
	R2*2
	
	r4 e8(\p\< g\!
	a\> g)\! r4
% Bars 96 to 100
	r e8(-\tweak X-offset #-4 ^\dolce\< g\!
	a\> g)\! r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	\clef tenor a8->\p g16-. g-. c8-> g16-. g-.
% Bars 106 to 110
	aes8-> g16-. g-. c-. e-. g-. e-.
	c8 r r4
	R2*5
% Bars 111 to 115
	
	
	r4 a16(\p\> e')\! r8
	R2
	r8. f16(_\dimmarkup e8) r
% Bars 116 to 120
	r8. f16( e8) r
	R2*2
	\bar "||" \key d \minor
	R2*18
% Bars 121 to 125
	
% Bars 126 to 130
	
% Bars 131 to 135
	
% Bars 136 to 140
	
	\clef bass d4..\ff d16
	des4.. bes16
	f8. g16 a4
	R2*2
% Bars 141 to 145
	
	r8. \partCombineApart e'16-. c8-.[ r16 c-.]
	\partCombineAutomatic a4 b
	g \partCombineApart a
	e a, \partCombineAutomatic
% Bars 146 to 150
	R2*2
	\clef tenor \mark \default
	r4 r8 \partCombineApart \oneVoice \shape #'((0 . -1.3)(0 . 0)(0 . 0)(0 . 0)) PhrasingSlur c'^\(_\ppdolce~
	c c4 bes8(
	a) a4 c8~
% Bars 151 to 155
	c c4 bes8(
	\voiceOne a) a4\) \oneVoice \noFlag f'8^\((_\ppdolce
	\noFlag ees) ees4 \once \voiceOne des8(
	\noFlag d!) d4 \noFlag d8(
	\noFlag d) d4 \noFlag \shape #'((0 . 0)(0 . 0)(0 . 1)(0 . 2)) Slur c8(
% Bars 156 to 160
	\voiceOne f,) f( g)\) g^\(
	a! a4 bes8(
	a) a4\) a8^\((->
	\oneVoice \noFlag fis') fis4 \noFlag d8(
	\noFlag d) d4\) \noFlag fis8^\((
% Bars 161 to 165
	<ees fis>) q4 \noFlag g8_\dimmarkup(
	\noFlag c,) c4 \noFlag bes8(
	<g a>) q4 g8
	\voiceOne a a4\) \partCombineAutomatic r8
	R2*11
% Bars 166 to 170
	
% Bars 171 to 175
	
% Bars 176 to 180
	r4 r8 \clef bass a(\f
	c4) r8 f,(
	a4) r
	R2 \mark \default
	R2*16
% Bars 181 to 185
	
% Bars 186 to 190
	
% Bars 191 to 195
	
% Bars 196 to 200
	r4 r8. a16\ff
	a8( f!16) f( d) d( cis) cis(
	f) f( d) d( bes') bes( a) a
	g4.. g16
	bes4.. bes16
% Bars 201 to 205
	f8. g16 a4
	r8. a16-. f8-.[ r16 d-.]
	bes4 c
	a bes8. f16
	a4 d,
% Bars 206 to 210
	d''2\sf
	d\sf
	d4-> d->
	d8-. r r4
	a2\sf
% Bars 211 to 215
	a\sf
	a4-> a->
	a8-. r r4
	\partCombineApart \oneVoice \omitBeam e'8( d c b
	\omitBeam c_\dimmarkup b a gis
% Bars 216 to 220
	\omitBeam a bes a gis
	\voiceOne a4 e) \bar "||" \mark \default \key a \minor
	\once \partCombineApart a,8-. \partCombineAutomatic r r4
	R2*7
% Bars 221 to 225
	
% Bars 226 to 230
	\clef tenor e''8->\p d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	c( e) c-. a-. a,8-. r
	R2*3
	
% Bars 231 to 235
	
	a'16-.\p c-. e-. c-. g8-. r
	R2
	c16-. e-. g-. e-. b8-. r
	R2*3
% Bars 236 to 240
	
	\mark \default
	e8_\dolce( d16 e) d4
	f16( e d e) d4~
	d8\noBeam b( c\< cis\!
% Bars 241 to 245
	d\> g f\! e)
	\once \partCombineApart f r r4
	R2*2
	
	r4 des8(\p c16 des)
% Bars 246 to 250
	ces4_\dimmarkup~ ces8( bes16 ces)
	aes4~ aes8( g16 aes) \clef bass
	ees4~ ees8( d16 ees)
	ees,8 r r4
	R2*5
% Bars 251 to 255
	
	
	
	
	\clef tenor \partCombineApart e''2(
% Bars 256 to 260
	\oneVoice f)(
	d) \clef bass \partCombineAutomatic 
	a,16-.-\tweak X-offset #-1.5 \ff b-. c8-. a16-. c-. f8-.
	a,16-. d-. gis8-. \partCombineApart \voiceOne \beamOffset #'(1 . -1) a,16-. e'-. c'-. b-. \partCombineAutomatic
	a8-. e-. f-. e-. 
% Bars 261 to 265
	a-. e-. f-. e-. 
	\beamOffset #'(0.5 . 0.5) c'-. g-. a-. g-. 
	\beamOffset #'(0.5 . 0.5) c-. g-. aes-. g-. 
	e'->-.[ c-.] \beamOffset #'(0.5 . 0.5) c->-. a-. 
	a->-.[ f-.] f->-. d-. 
% Bars 266 to 270
	\aIIXoffset #-2 c-. a-. e'-. e,-. 
	a'-.[ a,-.] c'-. c,-. 
	d'-. r r4
	R2*5
% Bars 271 to 275
	
	
	\bar "||"
	\key a \major R2*8
% Bars 276 to 280
	
% Bars 281 to 285
	
	r4 e,\mf\<(
	g) fis(\!
	b,)\> d\!
	cis8([ a)] d(-. cis-.)
% Bars 286 to 290
	b( fis) fis4~
	fis b
	r fis'(~ \bar "||"
	\time 3/4 fis a2)
	gis2. \bar "||"
% Bars 291 to 295
	\time 4/4 \partCombineApart r4 \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Slur cis,(^\pcresc d dis
	e fis fisis gis) \partCombineAutomatic \bar "||"
	\timeMvtIII \once \partCombineChords ais8-. r r4
	fis8-. r r4
	e8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\partCombineApart \beamOffset #'(-0.5 . -0.5) \shape #'((0 . 0)(0 . -1)(0 . -1)(0 . -0.7)) Slur a8( e' dis d
	\beamOffset #'(-0.5 . -0.5) cis[ b a]) \partCombineAutomatic e(
	fis e a e
	f e4.)~
% Bars 301 to 305
	e \clef tenor a8_\piup(
	b a d a
	<< {bes a4.)~ } {s4 s_\dimmarkup}>>
	a4. gis!8
	r8 b4 b8
% Bars 306 to 310
	r8 b4 b8 
	r8 b4 b8
	r8 d4 d8
	r8 \once \partCombineApart a4_\crescmarkup fis'8(
	e d cis b
% Bars 311 to 315
	d a4) a'8(
	gis\> fis e f)\!
	e\p r r4
	R2
	r4 r8 a(
% Bars 316 to 320
	gis\> fis d gis,)\! \clef bass
	a r r4
	R2
	eis4\f fis
	<< a2 {\dynEO #'(1.3 . 2) \hairpinEO #'(1.3 . 2) s4\sf\> s\!}>>
% Bars 321 to 325
	a4-\tweak X-offset 0.5 \p r
	a4.-\tweak X-offset #2 \pp\> r8\! 
	a4.-\tweak X-offset #2 \pp\> r8\! \bar "||"
	r4 r8 c(\f
	a fis dis c)
% Bars 326 to 330
	a4. b'8-.
	cis-. r d-. r
	\once \partCombineChords cis-. r r4
	R2*7
% Bars 331 to 335
	
% Bars 336 to 340
	\once \partCombineChords cis8-. r r4
	R2
	cis8-. r r4
	cis8-. r r4
	a2\fermata \bar "|."
}
