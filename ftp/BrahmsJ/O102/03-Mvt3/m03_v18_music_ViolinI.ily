%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicViolinIMvtIII = \relative c'' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni \clef "bass" R2
		R \no \clef treble
	}
	R2*6
% Bars 6 to 10
	
	
	
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni R2
		R
% Bars 11 to 15
		r8 \no } e-.\p dis-. d-.
	c-. b-. a-. r
	r e-. a4
	r8 e-. c'4
	r8 g-. c4
% Bars 16 to 20
	r8 g-. e'4
	r8 b r c
	r b r a
	r gis r a
	r a r g!
% Bars 21 to 25
	g g r g
	r a r g
	r\< g r g\!
	r bes(\> a g)\!
	f4 r
% Bars 26 to 30
	R2*3
	
	
	\tempo "poco rit." r8 c\pp^\pizz a' a,
	r c c' c,
% Bars 31 to 35
	r c' a' a,
	r c c' c,
	\tempo "in tempo" <c a'> r r4
	f,8 r r4
	e8_\pmarccresc d f d
% Bars 36 to 40
	e d f d\<
	<d a'> <b g'> <d a'> <b g'>\!
	<a f' d'>\f r r4 \once \override Score.RehearsalMark.self-alignment-X = #1 \mark \default
	\tuplet 6/4 4 {e'''16\ff-.^\arco e,-. e'-._\tutti e,-. e'-. e,-. e'-. e,-. e'-. e,-. e'-. e,-. }
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
	e8-. a-. a-. gis-.
	a-. r r4^\solo
	R2
% Bars 51 to 55
	R2*2^\tutti
	
	r8 a\p^\pizz g fis
	g r r4^\solo
	R2*6
% Bars 56 to 60
	
% Bars 61 to 65
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni R2
		\MmrPos #-11 R
		\MmrPos #-11 R
		r4 r8. \no } g16\f-\tweak X-offset #-3 ^\arco(
	g')^\tutti f,( f') d,( d') g,,( g') f,(
% Bars 66 to 70
	f') d,( d') g,,( g'8) f_\pdim~
	f d4 g,8
	R2
	R2*15^\solo
% Bars 71 to 75
	
% Bars 76 to 80
	
% Bars 81 to 85
	
	
	
	\cueDuring #"cueVoiceVlnImIII" #UP { 
		\ni R2 \bar "||"
		\time 3/4 R2.
% Bars 86 to 90
		R \bar "||"
		\time 4/4 r2 r4 r8 \no } d'''\f\<(
	f e f e) e4.( d8)\! \bar "||"
	\time 2/4 cis8\f-. r r4
	a8-. r r4
% Bars 91 to 95
	a'8-. r r4
	r b,,8\p^\pizz r
	c r r4
	R2
	c8 r r4
% Bars 96 to 100
	R2
	c,4.(-\tweak X-offset #-3 \pp^\arco bes8
	a4. aes8
	g4. gis8
	a4) r \mark \default
% Bars 101 to 105
	r8 e'\p^\pizz fis gis
	a b c e
	a r r4
	R2
	r16 e,-._\plegg^\arco^\tutti g-. e-. c8-. r
% Bars 106 to 110
	r16 e-. g-. e-. c8-. r
	r16 g'16-. b-. g-. r16 fis-. c'-. fis,-.
	r g-. b-. g-. r fis-. a-. dis-.
	e8-._\dimmarkup^\solo r d!-. r
	e-. r d-.[ r16 f]-.
% Bars 111 to 115
	e8-. r r4
	R2*4
% Bars 116 to 120
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni \MmrPos #4 R2^\tutti
		\MmrPos #4 R \no
	}
	r4 r8. a,16-.\mf^\solo \bar "||" \key d \minor
	a8-.[ r16 f]-. f8-.[ r16 d-.]
	d4.. d16
% Bars 121 to 125
	des4.. des16
	c4 cis
	r8. g'16-. e8-.[ r16 c!-.]
	c4 d8. f16
	b,4 c8. e16
% Bars 126 to 130
	c4 b
	g'\f^\pizz r
	g r
	a a
	r8 bes'-.^\arco\f a-. e'-.
% Bars 131 to 135
	d-.\p r r4
	d,,4\f^\pizz r
	e e
	r8 f'-.\f^\arco d-. b'-.
	a-.\p[ r16 a-.] a8-.\<[ r16 a-.]
% Bars 136 to 140
	a8-.[ r16 a-.] a8-.[ r16 a-.]\!
	\tuplet 3/2 4 {a4(\ff g8) f( g a)}
	\tuplet 3/2 4 {a4( g8) f( g a)}
	a4 e
	r a,^\pizz\p
% Bars 141 to 145
	e r
	r8. g'16-.\ff^\arco^\tutti g8-.[ r16 g-.]
	\tuplet 3/2 4 {g4( f8) d( e f)}
	\tuplet 3/2 4 {f4( e8) c( d e)}
	b4 a
% Bars 146 to 150
	r-\tweak Y-offset #4.5 ^\solo bes,!\p^\pizz
	a r \mark \default
	R2*24
% Bars 151 to 155
	
% Bars 156 to 160
	
% Bars 161 to 165
	
% Bars 166 to 170
	
% Bars 171 to 175
	
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni \MmrPos #-10 R2
		\MmrPos #-8 R
		\MmrPos #-8 R
		R
% Bars 176 to 180
		R
		R
		R
		R \mark \default
		r4 \no } a'(\pp^\arco
% Bars 181 to 185
	fis') eis(
	fis) a,(
	fis') eis(
	fis) bes!(\<
	a)\! g(\>
% Bars 186 to 190
	f!)\! e(
	d) cis(
	b) a(\pp
	fis') eis(
	fis) fis,(\<
% Bars 191 to 195
	fis')\> d!(\!
	dis) b'(
	a) g(_\dimmarkup
	dis) e(
	bes!) a~
% Bars 196 to 200
	a r8. <a a'>16\ff^\tutti
	q8( f'!16) f( d) d( cis) cis(
	f) f( d) d( bes!) bes( bes,!) bes
	d4.. d16
	des4.. des16
% Bars 201 to 205
	c4 cis
	r8. c''!16-. c8[-. r16 c-.]
	\tuplet 3/2 4 {c4( bes8) g( a bes)}
	\tuplet 3/2 4 {bes4( a8) f( g a)}
	e4 d8. <d d'>16
% Bars 206 to 210
	q8\sf( c'16) c( bes) bes( a) a(
	bes8\sf)( a16) a( g) g( f) f(
	e)\sf e( f) f( e)\sf e( f) f(
	e8-.) r^\solo r8. <a, a'>16
	q8(\sf^\tutti g'16) g( f) f( e) e(
% Bars 211 to 215
	f8)(\sf e16) e( d) d( c) c(
	b)\sf b( c) c( b)\sf b( c) c(
	b8-.) r^\solo r4
	e,8^\pizz^\tutti r r4
	R2*3
% Bars 216 to 220
	
	\bar "||" \key a \minor \mark \default
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni \clef "bass" R2
		r4 r8 \no \clef treble } e-.\p^\arco
	a4 r8 e-.
% Bars 221 to 225
	a4 r8 e-.
	c'4 r8 g-.
	c4 r8 g-.
	e'4( dis
	e b)
% Bars 226 to 230
	r8 b r b
	r b b f'
	r e-. dis-. d-.
	c-. b-. a-. r
	r e-. a4
% Bars 231 to 235
	r8 e-. c'4
	r8 g-. c4
	r8 g-. e'4
	r8 b r c
	r b r a
% Bars 236 to 240
	r gis r a
	r a r g! \mark \default
	g g r g
	r a r g
	r g r g
% Bars 241 to 245
	r bes a g
	f4 r
	R2
	aes,2-\tweak X-offset #-4.5 \pp(
	des4) r
% Bars 246 to 250
	\tempo "poco rit." R2*2
	
	ces2(\pp
	bes
	\tempo "in tempo" aes8-.) r r4
% Bars 251 to 255
	R2*3
	
	
	\cueDuring #"cueVoiceVlnImIII" #DOWN {
		\ni R2
		\MmrPos #-4 R 
% Bars 256 to 260
		\MmrPos #-4 R \no
	}
	\tuplet 3/2 8 {d!16([\f\< f b] f[ b d]) b([ d f] d[ f b])}
	a8->\ff^\tutti e'16-. e-. dis8-> d16-. d-.
	c8-> b16-. b-. a8-> e16-. e-.
	f8 e16 e a8 e16 e
% Bars 261 to 265
	f8 e16 e a c e c
	a8 g16 g c8 g16 g
	aes8 g16 g c e g e
	c c e c a! a c a
	f f a f d d f d
% Bars 266 to 270
	e8-. a-. a-.\sf g-.
	g-.\sf f-. f-.\sf e-.
	a,-. r^\solo r4
	R2
	e'8(-\tweak Y-offset #-3 \mf^\tutti d) -\tweak X-offset #0 _\dimD\> d( b)
% Bars 271 to 275
	b( gis) gis( e)
	e( d4 b8)\!
	R2 \bar "||" \key a \major
	R2*14
% Bars 276 to 280
	
% Bars 281 to 285
	
% Bars 286 to 290
	
	
	\cueDuring #"cueVoiceVlnImIII" #UP { 
		\ni R2 \bar "||"
		\time 3/4 R2.
		R \bar "||"
% Bars 291 to 295
		\time 4/4 a''2\rest a4\rest a8\rest  \no } b(\f
	d\< cis d cis) cis4.( b8)\! \bar "||"
	\time 2/4 ais8-.\f r r4
	fis8-. r r4
	fis'8-. r r4
% Bars 296 to 300
	r4 gis,,8\p^\pizz r \bar "||"
	\tempo "Poco meno Allegro" a8 r r4
	R2*9
% Bars 301 to 305
	
% Bars 306 to 310
	
	\cueDuring #"cueVoiceVlnImIII" #UP {
		\ni R2
		R
		R
		R
% Bars 311 to 315
		R
		R \no
	}
	a4.(^\arco\p\< ais8)
	b4.( bis8)\!
	cis4 cis,(\>
% Bars 316 to 320
	d b)\!
	a4.(\p ais8\<)
	b4.( bis8)\!
	cis32\mf([ eis gis eis)] cis[( eis gis eis)] cis[( eis gis cis)] d[( a fis d)]
	a'8-.\sf r r4
% Bars 321 to 325
	a8-.\p r r4
	R2*2
	\bar "||"
	\tempo "Tempo primo" a8(_\fmarc e''16-.) e-. dis4->~
	dis2~
% Bars 326 to 330
	dis8 d-! cis-! b-!
	e-. r gis,-. r
	a-.\p r r d-.\sfp
	cis-. b-. a-. e-.
	a-. r r d-.\sfp
% Bars 331 to 335
	cis-. b-. a-. e-.
	a-. a,4\p b8~\<
	b cis4\! e8~\cresc
	e a4 b8~
	b cis4 e8-.
% Bars 336 to 340
	cis'-.\f r r4
	R2
	<e,,, cis' a'>8-. r r4
	q8-. r r4
	<cis a'>2\fermata \bar "|."
}
