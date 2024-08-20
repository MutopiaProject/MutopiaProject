%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicViolinIIMvtIII = \relative c'' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	R2*10
% Bars 6 to 10
	
% Bars 11 to 15
	r8 c-.\p b-. a-.
	fis-. gis-. a-. r
	r <a, e'>-. <c e>4
	r8 <a e'>-. <e' a>4
	r8 <c g'>-. <e g>4
% Bars 16 to 20
	r8 <c g'>-. <g' c>4
	r8 <e g> r <dis fis>
	r <e g> r dis
	r e r <c e>
	r <c d> r <b d>
% Bars 21 to 25
	<c e> e r d
	r f r d
	r e\< r e\!
	r d(\> c bes)\!
	a4 r
% Bars 26 to 30
	R2*3
	
	
	R2*2
% Bars 31 to 35
	r8 a'8^\pizz f' f,
	r a e' a,
	<f a> r r4
	b,8 r r4
	c8_\pmarccresc bes a b
% Bars 36 to 40
	c bes a b\<
	<a f'> <b d> <a f'> <b d>\!
	<a f' a>\f r r4 \mark \default
	\tuplet 6/4 4 {\tupletUp <gis' e'>16-.-\offset X-offset -2.5 \ff-\tweak X-offset #-5.5 ^\arco q-. q-. q-. q-. q-. q-. q-. q-. q-. q-. q-. \tupletNeutral }
	a8->_\benmarc e'16-. e-. dis8-> d16-. d-.
% Bars 41 to 45
	c8-> b16-. b-. a8-> e16-. e-.
	f8-> e16-. e-. a8-> e16-. e-.
	f8-> e16-. e-. a c e c
	a8 g16 g c8 g16 g
	aes8 g16 g c e g e
% Bars 46 to 50
	c c e c a! a c a
	f f a f d d f d
	<e a>8-. <a c>-. <a b>-. <gis b>-.
	a-. r r4
	R2*3
% Bars 51 to 55
	
	
	r8 c-\tweak X-offset #-5.2 ^\pizz\p b a
	g r r4
	R2*9
% Bars 56 to 60
	
% Bars 61 to 65
	
	
	
	r4 r8. g16\f-\tweak X-offset #-5 ^\arco(
	g') f,( f') d,( d') g,( g') f,(
% Bars 66 to 70
	f') d,( d') g,,( g'8)\noBeam <g, g'>8_\pdim~
	q q4 q8
	R2*17
% Bars 71 to 75
	
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	
	\bar "||"
	\time 3/4 R2.*2
% Bars 86 to 90
	\bar "||"
	\time 4/4 r2 r4 r8 <<{d''8
		s8\< s s s s4. s8\!
	} \\ {
		d\f-\tweak X-offset #-3.5 ^\div^(
		<f a> <e g> <d f> <e g>) <e g>4.^( <d f>8)
	}>> \bar "||"
	\timeMvtIII <cis e>8-.\f r r4
	<a fis'>8-. r r4
% Bars 91 to 95
	<d, a' f'!>8-. r r4
	r f8-\tweak X-offset #-2.0 \p^\pizz r 
	e r r4
	R2
	c8 r r4
% Bars 96 to 100
	R2
	c4.(-\tweak X-offset #-3 \pp^\arco g'8
	fis4. f8
	e4. d8
	c4. gis8 \mark \default
% Bars 101 to 105
	a) r r e'\p^\pizz
	fis gis a a
	c r r4
	R2*3
	
% Bars 106 to 110
	
	r16 e,-.^\arco_\plegg b-. e-. r dis-. c-. dis-.
	r e-. b-. e-. r dis-. fis-. a-.
	gis8-.-\offset X-offset 0.5 _\dimmarkup r a-. r
	gis-. r a-. r
% Bars 111 to 115
	a-. r r4
	R2*6
% Bars 116 to 120
	
	
	r4 r8. a16-.\mf \bar "||" \key d \minor
	a8[-. r16 f-.] f8[-. r16 d-.]
	bes4.. bes16
% Bars 121 to 125
	bes4.. bes16
	a4 a
	r8. c!16-. e8-.[ r16 c-.]
	a4 b8. d16
	g,4 a8. c16
% Bars 126 to 130
	a4 b
	g'\f^\pizz r
	ees r
	cis cis
	r8 <d' e!>-.\f-\tweak X-offset #-5.5 ^\arco <cis e>-. <cis a'>-.
% Bars 131 to 135
	d8-.\p r r4
	bes,4\f-\tweak X-offset #-5.5 ^\pizz r
	b b
	r8 a'8-.\f-\tweak X-offset #-5.5 ^\arco a-. gis-.
	a8-.\p[ r16 a-.] a8-.[\< r16 a-.]
% Bars 136 to 140
	f'8-.[ r16 f-.] f8-.[ r16 f-.]\!
	\tuplet 3/2 4 {f4(\ff e8) d( e f)
	f4( ees8) des( ees f)}
	c4 cis
	r c,!^\pizz\p
% Bars 141 to 145
	cis r
	r8. c'!16-.-\tweak X-offset #-5.5 ^\arco\ff e8-.[ r16 e-.]
	\tuplet 3/2 4 {e4( d8) b( c d)
	d4( c8) a( b c)}
	gis4 a
% Bars 146 to 150
	R2*2
	\mark \default
	R2*32
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	
% Bars 176 to 180
	
	
	
	\mark \default
	r4 fis\pp(
% Bars 181 to 185
	a) d( 
	a) fis(
	a) d(
	a) <g bes!>^\div(\<
	<c ees>\!) <bes! d>(\>
% Bars 186 to 190
	<d, b'>)\! <b e>(
	<d b'>) <e a>(
	<cis g'>) <d fis>(\pp
	a')^\unis d(
	d,) dis(\<
% Bars 191 to 195
	fis)\> b(\!
	fis) b,(
	fis') e(_\dimmarkup
	c!) b(
	d) cis(
% Bars 196 to 200
	d) r8. <a' a'>16-\tweak X-offset #-3 \ff
	q8( f'!16) f( d) d( cis) cis(
	f) f( d) d( bes!) bes( bes,!) bes
	bes4.. bes16
	bes4.. bes16
% Bars 201 to 205
	a4 a
	r8. f''16-. a8-.[ r16 f-.]
	\tuplet 3/2 4 {a4( g8) e( f g)
	g4( f8) d( e f)}
	cis4 d8.\noBeam <d d'>16
% Bars 206 to 210
	q4..\sf <d, d'>16
	q8\sf( c'!16) c( bes) bes( a) a(
	gis)\sf gis( a) a( gis)\sf gis( a) a(
	gis8-.) r r8. <a a'>16
	q4..\sf <<{a16} \\ {a}>>
% Bars 211 to 215
	a8\sf( g!16) g( f) f( e) e(
	dis\sf) dis( e) e( dis)\sf dis( e) e(
	dis8-.) r r4
	e8^\pizz r r4
	R2*3
% Bars 216 to 220
	
	\bar "||" \mark \default \key a \minor
	R2
	r4 r8 c-.\p^\arco
	<a e'>4 r8 c-.
% Bars 221 to 225
	<a e'>4 r8 c-.
	<c g'>4 r8 e-.
	<c g'>4 r8 e-.
	g4( fis
	e dis)
% Bars 226 to 230
	r8 e r d!
	r e d a'
	r c-. b-. a-.
	fis-. gis-. a-. r
	r a,-. <c e>4
% Bars 231 to 235
	r8 a-. <e' a>4
	r8 c-. <e g>4
	r8 c-. <g' c>4
	r8 <e g> r <dis fis>
	r <e g> r dis
% Bars 236 to 240
	r e r <c e>
	r <c d> r <b d> \mark \default
	<c e> e r d
	r f r d
	r g, r g
% Bars 241 to 245
	r g' f e
	f4 r
	R2*3
% Bars 246 to 250
	R2*2
	
	aes,2-\tweak extra-offset #'(-0.3 . 0.3) \pp(
	g
	aes8-.) r r4
% Bars 251 to 255
	R2*6
% Bars 256 to 260
	
	\tuplet 3/2 8 {d!16\f[( f\< b] f[ b d]) \tupletUp b[( d f] d[ f b])\! \tupletNeutral }
	a,8->\ff e'16-. e-. dis8-> d16-. d-.
	c8-> b16-. b-. a8-> e16-. e-.
	f8 e16 e a8 e16 e
% Bars 261 to 265
	f8 e16 e a c e c
	a8 g16 g c8 g16 g
	aes8 g16  g c e g e
	c c e c a! a c a
	f f a f d d f d
% Bars 266 to 270
	e8-. <c' e>-. <b e>-\tweak X-offset #-1.5 \sf-. <b e>-.
	<a c>-\tweak X-offset #-1.5 \sf-. q-. <g c>\sf-. q-.
	<f a>-. r r4
	R2
	gis8(-\tweak extra-offset #'(0 . 1.5) _\mfdimD-\tweak rotation #'(-2.5 1 0) \> a) a( b)
% Bars 271 to 275
	e,( d) d( b)
	b4 b\!
	R2 \bar "||" \key a \major
	R2*15
% Bars 276 to 280
	
% Bars 281 to 285
	
% Bars 286 to 290
	
	
	\bar "||"
	\time 3/4 R2.*2
	\bar "||"
% Bars 291 to 295
	\time 4/4 r2 r4 r8 b'(\f
	\hairpinShorten #'(0 . 3) <d fis>\<-\offset X-offset -7 ^\div <cis e> <d fis> <cis e>) <cis e>4.( <b d>8)\! \bar "||"
	\timeMvtIII <ais cis>8-.\f r r4
	<fis dis'>8-.^\unis r r4
	<b, fis' d'!>8-. r r4
% Bars 296 to 300
	r4 d8\p-\tweak X-offset #-6 ^\pizz r \bar "||"
	cis8 r r4
	R2*17
% Bars 301 to 305
	
% Bars 306 to 310
	
% Bars 311 to 315
	
	
	
	
	gis4.(^\arco a8)\>~
% Bars 316 to 320
	a4( gis)\!
	a4.( ais8)\<
	b4.( bis8)
	cis4.(-\tweak X-offset #-2.5 \f d8)
	a'-.\sf r r4
% Bars 321 to 325
	e8-.\p r r4
	R2*2
	\bar "||"
	e8(-\tweak X-offset #-3 _\fmarc e'16-.) e-. dis4->~
	dis2~
% Bars 326 to 330
	dis8 d-! cis-! <a fis'>-!
	<a e'>-. r <gis b>-. r
	<a cis>-.-\offset X-offset 1 \p r r \dynEO #'(1 . 1) d\sfp
	cis-. b-. a-. gis-.
	a-. r r d-.\sfp
% Bars 331 to 335
	cis-. b-. a-. gis-.
	a-. e4\p gis8~\<
	gis a4\! <e d'>8\cresc~
	q <e cis'>4 <e d'>8~
	q <e cis'>4 <e' d'>8-.
% Bars 336 to 340
	<e cis'>-.-\tweak X-offset #-1.5 \f r r4
	R2
	<e, cis' a'>8-. r r4
	<e cis' a'>8-. r r4
	<cis a'>2\fermata \bar "|."
}
