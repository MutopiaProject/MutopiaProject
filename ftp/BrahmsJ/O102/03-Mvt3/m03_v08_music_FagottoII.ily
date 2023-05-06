%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicFagottoIIMvtIII = \relative c {
	\clef bass
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni R2
		r4 r8 \no } c-.\p
	a'4 r8 c,-.
	a'4 r8 e-.
	c'4 r8 e,-.
% Bars 6 to 10
	c'4 r8 g-.
	e'4( dis
	e8 b a4)
	gis r4
	R2*11
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni R2
		R
		R
		R
		R \no
	}
% Bars 26 to 30
	R2*3
	
	
	\tempo "poco rit." \cueDuring #"cueVoiceFagIImIII" #UP {
		\ni \clef "treble" R2
		R \clef bass \no
	}
% Bars 31 to 35
	a2\pp~
	a
	\tempo "in tempo" d,(
	g
	c,8-.) r r4
% Bars 36 to 40
	R2*3
	
	\mark \default
	e,2\ff^\tutti
	a16-. b-. c8-. a16-. c-. f8-.
% Bars 41 to 45
	a,16-. d-. gis8-. a,16-. e'-. c-. b-. 
	a8-. e-. f-. e-. 
	a-. e-. f-. e-. 
	c'-. g-. a-. g-. 
	c-. g-. aes-. g-. 
% Bars 46 to 50
	e'->-. c-. c->-. a-. 
	a->-. f-. f->-. d-. 
	c'-. a-. e'-. e,-. 
	a-. r^\solo r4
	R2 
% Bars 51 to 55
	R2*3^\tutti
	
	
	R2*8^\solo
% Bars 56 to 60
	
% Bars 61 to 65
	
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni R2
		R
		\MmrPos #-10 R \no
	}
	g8\f-.^\tutti g'-. g,-. g'-. 
% Bars 66 to 70
	g,-. g'-. g,-. g\p~
	g g4_\dimmarkup g8~
	g g4 g8
	R2*9
% Bars 71 to 75
	
% Bars 76 to 80
	
	
	\cueDuring #"cueVoiceFagIImIII" #DOWN {
		\ni R2
		R
		R
% Bars 81 to 85
		R
		R
		R \no
	}
	r4 d'~ \bar "||"
	\time 3/4 d2.~
% Bars 86 to 90
	d4( g2) \bar "||"
	\time 4/4 \cueDuring #"cueVoiceFagIImIII" #UP { \ni R1 \no}
	b,4(\mf\< c cis d8 g,)\! \bar "||"
	\time 2/4 a8-.\f r r4
	d8-. r r4
% Bars 91 to 95
	g,8-. r r4
	R2*2
	
	r4 c8(\p\< d
	f\> e)\! r4
% Bars 96 to 100
	r c8(^\dolce\< d
	f\> e)\! r4
	R2*3
	
	\mark \default
% Bars 101 to 105
	R2*4
	
	
	
	R2*4^\tutti
% Bars 106 to 110
	
	
	
	R2*7^\solo
	
% Bars 111 to 115
	
% Bars 116 to 120
	R2*2
	
	\cueDuring #"cueVoiceFagIImIII" #UP { 
		\ni \clef "treble" R2 \bar "||" \key d \minor
		R
		R
		R \clef bass \no
	}
% Bars 121 to 125
	R2*12
% Bars 126 to 130
	
% Bars 131 to 135
	
	
	
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni \clef "treble" R2
		R
% Bars 136 to 140
		R \clef bass \no
	}
	bes'4..\ff^\tutti bes16
	bes4.. bes,16
	f8. g16 a4
	R2*2^\solo
% Bars 141 to 145
	
	r8.^\tutti e''16-. c8-.[ r16 a-.]
	f4 g
	e f8. c16
	e4 a,
% Bars 146 to 150
	\MmrLength #10 R2*2^\solo
	\mark \default
	R2*4 %r4 r8 c'\(_\ppdolce~
	%c c4 bes8(
	%a) a4 c8~
% Bars 151 to 155
	%c c4 bes8(
	r4 r8 bes'8\((_\ppdolce
	c) c4 des8(
	f,) f4 g8(
	aes) aes4 g8(
% Bars 156 to 160
	bes) bes4\) bes8(
	a!) r8 r4
	r r8 e8\((->
	a) a4 gis8(
	a) a4\) d8\((\>
% Bars 161 to 165
	ees) ees4\! d8_\dimmarkup(
	a) a4 g8(
	f) f4 e8(
	f) f4\) r8
	R2*7
% Bars 166 to 170
	
% Bars 171 to 175
	
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni \clef "treble" R2
		\MmrPos #-10 R
		\MmrPos #-10 R
		R
% Bars 176 to 180
		r4 \clef bass \no } r8 d(\f
	a'4) r8 bes,!(
	f'4) r
	R2 \mark \default
	R2*9
% Bars 181 to 185
	
% Bars 186 to 190
	
	
	
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni \clef "treble" R2
		R
% Bars 191 to 195
		\MmrPos #-6 R
		R
		R
		R
		R
% Bars 196 to 200
		r4 \clef bass \no } r8. a16\ff^\tutti
	a8( f!16) f( d) d( cis) cis(
	f) f( d) d( bes) bes( a) a
	g4.. g16
	bes4.. bes16
% Bars 201 to 205
	f8. g16 a4
	r8. a16-. f8-.[ r16 d-.]
	bes4 c
	a' bes8. f16
	a4 d,
% Bars 206 to 210
	d'2\sf
	d\sf
	d4-> d->
	d8-. r^\solo r4
	a2\sf^\tutti
% Bars 211 to 215
	a\sf
	a4-> a->
	a8-. r^\solo r4
	e'8(\fp f^\tutti e d
	e_\dimmarkup d c b
% Bars 216 to 220
	c cis d b)
	c!( d e e,) \bar "||" \mark \default \key a \minor
	a8-.\p r^\solo r4
	R2*17
% Bars 221 to 225
	
% Bars 226 to 230
	%\clef tenor e''8->\p d16-. e-. d8-> e16-. d-.
	%e8-> d16-. e-. d( f) d-. b-.
	%c( e) c-. a-. a,8-. r
	%R2*3
	
% Bars 231 to 235
	
	%a'16-.\p c-. e-. c-. g8-. r
	%R2
	%c16-. e-. g-. e-. b8-. r
	%R2*3
% Bars 236 to 240
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni \clef "treble" R2
		R \clef bass \no \mark \default
	}
	c'4_\dolce( bes
	a b!)~
	b8 r r4
% Bars 241 to 245
	r8 des( c bes)
	a r r4
	R2*3
	
	%r4 des8(\p c16 des)
% Bars 246 to 250
	\tempo "poco rit." R2*4 %\tempo "poco rit." ces4_\dimmarkup~ ces8( bes16 ces)
	%aes4~ aes8( g16 aes) \clef bass
	%ees4~ ees8( d16 ees)
	%ees,8 r r4
	\tempo "in tempo" R2*4
% Bars 251 to 255
	
	
	
	\cueDuring #"cueVoiceFagIImIII" #UP {\ni R2 \no}
	e'2_\mfcresc(
% Bars 256 to 260
	d)(
	b) \clef bass
	a,16-.\ff^\tutti b-. c8-. a16-. c-. f8-.
	a,16-. d-. gis8-. a,16-. e'-. c-. b-.
	a8-. e-. f-. e-. 
% Bars 261 to 265
	a-. e-. f-. e-. 
	c'-. g-. a-. g-. 
	c-. g-. aes-. g-. 
	e'->-. c-. c->-. a-. 
	a->-. f-. f->-. d-. 
% Bars 266 to 270
	c'-. a-. e'-. e,-. 
	a'-. a,-. c'-. c,-. 
	d'-. r^\solo r4
	R2
	R2*3
% Bars 271 to 275
	
	
	r4 r^\solo \bar "||"
	\key a \major R2*4
% Bars 276 to 280
	
	
	\cueDuring #"cueVoiceFagIImIII" #UP {
		\ni \clef "treble" R2
		R
		<< R2 {s4 s8 \clef tenor s} >>
% Bars 281 to 285
		R2
		r4 \clef bass \no } e,,\mf\<(
	g) fis(\!
	b)\> d\!
	cis8( a) d(-. cis-.)
% Bars 286 to 290
	b( fis) fis4~
	fis b
	r b~ \bar "||"
	\time 3/4 b2.~
	b4( e2) \bar "||"
% Bars 291 to 295
	\time 4/4 \cueDuring #"cueVoiceFagIImIII" #UP {\ni R1 \no}
	gis,4(\p\< a ais b8 e)\! \bar "||"
	\time 2/4 fis,8-.\f r r4
	b8-. r r4
	e,8-. r r4
% Bars 296 to 300
	R2 \bar "||"
	\tempo "Poco meno Allegro" a'8(_\pdolce g fis f
	e d cis) cis(
	d cis4) cis8(
	bis cis4.)~
% Bars 301 to 305
	cis \clef tenor fis8_\piup(
	g fis4) fis8(
	<< {f fis4.)~ } {s4 s_\dimmarkup}>>
	fis4.( e8)
	r gis(\< a\> gis\!) %<< {r8 b4 b8} {s8 s\< s\> s\!} >>
% Bars 306 to 310
	r8 b(\p a gis) 
	r gis(\< a\> gis)\! %<< {r8 b4 b8} {s8 s\< s\> s\!} >>
	r8 d'(\p cis b)
	r8 a4_\crescmarkup d8(
	cis b a gis
% Bars 311 to 315
	eis fis4) fis'8(
	e!\> d cis b)\!
	cis\p r r4
	R2
	r4 r8 fis(
% Bars 316 to 320
	e\> d b d,)\! \clef bass
	cis4\p d\<
	dis e\!
	cis4\f fis,
	b2\sf\> %<< a2 {\once \override Hairpin.minimum-length = #5 s4\sf\> s\!}>>
% Bars 321 to 325
	cis4\p r
	b4.\pp\> r8\! %<< {a4. r8} {s4\pp\> s\!}>>
	b4.\pp\> r8\! \bar "||" %<< {a4. r8} {s4\pp\> s\!}>> \bar "||"
	\tempo "Tempo primo" r4 r8 c'(\f
	a fis dis c)
% Bars 326 to 330
	a4. d8-.
	cis-. r e-. r
	a,-.\p r r4
	R2*7
% Bars 331 to 335
	
% Bars 336 to 340
	a8-.\f r r4
	R2
	a'8-. r r4
	a8-. r r4
	a,2\fermata \bar "|."
}
