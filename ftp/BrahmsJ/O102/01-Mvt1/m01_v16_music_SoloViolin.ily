% Project Name : Double Concerto Op102
% Fichier :      m01_v16_music_SoloViolin.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicSoloViolinMvtI = \relative c'' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni R1
		R
		R
		R \no
	}
	\textLengthOn <>_\markup {(in modo d'un recit.)} R1*21^\markup {Solo-Vlc.} \textLengthOff
% Bars 6 to 10
	
% Bars 11 to 15
	
% Bars 16 to 20
	
% Bars 21 to 25
	
% Bars 26 to 30
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni R1
		R
		\MmrPos #-6 R
		R
		r2 r4 \no } <g! a>\p\<(
% Bars 31 to 35
	a'2\> e4) <fis, a>(\<
	a'2\> e4) <f,! a>\<(
	\times 2/3 {a'4 d,) <e, a>(} \times 2/3 {a' cis,) <dis, a'>(\!}
	c''!2~_\piuf \times 2/3 {c4 a) fis}
	\shape #'((0 . -2)(0 . -2)(0 . -3)(0 . -3)) Slur \times 2/3 {c( a fis} \times 2/3 {c) b a}
% Bars 36 to 40
	\grace {gis16[( a b]} a2)( gis4) r
	R1
	\times 2/3 {r4 <e' bes'>( g'!~} \times 2/3 {g e) <e, g>(\<}
	<d bes'>2\> <cis a'>4)\! r
	\times 2/3 {r4 <fis a>( a'~} \times 2/3 {a fis) <fis, a>\<}
% Bars 41 to 45
	<e c'!>2\> \times 2/3 {<dis b'>4\! r_\crescmarkup <e b'>(}
	<bes' d>2 \times 2/3 {<a cis>4) r <a d>(}
	\times 2/3 {<b! a'>2 gis'4)} \times 2/3 {<c, b'>2( a'4)}
	<d, c'>4.( b'8) <e, d'>4.(\< c'8)
	<a, e''>4.( d'8) <a, e''>4.( dis'8)
% Bars 46 to 50
	a'16\f( e c a e c a e) c'( a e c a8) r
	r2 e'16( a c e a c e a,)
	a'( f d a f d a f) d'( a f d a8) r
	r2 f'16( a d f a d f a,)
	a'(_\fsemprepiu fis c fis c a) c( a fis a fis c) fis( c a c
% Bars 51 to 55
	a fis) a( fis\< c fis c a) a'( fis c fis c a) a'( fis
	c fis c a)\! r4 e'8\ff( fis16 gis a b c d 
	e) a,( b c d e fis gis a) e( fis gis a b c d 
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
% Bars 56 to 60
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r \mark \default
	\MmrLength #9 R1*22
% Bars 61 to 65
	
% Bars 66 to 70
	
% Bars 71 to 75
	
% Bars 76 to 80
	
	
	\mark \default
	\MmrLength #9 R1*11
% Bars 81 to 85
	
% Bars 86 to 90
	
	
	
	\mark \default
	\MmrLength #9 R1*22
% Bars 91 to 95
	
% Bars 96 to 100
	
% Bars 101 to 105
	
% Bars 106 to 110
	
% Bars 111 to 115
	\mark \default
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni \MmrPos #-8 R1
		\MmrPos #-8 R
		\MmrPos #-8 R
		\MmrPos #-8 R \no
	}
% Bars 116 to 120
	f''4.\f e8 a,2~
	a4. a,8( a'4.\> g8)
	f(\mp a g f) a( g e f)
	d( d' a\> f) a( g e f)\!
	dis16(_\crescmarkup a fis' a, e' a, dis a) g'2
% Bars 121 to 125
	eis16( b gis' b, fis' b, eis b) a'2
	gis16( d! b' d, a' d, gis d) c'2
	ais16( e cis' e, b' e, ais e) d'2
	bis16( e, dis' e, cis' e, bis' e,) cis'( e, e' e, d' e, cis' e,)
	d'( a, f'' a,, e'' a,, d' a,) f''( a,, a'' a,, g'' a,, f'' a,,)
% Bars 126 to 130
	<< % bar 126
		{ \voiceOne a''8( e c) b-.\noBeam a( e d) c-.\noBeam }
		\new Voice {\voiceTwo  a4.\f dis8 a4( b8) e,\noBeam }
	>> \oneVoice
	<d b'>2-> <fis a>->
	<< % bar 128
		{ \voiceOne s2 c''8( e gis) a-.\noBeam }
		\new Voice {\voiceTwo <e,, c'>( <c' e>~ <c a'>) <dis b'>-.\noBeam e4( gis8) a-.\noBeam } 
	>> \oneVoice
	<d, d'>2-> <dis dis'>->
	<< { s16\< s s s  s s\> s s\!  s\< s s s  s s\> s s\! } { <e e'>4.^( \acciaccatura g'8 f8) <a,, e''>4.^( \acciaccatura a''8 f) } >> 
% Bars 131 to 135
	\shape #'((0 . 0)(0 . 0)(0 . -1)(0 . -2)) Slur e2.\!( gis,,,4)
	\times 2/3 {a8\f\< c f} \times 2/3 {e\> c gis} \times 2/3 {a\< c g'!} \times 2/3 {f\> c gis!}
	\times 2/3 {a\< c g'!} \times 2/3 {fis a c} \times 2/3 {gis'\> d b} \times 2/3 {gis d b\!}
	a4 r r2
	R1
% Bars 136 to 140
	\times 2/3 {e'8\mf\< g! c} \times 2/3 {b\> g dis\!} e8 r r4
	\times 2/3 {e8\< g d'!} \times 2/3 {cis e g} g'\f r r4
	\times 2/3 {c,,!8(\p a eis} fis) r \times 2/3 {ees'( c gis} a) r
	\times 2/3 {g'( ees c} a) r \times 2/3 {fis'( c a} d,) r
	\times 2/3 {c''_\piup( a a,} \times 2/3 {a' a, a')} \times 2/3 {ees'( c a,} \times 2/3 {c' a, c')}
% Bars 141 to 145
	\times 2/3 {g'( ees a,,\>} \times 2/3 {g'' ees a,,} \times 2/3 {g'' ees a,,} \times 2/3 {g'' ees a,,)}
	\times 2/3 {fis''( c a,} \times 2/3 {fis'' c a,} \times 2/3 {fis'' c a,} \times 2/3 {fis'' c a,)\!} \mark \default
	\times 2/3 {g''(_\pdolce f! d} \times 2/3 {g, f d)} \times 2/3 {g( f d} \times 2/3 {g, f d)}
	g, r r4 r \times 2/3 {g'8( d' f}
	\times 2/3 {g\> f d} \times 2/3 {g, d' f)} \times 2/3 {g( f d} \times 2/3 {g, d' f)\!}
% Bars 146 to 150
	R1_\gp
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni \clef "bass" R1 \clef treble \no
	}
	\times 2/3 {c,8( g' bes} \times 2/3 {c g' bes)} \times 2/3 {c( bes g} \times 2/3 {c, g' bes)}
	\times 2/3 {c( a fis} \times 2/3 {c fis gis)} \times 2/3 {a( fis c} \times 2/3 {a c fis)}
	\times 2/3 {g( f! d} \times 2/3 {g, a d)} \times 2/3 {g( f d} \times 2/3 {b g) r}
% Bars 151 to 155
	R1*10
% Bars 156 to 160
	
% Bars 161 to 165
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni \MmrPos #-6 R1
		\MmrPos #-6 R
		\MmrPos #-6 R
		\MmrPos #-6 R
		R
% Bars 166 to 170
		r2 \no } r4 e'(_\pdolce
	d8) r e4( b8) r c4(\<
	d2\> g,4)\! e'(
	d8) r e4( b8) r c4(\<
	c'1\dimD\>
% Bars 171 to 175
	g2.)\! <a, a'>4-\tweak X-offset #-2 _\fmarc( \mark \default
	<ais ais'>-.) <b b'>(~ q16 a' g fis) a( g fis e)
	g( e a, g) fis( a d e fis8) r <d d'>4(
	<dis dis'>-.) <e e'>(~ q16 d' c b) d( c b a)
	c( a d, c) b( d g a b8) r b,,16\mf( c d e
% Bars 176 to 180
	f e d cis) d( e f g a g f e) f( a d e
	f e d a) f( a d e f e d a) b( c d e
	f e d cis) d( e f g a g f e) f( a d e
	f_\dimD\> e d a) f( a d e f e d a) f( a d f\!)
	a(_\plegg g f d a g f d a g f d a8) r
% Bars 181 to 185
	r4 a16( d f g a d f g a g f d)
	d'( bes a g d bes a g d8) r r4 
	r2 d16( g a bes d g a bes)
	ees(_\piup c a ees c a ees c) r4 c16( ees a c)
	d'( b! f d b f d b) r4 d16( f b d)
% Bars 186 to 190
	cis'( g e cis g8) r d''16( a fis d a8) r
	b'16( f! d b f8) r c''!16( g e c b8) r
	a'16( ees c ees c_\dimmarkup a c a ees\> a ees c ees c a c)\!
	a8 r r4 r_\fbenmarc <g'' g'>8-.-> <c e!>-.
	<e, c'>-.-> <c' e>-. <e, c'>-.-> <c e>-. <e g>-.-> <c e>-. <e, c'>-.-> <c' e>-.
% Bars 191 to 195
	<e, c'>8-.-> <c e>-. << % bar 191
		{\voiceOne s16 e'-.[ s16 e-. s16 e-. s16 e-. s16 e-. s16 e-.] }
		\new Voice {\voiceTwo g'-.[ s e-. s c-. s e-. s c-. s e,-.] s}
	>> \oneVoice
	<< % bar 192
		{\voiceOne s16 e-.[ s e-.] s e-.[ s e-. s e-.]}
		\new Voice {\voiceTwo g-.[ s e-.] s c-.[ s e-. s c-.] s}
	>> \oneVoice <c, e>8-. r4 \mark \default
	<g g'>8-._\fmarc g'4 g g g8(
	<f d'>-.) q4-> q8( <d c' a'!>)-. <c' a'>4-> q8-.
	d'1(~\startTrillSpan
% Bars 196 to 200
	\afterGrace d2 {cis16[\stopTrillSpan d])} f( d b g f d b g)
	R1*19
% Bars 201 to 205
	
% Bars 206 to 210
	
% Bars 211 to 215
	
% Bars 216 to 220
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni \clef "bass" R1
		R \no \mark \default \clef treble
	}
	<e' e'>4.\f <d d'>8 <b b'>4 r
	<c c'>4. <b b'>8 <e, e'>4 r
	r2 \times 2/3 {g,2 c4\<}
% Bars 221 to 225
	\times 2/3 {e g c} e8 g c e\!
	r2 \times 2/3 {b,,2 d4}
	\times 2/3 {g\< b d} g8 b d g\!
	R1
	r2 \times 2/3 {\acciaccatura e,8 e'4-. \acciaccatura fis,8 fis'4-. \acciaccatura g,8 g'4~}
% Bars 226 to 230
	g8 e b g e b g e
	cis4 r \times 2/3 {\acciaccatura cis'8 cis'4-. \acciaccatura d,8 d'4-. \acciaccatura e,8 e'4~}
	e8 cis ais e cis ais e cis
	r2 r4 \times 2/3 {d8\p( e fis)}
	r2 r4 \times 2/3 {b8( cis d)}
% Bars 231 to 235
	r2 r4 \times 2/3 {g8( a b}
	\times 2/3 {e, fis g} \times 2/3 {cis, d e} \times 2/3 {ais, b cis} e,4-.)
	\times 2/3 {d8( cis b} \times 2/3 {e d cis} \times 2/3 {fis e d)} r4
	\times 2/3 {b'8( a g} \times 2/3 {cis b ais} \times 2/3 {d cis b)} r4
	\times 2/3 {g'8( fis e} \times 2/3 {a g fis} \times 2/3 {b a g)} r4
% Bars 236 to 240
	\times 2/3 {gis8(_\piup fis eis} \times 2/3 {ais gis fis} \times 2/3 {b ais gis)} r4
	\times 2/3 {cis8(_\dimmarkup b ais)} r4 \times 2/3 {dis8( cis b)} r4
	dis8.(_\dolce b16 gis eis ais b) cis8.( ais16 fis dis gis ais)
	b8.( gis16 eis cis fis gis) ais8.( fis16 dis b eis fis)
	gis( eis b cis dis b gis ais b_\dimmarkup gis eis fis gis eis b cis
% Bars 241 to 245
	dis8) r r4 r2 \mark \default
	a''!1\p\startTrillSpan~
	\afterGrace a2( {gis16[\stopTrillSpan a])} c!4\trill fis,\trill
	a\trill c,!\trill ees\trill a,\trill -\tweak Y-offset #6.0 -\tweak X-offset #1.5 ^\flat
	c\trill( bes\trill) \afterGrace a2\trill( {g16[ a]} 
% Bars 246 to 250
	b!8) r r4 r2
	R1
	r4 d,\trill f!\trill b,\trill
	d\trill-\tweak Y-offset #5.0 -\tweak X-offset #1.5 ^\flat c2(\trill b8) r
	bes4\f\trill bes'2\trill bes,4\trill
% Bars 251 to 255
	bes'\trill \afterGrace bes'2\trill( {a16[ bes]} a8) r
	f,4\trill f'2\trill f,4\trill
	f'\trill \afterGrace f'2\trill( {e16[ f]} e8-.) r
	ees,4\trill ees'2_\crescmarkup\trill( d8-.) r
	des,4\trill des'2\trill( bes8-.) r
% Bars 256 to 260
	bes,4\trill bes'2\trill( ges8-.) r
	\afterGrace ges'1\ff-\tweak X-offset #-1 \trill -\tweak Y-offset #6.0 -\tweak X-offset #0.8 ^\flat( {f16[ ges])}
	f8-. r f16( a,, c f,) f( c' a f'') ges( ges, ees ges,)
	f''( a,, c f,) f( c' a f'') f8 r r4
	R1*2
% Bars 261 to 265
	
	r4 c16( e,! g, c,) c( g' e' c') des( f, g, g,)
	c''( e, g, c,) c( g' e' c') c8 r r4
	R1*6
% Bars 266 to 270
	
	
	
	\mark #11
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\clef "bass" \ni R1
% Bars 271 to 275
		R \clef "tenor"
		R \clef "treble"
		R \no 
	}
	e,,8\(\p e4 e8( g) g4 g8(
	c) c4 c8( ees) ees4 ees8(
% Bars 276 to 280
	aes) aes4 aes8( c) c4 c8(
	dis) dis4 dis8( gis) gis4 gis8\)(
	b!\<) b4 b8( a) a4 a8~(
	a2\> gis4.)\! g8_\dimmarkup~
	g4. f!8~ f4. e8~
% Bars 281 to 285
	e dis4 c! a fis8
	e2_\pcrescmolto r16 e,( fis gis a b cis d)
	e2 r16 a,( b c! d e fis gis)
	a e fis gis a b c d e a, b c d e f! g!
	a e fis gis a e f g a e fis gis a e f g
% Bars 286 to 290
	a4-!\ff <a, a'>-! r <a, c e'>-!
	r <d, f' f'>-! r <d a'' fis'>-!
	r <g, b' g' g'>-! r2
	r4 <e' b' gis' gis'> r2 \mark \default
	R1*7
% Bars 291 to 295
	
% Bars 296 to 300
	
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni R1
		R
		\MmrPos #-6 R \no
	}
	<d' d'>4._\fespr d,8( \tuplet 3/2 4 {f8 d' gis b d, e,)}
% Bars 301 to 305
	c4. a'8( \tuplet 3/2 4 {f a c a' c, e,)}
	d4. c'8( \tuplet 3/2 4 {b d b' d d, d,)}
	c2. a'4(
	c,2. b4)
	\times 2/3 {a8\f c f} \times 2/3 {e c gis} \times 2/3 {a c g'!} \times 2/3 {f c gis!}
% Bars 306 to 310
	\times 2/3 {a\< c g'!} \times 2/3 {fis a c} \times 2/3 {gis'\> d b} \times 2/3 {gis d b\!}
	a4 r \times 2/3 {a8\< c g'!} \times 2/3 {f\> c g\!}
	aes4 r \times 2/3 {a''!8\rf\> fis c} \times 2/3 {a fis c\!}
	bes4 r \times 2/3 {g'8 bes f'!} \times 2/3 {ees bes f}
	ges4 r \times 2/3 {g''!8\rf\> e! bes} \times 2/3 {g e bes\!}
% Bars 311 to 315
	a!4 r \times 2/3 {a''8\rf\> fis dis} \times 2/3 {a fis dis\!}
	\times 2/3 {a'_\dimmarkup fis dis} a8 r \times 2/3 {a fis dis} a r \bar "||" \key a \major \mark \default
	\times 2/3 {e'''8(_\pdolce d! b} \times 2/3 {e, d b)} \times 2/3 {e( d b} \times 2/3 {e, d b)}
	r2 r4 \times 2/3 {e8( b' d}
	\times 2/3 {e d b} \times 2/3 {e, b' d} \times 2/3 {e\> d b} \times 2/3 {e, b' d)\!}
% Bars 316 to 320
	R1_\gp
	r2 \times 2/3 {a,8( e' g!} \times 2/3 {a e' g!)}
	\times 2/3 {a( g e} \times 2/3 {a, e' g} \times 2/3 {a g e} \times 2/3 {a, e' g)}
	\times 2/3 {a( fis! dis} \times 2/3 {a dis eis} \times 2/3 {fis dis a} \times 2/3 {fis a dis)}
	\times 2/3 {e(_\dimmarkup d! b} \times 2/3 {e, fis b} \times 2/3 {e d b} \times 2/3 {gis fis e)}
% Bars 321 to 325
	R1
	r2 r4 cis''_\dolce(
	b8) r cis4( gis8) r a4(\<
	b2\> e,4)\! cis'(
	b8) r cis4( gis8) r a4(\<
% Bars 326 to 330
	a'2\> dis,4)\! e_\espr(
	eis) fis4(~ fis8 e! d! cis)
	e(\< d cis b ais b b' a!)
	eis4 gis4(~ gis8 fis a,!) eis'(
	gis4.\> fis8) \afterGrace a,4( {b16[ a])} gis8( fis)\!
% Bars 331 to 335
	cis'2._\pdolce cis4
	\afterGrace d2.( {e16[ d])} cis8( d)
	e4 r8 e( eis4) r8 eis(
	fis4_\dimmarkup e! d cis
	b) r r cis(
% Bars 336 to 340
	b) r4 \times 2/3 {r8^\legg e,,_\dolce( a } \times 2/3 {e' a cis}
	\times 2/3 {d a f)} \times 2/3 {e( a cis} \times 2/3 {b f d)} \times 2/3 {cis( e a}
	\times 2/3 {fis! dis a)} \times 2/3 {d( f a} \times 2/3 {d, b gis)} \times 2/3 {e'( a cis}
	\times 2/3 {d a f)} \times 2/3 {e( a cis} \times 2/3 {b f d)} \times 2/3 {cis(\< e a)}
	\times 2/3 {fis!\>( dis c\!} \times 2/3 {a c dis} \times 2/3 {fis_\dimmarkup a c} \times 2/3 {dis fis a)}
% Bars 341 to 345
	cis!2.\pp <fis,, fis'>4\f( \mark \default
	<fisis fisis'>-.) <gis gis'>(~ q16 fis' e dis) fis( e dis cis)
	e( cis e, fis) dis( b fis dis b8) r <b' b'>4(
	<bis bis'>)-. <cis cis'>4(~ q16 b' a gis) b( a gis fis)
	a( fis b, a) gis( a e' fis gis8) r gis,,16(-\tweak X-offset #-3.8 \mf a b cis
% Bars 346 to 350
	d cis b ais) b( cis d e fis e d cis) d( fis b cis
	d cis b fis) d( fis b cis d cis b fis) gis( a b cis
	d cis b ais) b( cis d e fis e d cis) d( fis b cis
	d_\dimmarkup cis b fis) d( fis b cis d cis b fis) d( fis b d)
	fis(_\plegg e d b fis e d b fis e d b) r4
% Bars 351 to 355
	r2 fis'16( b cis d fis e d b)
	b'( g fis e b g fis e b' g fis e) r4
	r b16( e fis g b e fis g b g fis e)
	c'(_\piup a fis c a fis c a) r4 a16( c fis a)
	b'( gis! d b gis d b gis) r4 b16( d gis b)
% Bars 356 to 360
	ais'( e cis ais e8) r b''16( fis dis b fis8) r
	gis'16( d! b gis d8) r a''!16( e cis a e8) r
	fis'16(\dimD\> c a c a fis a fis c fis c a c dis fis a
	c8)\! r r4 r <e e'>8-._\fbenmarc <a cis!>-.
	<cis, a'>-. <a' cis>-. <cis, a'>-. <a cis>-. <cis e>-. <a cis>-. <cis, a'>-. <a' cis>-.
% Bars 361 to 365
	<cis, a'>8-. cis-. << % bar 361
		{\voiceOne s16 a'-.[ s16 a-. s16 a-. s16 a-. s16 a-. s16 a-.] }
		\new Voice {\voiceTwo <e' e'>16-.[ s <a cis>-. s <cis, a'>-. s <a' cis>-. s <cis, a'>-. s <a cis>-.] s}
	>> \oneVoice
	<< % bar 362
		{\voiceOne s16 a-.[ s16 a-. s16 a-. s16 a-. s16 a-.] }
		\new Voice {\voiceTwo <cis e>-.[ s <a cis>-. s <cis, a'>-. s <a' cis>-. s <cis, a'>-.] } \stemNeutral
	>> \oneVoice cis8-. r4
	e8_\fmarc-. e4 e e e8(
	<d b'>) q4 q8( <a' fis'!>8-.) q4 q8
	b'1~\startTrillSpan
% Bars 366 to 370
	\afterGrace b2( {ais16[\stopTrillSpan b])} d16( b gis e d b gis e) \mark \default
	R1*21
% Bars 371 to 375
	
% Bars 376 to 380
	
% Bars 381 to 385
	
% Bars 386 to 390
	
	\mark \default \bar "||" \key a \minor
	R1*5
% Bars 391 to 395
	
	
	\cueDuring #"cueVoiceSoloVlnmI" #UP {
		\ni R1
		R
		R \no
	}
% Bars 396 to 400
	a'4.\f g8 e2(~
	e4. c8) e4.( d8)
	c( e d c) e( d b c)
	a(\< a' e c) e(\> d b c)
	a2(~\p\< a8\> c b a)
% Bars 401 to 405
	a2(~\< a8\> c b a)
	a16(\p ees c' ees, bes' ees, a ees) des'2_\crescmarkup
	b!16( f d'! f, c' f, b f) ees'2
	d!16( aes f' aes, ees' aes, d aes) ges'2
	e!16( bes g'! bes, f' bes, e bes) aes'2
% Bars 406 to 410
	f16(_\moltocrescmark aes, aes' aes, g'! aes, f' aes,) fis'( a, a' a, g' a, f' a,)
	<a fis'> q( <a a'>) q( <a g'>) q( <a fis'>) q( <bes g'>) q( <bes bes'>) q( <bes a'>) q( <bes g'>) q(
	<e g>) q e'-. e-. <e, g>-. q-. <<{e e} \\ {e e}>> <f a> q f' f f, f d, d
	<d' a'>8:16 a'': <d,, a'>: <f, d'>: <<{ <d d''>8:16 d''': <d,, d'>: d,16 d} \\ {s4. d16 d}>>
	<c a' e' e'>8\f\noBeam <e' e'>4 q8( <d d'>) q4 q8(
% Bars 411 to 415
	<c c'>) q4 q8( <bes bes'>) q4 q8(
	<a a'>4.) bes'8( a g f g)
	<a, a'>4. bes8( a g f g)
	a4^\pocorit r r2
	r2 r4 a,\f(^\intempo
% Bars 416 to 420
	a'8) a4 a8( g) g4 g8(
	f4)~ \times 2/3 {f8 e b'!} \times 2/3 {a d c} \times 2/3 {f e a}
	g,4~ \times 2/3 {g8\< f c'} \times 2/3 {b e d} \times 2/3 {g f b\!}
	\times 2/3 {f' e d} \times 2/3 {c b a} \times 2/3 {f e d} \times 2/3 {c b a}
	c,16( e a c) e,( a c e) a,( c e a) \times 2/3 {e,8-.\f dis-. e-.}
% Bars 421 to 425
	\times 2/3 {f8-. e-. f-.} \times 2/3 {e-. dis-. e-.} \times 2/3 {f8-. e-. f-.} \times 2/3 {e-. dis-. e-.} 
	d!16( f a d) dis( fis a dis) e8-. r \times 2/3 {e,,8-. dis-. e-.}
	\times 2/3 {f8-. e-. f-.} \times 2/3 {e-. dis-. e-.} \times 2/3 {f8-. e-. f-.} \times 2/3 {e-. dis-. e-.} 
	d!16( f a d) dis( fis a dis) e8-. r r4
	f,,!16( a d f) fis( a dis fis) e8-. r r4
% Bars 426 to 430
	r16 a, d f a4 r16 a, dis fis a4
	r16 e, a c e4 r16 e, gis b e4
	\times 2/3 {a,,8 c f} \times 2/3 {e c gis} \times 2/3 {a c f} \times 2/3 {e c gis}
	\times 2/3 {a c f} \times 2/3 {e c b'} \times 2/3 {a f e'} \times 2/3 {d a f'}
	a4-. r <e,, c' a'>-! r
% Bar 431
	a,1\fermata \bar "|."
}
