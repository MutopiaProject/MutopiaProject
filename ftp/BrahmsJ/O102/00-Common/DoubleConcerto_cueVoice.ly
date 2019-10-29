%
%
% Flote I             | 29   | 95   | 116
% Flote II            | 191  | 269  | 296
% Oboe I              | 374  | 464  | 497
% Oboe II             | 572  | 658  | 693
% Klarinet I          | 781  | 830  | 861
% Klarinet II         | 935  | 998  | 1028
% Fagot I             | 1105 | 1161 | 1180
% Fagot II            | 1254 | 1311 | 1334
% Horn I              | 1416 | 1509 | 1543
% Horn II             | 1638 | 1729 | 1763
% Horn III            | 1874 | 1964 | 1987
% Horn IV             | 2076 | 2166 | 2195
% Trumpet I           | 2289 | 2379 | 2418
% Trumpet II          | 2526 | 2616 | 2655
% Pauken              | 2766 |      | 2858 
% Solo Violin         | 2951 | 3001 | 3017 
% Solo Violoncelle    | 3083 | 3142 | 3165 
% Violin I            | 3219 | 3250 | 3259 
% Violin II           | 3323 | 3357 | 3372 
% Bratsche            | 3445 | 3463 | 3474 
% Violoncelle         | 3532 | 3550 | 3561 
% Contrabass          | 3588 | 3629 | 3640
%
%###############################################################################
%#                                F L O T E N                                  #
%###############################################################################
cueVoiceFloteImI = \relative c, {
	R1*22
	% bar 23
	r4 <e b' d a'>_\pizz^\markup {Solo-Vlc.} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4 cis'''4(^\markup {Klar.}
	b) cis( gis) a(
	b2 e,4) r4
	R1*23
	% bar 52
	r2 e8^(^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,^( b c d e fis gis a) e^( fis gis a b c d
	e) a,^( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>
	<g g'>-. r <gis gis'>-. r
	R1*63
	% bar 120
	fis,2(^\markup {Klar.I} g
	gis a)
	b( c
	cis d)
	R1*37
	% bar 161
	s2 s4 e,(_\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e( 
	d) r r2
	R1*64
	% bar 231
	r2^\markup {Solo-Viol.} r4 \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b c} e,4)
	\tuplet 3/2 4 {d8( cis b e d cis fis e d)} r4
	\tuplet 3/2 4 {b'8( a g cis b ais} d8) r r4
	R1*40
	% bar 276
	s2 ees(~^\markup {Solo-Vlc.}
	ees1~
	ees2 b!
	d!)~ d4. cis8(
	d e f!) r r2
	R1*23
	% bar 303
	s2 s4 a,_(^\markup {Solo-Viol.}
	c,2. b4)
	\tuplet 3/2 4 {a8 c f} r4 r2
	R1*30
	% bar 336
	s2 s4 cis'4^(^\markup {Solo-Vlc.}
	b8) r cis4^( gis8) r a4^(
	b2 e,4) cis'^(
	b8) r cis4^( gis8) r a4^(
	a'1
	e2.) <fis fis'>4^(^\markup {Solo-Viol.}
	<fisis fisis'>) <gis gis'>4^(~ q16 fis' e dis) r4
	R1*57
	% bar 400
	a,2(~^\markup {Solo-Viol.} a8 c b a)
	a2(~ a8 c b a)
	R1*17
	% bar 419
	\tuplet 3/2 4 {f''8^\markup {Solo-Viol.} e d c b a f e d c b a}
	c,16( e a c) e,( a c e) a,(  c e a) r4
}
cueVoiceFloteImII = \relative c' {
	a4(_\markup {Hr.I} d2)\fermata
	R2.*15
	% bar 17
	a'8^(_\markup {Solo-Viol.} fis d a) e'4
	a8^( fis d a) e'4
	d4. r8 r4
	R2.*8
	% bar 28
	a'8_(_\markup {Solo-Viol.} fis d a) e'4
	a8^( fis d a) e'4
	d4. r8 r4
	R2.*75
	% bar 106
	g,4~(-\tweak X-offset #-6 ^\markup {Solo-Vlc.} \tuplet 3/2 4 {g8 fis g~ g fis g}
	\tuplet 3/2 4 {a fis g~} g8) g4 fis8(
	g4)(~ \tuplet 3/2 4 {g8 fis g)} ees' bes
	g ees bes4 g
	a8([ d e! a)] a(^\markup {Solo-Viol.} d
	e[ a)]~ a([ a']) r4
}
cueVoiceFloteImIII = \relative c' {
	a8(^\markup {Solo-Vlc.} e'16) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	R2*22
	% bar 25
	f''8(^\markup {Solo-Viol.} e16 f) e4
	d16( c bes c) a4
	a'8( g16 a) g4
	f16( e d e) c4
	<a c>2~_\markup {Klar.}
	q
	R2*46
	% bar 78
	r4^\markup {Solo-Viol.} g^(
	<c e> <d g>
	<e c'>) <a f'>8-.^( <g e'>-.)
	<f d'>^( a) <dis, b'>-.^( a'-.)
	<e g>4 <a, a'>^(
	q) <a' f'>8-.^( <g e'>-.)
	<f d'>^( a) <a a'>-.^( <g g'>-.)
	<f f'>^( <e e'> <d d'>) a'^( \bar "||"
	\time 3/4 <e c'> <d b'>) <d b'>4.^( <c a'>8)
	<b g'>2 r8 g^( \bar "||"
	\time 4/4 <e c'> <d b'> <e c'> <d b'>) <d b'>4 r4
	R1
	R2*18
	% bar 107
	c'8-> ^\markup {Ob.I} b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis-.
	R2*7
	% bar 116
	a,,4\rest-\tweak X-offset #-5 _\markup {Hr.III} a8-. a\rest
	a4\rest a8-. a\rest
	r4-\tweak X-offset #-1 ^\markup {Solo-Viol.} r8. a''16-. \bar "||" \key d \minor
	a8[-. r16 <f a>-.] q8[-. r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	R2*29
	% bar 166
	s4 s8 a,,(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f d'>8(
	<f c'>) <c f>4 <d bes'>8(
	<d a'>) <cis e>8. <d f>16( <f a> <e g>)
	<d f>8 a'4 gis8(
	a) a8. r16 r8
	R2*19
	% bar 192
	s4 b'(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) r
	R2*37
	% bar 234
	c'8--^\markup {Solo-Viol.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	R2*18
	% bar 254
	\tuplet 3/2 8 {gis,,,16([^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	R2*30
	% bar 285
	s4 <fis, fis'>(^\markup {Solo-Viol.}
	<fis fis'>) <fis' d'>8-.( <e cis'>-.)
	<d b'>( fis) <fis fis'>-.( <e e'>-.)
	<d d'>( <cis cis'> <b b'>) fis'( \bar "||"
	\time 3/4 <cis a'> <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e_( \bar "||"
	\time 4/4 <cis a'>[ <b gis'>]) r4 r2
}
cueVoiceFloteIImI = \relative c, {
	R1*22
	% bar 23
	r4 <e b' d a'>_\pizz^\markup {Solo-Vlc.} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4 cis'''4(^\markup {Klar.}
	b) cis( gis) a(
	b2 e,4) r4
	R1*23
	% bar 52
	r2^\markup {Solo-Viol.} e8^( fis16 gis a b c d
	e) a,^( b c d e fis gis a) e^( fis gis a b c d
	e) a,^( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>
	<g g'>-. g\rest <gis gis'>-. g\rest
	R1*63
	% bar 120
	fis,2(^\markup {Klar.I} g
	gis a)
	b( c
	cis d)
	R1*8
	% bar 132
	r4^\markup {Fl.I} e-. r f-.
	R1*28
	% bar 161
	s2 s4 e,(-\tweak X-offset #-4 _\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e( 
	d) r r2
	R1*64
	% bar 231
	r2^\markup {Solo-Viol.} r4 \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b c} e,4)
	\tuplet 3/2 4 {d8( cis b e d cis fis e d)} r4
	\tuplet 3/2 4 {b'8( a g cis b ais} d8) r r4
	R1*15
	% bar 251
	s2 s4 s8 fis-.^\markup {Ob.I}
	g-.[ a-. bes-.] cis,,-.^\markup {Fag.I} d-.[ e-. fis-.] r
	f!4\trill^\markup {Solo-Viol.}  f'2\trill f,4\trill
	R1*22
	% bar 275
	s2 ees'(~^\markup {Solo-Vlc.}
	ees1~
	ees2 b!
	d!)~ d4. cis8(
	d e f!) r r2
	R1*23
	% bar 303
	r2 r4 a,(^\markup {Solo-Viol.}
	c,2. b4)
	\tuplet 3/2 4 {a8 c f} e'4-.^\markup {Fl.I} r f-.
	\tuplet 3/2 4 {a,,8^\markup {Solo-Viol.} c g'!} r4 r2
	R1*10
	% bar 317
	cis'4.(^\markup {Fl.I} b8 e,2)
	R1*18
	% bar 336
	s2 s4 cis4^(_\markup {Solo-Vlc.}
	b8) r cis4^( gis8) r a4^(
	b2 e,4) cis'^(
	b8) r cis4^( gis8) r a4^(
	a'1
	e2.) <fis fis'>4^(^\markup {Solo-Viol.}
	<fisis fisis'>) <gis gis'>4^(~ q16 fis' e dis) r4
	R1*57
	% bar 400
	a,2(~^\markup {Solo-Viol.} a8 c b a)
	a2(~ a8 c b a)
	R1*17
	% bar 419
	\tuplet 3/2 4 {f''8^\markup {Solo-Viol.} e d c b a f e d c b a}
	c,16( e a c) e,( a c e) a,(  c e a) r4
}
cueVoiceFloteIImII = \relative c' {
	a4(_\markup {Hr.I} d2)_\fermata
	R2.*15
	% bar 17
	a'8^(^\markup {Solo-Viol.} fis d a) e'4
	a8^( fis d a) e'4
	d4. fis'8^([^\markup {Fl.I} a b)]
	c^( a fis dis e g)
	R2.*7
	% bar 28
	a,8^(^\markup {Solo-Viol.} fis d a) e'4
	a8^( fis d a) e'4
	d4. r8 r4
	R2.*32
	% bar 63
	r4 r f(~_\markup {Fag.I}
	f fis gis
	fis eis) r4
	R2.*40
	% bar 106
	g,4~_(^\markup {Solo-Vlc.} \tuplet 3/2 4 {g8 fis g~ g fis g}
	\tuplet 3/2 4 {a fis g~} g8) g4 fis8(
	g4)(~ \tuplet 3/2 4 {g8 fis g)} ees' bes
	g ees bes4 g
	a8([ d e! a)] a(^\markup {Solo-Viol.} d
	e[ a)]~ a([ a']) d4^\markup {Fl.I}
}
cueVoiceFloteIImIII = \relative c' {
	a8(^\markup {Solo-Vlc.} e'16) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	R2*22
	% bar 25
	f''8(^\markup {Solo-Viol.} e16 f) e4
	d16( c bes c) a4
	a'8( g16 a) g4
	f16( e d e) c4
	<a c>2~^\markup {Klar.}
	q
	R2*46
	% bar 77
	r4^\markup {Solo-Viol.} g^(
	<c e> <d g>
	<e c'>) <a f'>8-.^( <g e'>-.)
	<f d'>^( a) <dis, b'>-.^( a'-.)
	<e g>4 <a, a'>^(
	q) <a' f'>8-.^( <g e'>-.)
	<f d'>^( a) <a a'>-.^( <g g'>-.)
	<f f'>^( <e e'> <d d'>) a'^( \bar "||"
	\time 3/4 <e c'> <d b'>) <d b'>4.^( <c a'>8)
	<b g'>2 r8 g^( \bar "||"
	\time 4/4 <e c'> <d b'> <e c'> <d b'>) <d b'>4.( <c a'>8)
	R1
	R2*27
	% bar 116
	e4\rest^\markup {Hr.III} a,8-. e'\rest
	e4\rest a,8-. e'\rest
	r4 r8. a'16-.-\tweak X-offset #-5 ^\markup {Solo-Viol.} \bar "||" \key d \minor
	a8[-. r16 <f a>-.] q8[-. r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	R2*29
	% bar 166
	s4 s8 a,,^(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8^(
	<a a'>) <f' a>4 <f d'>8^(
	<f c'>) <c f>4 <d bes'>8^(
	<d a'>) <cis e>8. <d f>16^( <f a> <e g>)
	<d f>8 a'4 gis8^(
	a) a8. r16 r8
	R2*19
	% bar 192
	s4 b'(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) r
	R2*39
	% bar 236
	e''8->^\markup {Fl.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	e,8(^\markup {Klar.I} d16 e) d4
	f16( e d e) d4^\markup {Ob.I}
	g8( f16 e) g4(
	g8)( a16 bes) a8( g)
	R2*12
	% bar 254
	\tuplet 3/2 8 {gis,,16([^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	R2*30
	% bar 285
	r4 <fis, fis'>(^\markup {Solo-Viol.}
	<fis fis'>) <fis' d'>8-.( <e cis'>-.)
	<d b'>( fis) <fis fis'>-.( <e e'>-.)
	<d d'>( <cis cis'> <b b'>) fis'( \bar "||"
	\time 3/4 <cis a'> <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e_( \bar "||"
	\time 4/4 <cis a'>[ <b gis'>]) cis'4_(^\markup {Fl.I} d dis)
}
%###############################################################################
%#                                 O B O E N                                   #
%###############################################################################
cueVoiceOboeImI = \relative c, {
	R1*22
	% bar 23
	r4 <e b' d a'>_\pizz^\markup {Solo-Vlc} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4^\markup {Klar.I} cis'''4(
	b) cis( gis) a(
	b2 e,4) r 
	R1*23
	% bar 52
	r2 e8(^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b  c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>-.
	<g g'> r <gis gis'> r
	R1*75
	% bar 132
	r4^\markup {Fl.I} e-. r f-.
	r fis-. gis -\tweak X-offset #-1.5 ^\sf-. r
	r e-. r f-.
	r fis-. dis'-.-\tweak X-offset #-1.5 ^\sf r
	r b-. r c-.
	r cis-. g'-.-\tweak X-offset #-1.5 ^\sf r
	R1*28
	% bar 166
	r2 r4 e,(^\markup {Solo-Viol.}
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'1
	g2.) <a, a'>4(
	<ais ais'>) <b b'>4(~ q16 a'! g fis) r4
	R1*20
	% bar 193
	<g,, g'>8^\markup {Solo-Viol.} g'4-> g g-> g8(
	<f d'>-.) q4-> q8( <d c' a'!>)-. <c' a'>4-> <c a'>8-.
	R1*36
	% bar 231
	r2^\markup {Solo-Viol.} r4 \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b cis} e,4)
	\tuplet 3/2 4 {d8( cis b e d cis} fis) r8 r4
	R1*8
	% bar 242
	c'!1(^\markup {Fl.I}
	c4) r8 gis'-. a-.[ b-. c!-.] r
	R1*3
	% bar 247
	r4^\markup {Fl.I} r8 cis!-. d-.[ e-. f-.] r
	R1*4
	% bar 252
	r2 r4 r8 cis!-.-\tweak X-offset #-3 ^\markup {Fl.I}
	d-. r8 r4 r2
	R1*30
	% bar 284
	a,,2.^\markup {Viol.I} d4-.
	e-. r8 d-. e4-. r8 d'-.
	R1*24
	% bar 310
	r2^\markup {Solo-Viol.} \tuplet 3/2 4 {g'!8 -\tweak X-offset #-1.7 ^\f e! bes g e bes}
	a!4 r \tuplet 3/2 4 {a''8-\tweak X-offset #-1.0 ^\f fis dis a fis dis}
	\tuplet 3/2 4 {a' fis dis} a8 r \tuplet 3/2 4 {a fis dis a^\markup {Solo-Vlc} fis dis}
	R1*23
	% bar 336
	r2 r4 cis''(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1
	e2.) <fis fis'>4(^\markup {Solo-Viol.}
	<fisis fisis'>) <gis gis'>4(~ q16 fis' e dis) r4
	R1*20
	% bar 363
	e,,8^\markup {Solo-Viol.} e4 e e e8(
	<d b'>-.) q4 q8( <a' fis'!>) q4 q8
	R1*41
	% bar 406
	r4^\markup {Viol.I} d( dis) dis~
	dis dis( e) e~
	e e( f) a,~
	a d r2
	R1*10
	% bar 420
	r2 r4 c'-.^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. r
}
cueVoiceOboeImII = \relative c' {
	a4(-\tweak X-offset #-3.5 _\markup {Hr.I} d2)_\fermata
	e4( a2)_\fermata
	R2.*27
	% bar 30
	r4 r a'4(~ -\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) d(
	e f g
	f c) r
	R2.*15
	% bar 50
	r4 r a(~
	a bes c
	bes a) r
	r r d(
	e f g 
	f c) r
	R2.*10
	% bar 66
	r4 r a,^\markup {Viol.I}(~
	a b cis
	b a) r
	R2.*42
	% bar 111
	r4 r d'^\markup {Fl.I}(~
	d cis b
	a gis e)
	a,^\markup {Trpt.I}( d2)~
	d2.~
	d~
	d2 r4
}
cueVoiceOboeImIII = \relative c' {
	a8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	R2*32
	% bar 35
	e'8^\markup {Viol.I}^\pizz d f d
	e d f d
	<d a'> <b g'> <d a'> <b g'>
	<a f' d'> r r4
	R2*45
	% bar 84
	r4 r8 a''(^\markup {Solo-Viol.}
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	c b c b) b4 fis'^\markup {Fl.I}(
	g a ais b)
	cis8-. r r4
	R2*3
	% bar 93
	c,8(^\markup {Klar.I} g' fis f
	e d c g)
	c'(^\markup {Fl.} <bes g'> <a fis'> <aes f'>
	<g e'> <f d'>) r4
	R2*21
	% bar 118
	r4 r8 r16 a-.^\markup {Solo-Viol.}
	a8-.[ r16 <f a>-.] q8-.[ r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	R2*12
	%bar 134
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	R2*29
	% bar 166
	r4 r8 a,,(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f d'>8(
	<f c'>) <c f>4 <d bes'>8(
	<d a'>) <cis e>8. <d f>16([ <f a> <e g>)]
	<d f>8 a'4 gis8(
	a) a r4
	R2*19
	% bar 192
	r4 b'!^\markup {Viol.I}(
	a) g( 
	dis) e(
	bes!) a(
	a) r
	R2*35
	% bar 232
	a'8(^\markup {Solo-Viol.} g16-.) g-. c8( g16-.) g-.
	aes8( g16-.) g-. c-. e-. g-. e-.
	c8-- b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	R2*19
	% bar 255
	e2(^\markup {Fl.I}
	f)
	R2*31
	% bar 288
	r4 r8 fis,(^\markup {Solo-Viol.}
	<cis a'>8 <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e(
	a gis) cis4(^\markup {Fl.I} d dis
	e fis fisis gis)
	ais8-. r r4
	R2*3
	% bar 297
	a,8(^\markup {Klar.I} e' dis d
	cis b a) e'(
	fis e a e
	f e4.) 
}
cueVoiceOboeIImI = \relative c, {
	R1*22
	% bar 23
	r4 <e b' d a'>_\pizz^\markup {Solo-Vlc} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4^\markup {Klar.I} cis'''4(
	b) cis( gis) a(
	b2\< e,4\>) a(\!
	dis2 d)
	cis4( a2) r4
	R1*21
	% bar 52
	r2^\markup {Solo-Viol.} e8( fis16 gis a b c d 
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. e-. <f, f'>-. <a fis'>-.
	<g g'>-. r <gis gis'>-. r
	R1*75
	% bar 132
	r4^\markup {Fl.I} e-. r f-.
	r fis-. gis -\tweak X-offset #-1.5 ^\sf-. r
	r e-. r f-.
	r fis-. dis'-.-\tweak X-offset #-1.5 ^\sf r
	r b-. r c-.
	r cis-. g'-.-\tweak X-offset #-1.5 ^\sf r
	R1*28
	% bar 166
	r2 r4 e,(^\markup {Solo-Viol.}
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'1
	g2.) <a, a'>4(
	<ais ais'>) <b b'>4(~ q16 a'! g fis) r4
	R1*20
	% bar 193
	<g,, g'>8 -\tweak X-offset #1 ^\markup {Solo-Viol.} g'4-> g g-> g8(
	<f d'>-.) q4-> q8( <d c' a'!>)-. <c' a'>4-> <c a'>8-.
	R1*36
	% bar 231
	r2^\markup {Solo-Viol.} r4 \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b cis} e,4)
	\tuplet 3/2 4 {d8( cis b e d cis} fis) r8 r4
	R1*16
	% bar 250
	bes,4\trill-\tweak Y-offset #4.5 ^\markup {Solo-Viol.} bes'2\trill bes,4\trill
	bes'\trill \afterGrace bes'2(\trill {a16[ bes]} a8) r
	f,4\trill f'2\trill f,4\trill
	R1*31
	% bar 284
	a,2.^\markup {Viol.I} d4-.
	e-. r8 d-. e4-. r8 d'-.
	R1*27
	% bar 313
	e4.(^\markup {Ob.I} d8 b2)
	r4 r8 e( d4. b8
	e4. d8 b2)
	R1*20
	% bar 336
	r2 r4 cis(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1
	e2.) <fis fis'>4(^\markup {Solo-Viol.}
	<fisis fisis'>) <gis gis'>4(~ q16 fis' e dis) r4
	R1*20
	% bar 363
	e,,8^\markup {Solo-Viol.} e4 e e e8(
	<d b'>-.) q4 q8( <a' fis'!>) q4 q8
	R1*41
	% bar 406
	r4^\markup {Viol.I} d( dis) dis~
	dis dis( e) e~
	e e( f) a,~
	a d r2
	R1*10
	% bar 420
	r2 r4 c'-.^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. r
}
cueVoiceOboeIImII = \relative c' {
	a4(-\tweak X-offset #-3.5 _\markup {Hr.I} d2)_\fermata
	e4( a2)_\fermata
	R2.*27
	% bar 30
	r4 r a'4(~ -\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) d(
	e f g
	f c) a4(~^\markup {Ob.I}
	a g fis
	e d) r
	R2.*13
	% bar 50
	r4 r a'(~-\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) r
	r r d(
	e f g 
	f c) r
	R2.*10
	% bar 66
	r4 r a,^\markup {Viol.I}(~
	a b cis
	b a) r
	R2.*42
	% bar 111
	r4 r d'^\markup {Fl.I}(~
	d cis b
	a gis e)
	a,^\markup {Trpt.I}( d2)~
	d2.~
	d~
	d2 r4
}
cueVoiceOboeIImIII = \relative c' {
	a8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	R2*32
	% bar 35
	e'8^\markup {Viol.I}^\pizz d f d
	e d f d
	<d a'> <b g'> <d a'> <b g'>
	<a f' d'> r r4
	R2*45
	% bar 84
	r4 r8 a''(^\markup {Solo-Viol.}
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	c b c b) b4 fis'^\markup {Fl.I}(
	g a ais b)
	cis8-. r r4
	R2*3
	% bar 93
	c,8(^\markup {Klar.I} g' fis f
	e d c g)
	c'(-\tweak X-offset #-2 ^\markup {Fl.} <bes g'> <a fis'> <aes f'>
	<g e'> <f d'>) r4
	R2*21
	% bar 118
	a4\rest a8\rest a16\rest a-.^\markup {Solo-Viol.}
	a8-.[ a16\rest <f a>-.] q8-.[ a16\rest q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	R2*12
	%bar 134
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	R2*29
	% bar 166
	r4 r8 a,,(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f d'>8(
	<f c'>) <c f>4 <d bes'>8(
	<d a'>) <cis e>8. <d f>16([ <f a> <e g>)]
	<d f>8 a'4 gis8(
	a) a r4
	R2*19
	% bar 192
	r4 b'!^\markup {Viol.I}(
	a) g( 
	dis) e(
	bes!) a(
	a) r
	R2*39
	% bar 236
	e'8->^\markup {Ob.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	e8(^\markup {Klar.I} d16 e) d4
	f16( e d e) d4~
	d8 r r4
	R2*14
	% bar 255
	e'2(-\tweak X-offset #-3 ^\markup {Fl.I}
	f)
	R2*31
	% bar 288
	r4 r8 fis,(^\markup {Solo-Viol.}
	<cis a'>8 <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e(
	a gis a gis) gis4.( fis8)
	e4 r4 r2
	R2*4
	% bar 297
	a8(^\markup {Klar.I} e' dis d
	cis b a) e'(
	fis e a e
	f e4.)~
	e r8
	R2*11
	% bar 313
	e8(^\markup {Ob.I} eis) fis4(~
	fis8 fisis) gis4~
	gis8 cis( b a)
	gis(^\markup {Klar.I} fis d e)
	e( eis) fis4(~
	fis8 fisis) gis4~
	gis8 r
}
%###############################################################################
%#                          K L A R I N E T T E N                              #
%###############################################################################
cueVoiceKlarImI = \relative c {
	\transposition a
	R1*22
	% bar 23
	r4 <g d' f c'>^\pizz b' aes
	f d b f_(^\arco
	aes1_\espressivo
	g2) r
	R1*25
	% bar 52
	r2^\markup {Solo-Viol.} g''8( a16 b c d ees f
	g) c,( d ees f g a b c) g( a b c d ees f
	g) c,( d ees f g a b c) g a b c g aes bes
	c4-. <ees,, g'>-. <aes aes'>-. <c a'>-.
	<bes bes'>-. r <b b'> r
	R1*61
	% bar 118
	aes8(^\markup {Solo-Viol.} c bes aes) c( bes g aes)
	f( f' c aes) c( bes g aes)
	R1*41
	% bar 161
	r2 r4 g,(^\markup {Solo-Vlc.}
	\afterGrace aes2.)( {bes16[ aes])}  g8( aes)
	bes4 r8 bes( b4) r8 b(
	c4 bes! aes g
	f) r r g(
	f) r r2
	R1*64
	% bar 231
	r2 r4 \tuplet 3/2 4 {bes'8( -\tweak X-offset #-7 ^\markup {Solo-Viol.} c d}
	\tuplet 3/2 4 {g, a bes e, f g cis, d e} g,4-.)
	\tuplet 3/2 4 {f8( e d g f e a g f)} r4
	\tuplet 3/2 4 {d'8( c bes e d cis f e d)} r4
	\tuplet 3/2 4 {bes'8( a g c bes a} d) r r4
	R1*106
	% bar 342
	r2 r4 c-\tweak X-offset #-4 ^\markup {Ob.I}(
	cis-.) d2( a4)
	r2 r4 f4(
	fis-.) g4(~ g16 f! e d) r4
	R1*74
	% bar 420
	r2 r4 ees'-. -\tweak X-offset #-3 ^\markup {Fl.I}
	d-. ees-. b-. c-.
	d-. d-. g,-. ees'-.
	d-. ees-. b-. c-.
	c-. c-. g'-. c,-.
	c-. c-. g'-. r
}
cueVoiceKlarImII = \relative c' {
	\transposition a
	c4( -\tweak X-offset #-4 _\markup {Hr.II} f2_\fermata)
	R2.*23
	% bar 25
	g8(^\markup {Solo-Viol.} c a f) a( d
	bes g) c( f g8. f16)
	f8( d) d( g,) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	f4. r8 r4
	R2.*35
	% bar 66
	r2 c'4^\markup {Viol.I}(~
	c d e
	d c) r
	R2.*10
	% bar 79
	r2 f8(^\markup {Fl.I} c)
	d( f) f( g) a4
	r r d,8( f)
	a( g) g( f) e4
	c8([ f g]) r r4
	R2.*11
	% bar 95
	bes,8(^\markup {Solo-Viol.} g) c( f g8. f16)
	f8( d) d( g,) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	f4. r8 c''4
}
cueVoiceKlarImIII = \relative c' {
	\transposition a
	c8( -\tweak X-offset #-3.5 ^\markup {\column {\lower #1.5 \line {Solo-} \line {Vlc.}}} g'16-.) g-. fis8( f16-.) f-.
	e8( d16-.) d-. c8( g16-.) g-.
	R2*22
	% bar 25
	aes''8(^\markup {Solo-Viol.} g16 aes) g4
	f16( ees des ees) c4
	c'8( bes16 c) bes4
	aes16( g f g) ees4
	R2*48
	% bar 77
	r4 bes(^\markup {Solo-Viol.}
	g' bes
	ees) aes8(-. g-.)
	f( c) d-.( c)-.
	bes4 c~
	c aes'8-.( g-.)
	f( c) c'-.( bes-.)
	aes( g f) c(
	ees d) d4.( c8)
	bes2 r8 bes,(
	ees d) r4 r2
	R1 
	R2*18
	% bar 107
	ees8->^\markup {Ob.I} d16-. ees-. d8 ees16-. d-.
	ees8-> d16-. ees-. d( c') bes-. a-.
	g8 r^\markup {Solo} r4
	R2*2
	r4^\markup {Ob.I} c,16( g') r8
	R2*5
	% bar 118
	r4 r8 r16 c-.^\markup {Solo-Viol.}
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.]
	\tuplet 3/2 4 {c4( bes8)} \tuplet 3/2 4 {aes( bes c)}
	\tuplet 3/2 4 {c4( bes8) } r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} aes-. f-. d'-.
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	R2*44
	% bar 181
	c,2(^\markup {Trpt.I}
	f4) r
	c2(
	f4) r
	R2*7
	% bar 192
	r4 d'(^\markup {Viol.I}
	c) bes(
	fis) g(
	des!) c~
	c r4
	R2*35
	% bar 232
	c,16-.^\markup {Fag.I} ees-. g-. ees-. bes8-. r
	R2
	ees16-.^\markup {Fag.I} g-. bes-. g-. d8-. r
	R2*46
	% bar 281
	r4 g(^\markup {Solo-Viol.}
	e' g
	c)-. f8-.( e-.)
	d( a) b(-. a-.)
	g4 a~
	a f'8( e)
	d( a) a'-.( g-.)
	f[( e d)] a(
	c b) b4.( a8)
	g4 r r8 g,(
	c[ b)] r4 r2
}
cueVoiceKlarIImI = \relative c {
	\transposition a
	R1*22
	% bar 23
	r4 <g d' f c'>^\pizz b' aes
	f d b f_(^\arco
	aes1_\espressivo
	g2) r4 e'''^(^\markup {Klar.I}
	d) e^( b) c^(
	d2 g,4) c^(
	fis2 f)
	e4^( c2) r4 
	R1*21
	% bar 52
	r2^\markup {Solo-Viol.} g8( a16 b c d ees f
	g) c,( d ees f g a b c) g( a b c d ees f
	g) c,( d ees f g a b c) g a b c g aes bes
	c4-. <ees,, g'>-. <aes aes'>-. <c a'>-.
	<bes bes'>-. r <b b'> r
	R1*61
	% bar 118
	aes8(^\markup {Solo-Viol.} c bes aes) c( bes g aes)
	f( f' c aes) c( bes g aes)
	R1*41
	% bar 161
	r2 r4 g,(^\markup {Solo-Vlc.}
	\afterGrace aes2.)( {bes16[ aes])}  g8( aes)
	bes4 r8 bes( b4) r8 b(
	c4 bes! aes g
	f) a\rest a\rest g(
	f) a\rest r2
	R1*64
	% bar 231
	r2 r4 \tuplet 3/2 4 {bes'8( -\tweak X-offset #-6 ^\markup {Solo-Viol.} c d}
	\tuplet 3/2 4 {g, a bes e, f g cis, d e} g,4-.)
	\tuplet 3/2 4 {f8( e d g f e a g f)} r4
	\tuplet 3/2 4 {d'8( c bes e d cis f e d)} r4
	\tuplet 3/2 4 {bes'8( a g c bes a} d) r r4
	\tuplet 3/2 4 {b8( a gis cis b a} d) r r4
	R1*5
	% bar 242
	a2(^\markup {Klar.I} g
	ges f4) r
	R1*35
	% bar 279
	r4^\markup {Klar.I} r8 cis8( d e f) cis(
	e) r r b( d) r r a(
	c4 a fis) r
	R1*60
	% bar 342
	r2 r4 c'' -\tweak X-offset #-4 ^\markup {Ob.I}(
	cis-.) d2( a4)
	r2 r4 f4(
	fis-.) g4(~ g16 f! e d) r4
	R1*74
	% bar 420
	r2 r4 ees'-. -\tweak X-offset #-3 ^\markup {Fl.I}
	d-. ees-. b-. c-.
	d-. d-. g,-. ees'-.
	d-. ees-. b-. c-.
	c-. c-. g'-. c,-.
	c-. c-. g'-. r
}
cueVoiceKlarIImII = \relative c' {
	\transposition a
	c4( -\tweak X-offset #-4 _\markup {Hr.II} f2_\fermata)
	R2.*23
	% bar 25
	g8(^\markup {Solo-Viol.} c a f) a( d
	bes g) c( f g8. f16)
	f8( d) d( g,) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	f4. r8 r4
	R2.*35
	% bar 66
	r2 c'4^\markup {Viol.I}(~
	c d e
	d c) r
	R2.*26
	% bar 95
	r4^\markup {Solo-Viol.} c8( f g8. f16)
	f8( d) d( g,) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	f4. r8 c''4
	R2.*11
	% bar 111
	r2^\markup {Klar.I} f,4(~
	f e d
	c bes) bes(~
	bes a) c\rest
}
cueVoiceKlarIImIII = \relative c' {
	\transposition a
	c8( -\tweak X-offset #-3.5 ^\markup {\column {\lower #1.5 \line {Solo-} \line {Vlc.}}} g'16-.) g-. fis8( f16-.) f-.
	e8( d16-.) d-. c8( g16-.) g-.
	R2*22
	% bar 25
	aes''8(^\markup {Solo-Viol.} g16 aes) g4
	f16( ees des ees) c4
	c'8( bes16 c) bes4
	aes16( g f g) ees4
	R2*48
	% bar 77
	r4 bes(^\markup {Solo-Viol.}
	g' bes
	ees) aes8(-. g-.)
	f( c) d-.( c)-.
	bes4 c~
	c aes'8-.( g-.)
	f( c) c'-.( bes-.)
	aes( g f) c(
	ees d) d4.( c8)
	bes2 r8 bes,(
	ees d) g,4(^\markup {Klar.I} aes a)
	R1 
	R2*18
	% bar 107
	ees'8->^\markup {Ob.I} d16-. ees-. d8 ees16-. d-.
	ees8-> d16-. ees-. d( c') bes-. a-.
	g8 r r4
	R2*8
	% bar 118
	r4 r8 r16 c-.^\markup {Solo-Viol.}
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.]
	\tuplet 3/2 4 {c4( bes8)} \tuplet 3/2 4 {aes( bes c)}
	\tuplet 3/2 4 {c4( bes8) } r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} aes-. f-. d'-.
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	R2*44
	% bar 181
	c,2(^\markup {Trpt.I}
	f4) r
	c2(
	f4) r
	R2*7
	% bar 192
	r4 d'(^\markup {Viol.I}
	c) bes(
	fis) g(
	des!) c~
	c r4
	R2*39
	% bar 236
	g'8->^\markup {Ob.I} f16-. g-. f8-> g16-. f-.
	g8-> f16-. g-. f( aes) f-. des-.
	R2*16
	% bar 254
	\tuplet 3/2 8 {g,16([^\markup {Viol.Solo} d g] d[ g b]) g[( b d] b[ d g])}
	R2*26
	% bar 281
	r4 g,(^\markup {Solo-Viol.}
	e' g
	c)-. f8-.( e-.)
	d( a) b(-. a-.)
	g4 a~
	a f'8( e)
	d( a) a'-.( g-.)
	f[( e d)] a(
	c b) b4.( a8)
	g4 r r8 g,(
	c[ b)] e,4(^\markup {Klar.I} f fis)
}
%###############################################################################
%#                                 F A G O T T E                               #
%###############################################################################
cueVoiceFagImI = \relative c {
	R1*22
	% bar 23
	r4 <e, b' d a'> -\tweak X-offset #-3 ^\pizz gis' f
	d b gis d^\arco(
	f1_\espressivo
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) r4
	R1*24
	% bar 52
	r2 e,,8(^\markup {Solo-Vlc.} f16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. a,-. <d a'>-. <d, c'> 
	<g, d' b'>-. r <e b' gis' d'>-. r
	R1*61
	% bar 118
	f'''8(^\markup {Solo-Viol.} a g f) a( g e f)
	d( d' a f) a( g e f)
	R1*41
	% bar 161
	r2 r4 e,4(^\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e(
	d) r r2
	R1*75
	% bar 242
	a''1(^\markup {Solo-Viol.}^\startTrillSpan
	\afterGrace a2)( {gis16[\stopTrillSpan a)]} c!4\trill  fis,\trill
	a\trill c,!8\trill r r4 r
	R1*34
	% bar 279
	r4^\markup {Klar.I} r8 ais( b cis d) ais(
	cis) r r gis( b) r r fis(
	a4 fis dis bis')
	cis1
	R1*53
	% bar 337
	r2 r4 cis4(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1)(
	e2.) <fis fis'>4^\markup {Solo-Viol.}(
	<fisis fisis'>) <gis gis'>4(~ <gis gis'>16 fis' e dis) r4
	R1*77
	% bar 420
	f,2\rest f4\rest c'-.-\tweak X-offset #-3 ^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. r
}
cueVoiceFagImII = \relative c {
	a'4(-\tweak X-offset #-3 ^\markup {Hr.I} d2)\fermata
	R2.*15
	% bar 17
	a8(^\markup {Solo-Vlc.} fis d a) e'4
	a8( fis d a) e'4
	d4. r8 r4
	R2.*27
	% bar 47
	r2 g8(^\markup {Solo-Viol.} des'
	\tuplet 3/2 4 {f8 ees d! ees) c4( des8) bes4(}
	\tuplet 3/2 4 {c8) aes4( bes8) g4( aes8) aes( d}
	\tuplet 3/2 4 {f) aes,( c f) a,( c)} r4
	R2.*46
	% bar 97
	a8(^\markup {Solo-Vlc.} fis d a) e'4
	a8( fis d a) e'4
	d4. r8 r4
}
cueVoiceFagImIII = \relative c {
	a'8(-\tweak X-offset #-6 ^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8 r
	R2*14
	% bar 17
	c''8--^\markup {Solo-Viol.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	e8-- d16-. e-. d8-- e16-. d-.
	e8-- d16-. e-. d( f) d-. b-.
	R2*8
	% bar 29
	a8(-\tweak X-offset #-7 ^\markup {Solo-Viol.} gis16 a) a,4
	c8( b16 c) c'4
	R2*31
	% bar 62
	<f,,, des'>4.^>^\markup {Solo-Vlc.} <c e>16-. c,-.
	<e' c'>4.^> <ees c'>16-. c,-.
	<ees' c'>-. c,^([ <c' a'>) c,^(] <a' fis'>) c,^( <fis ees'>8-.)
	R2*9
	% bar 74
	r4 <a' f'>8-.(^\markup {Solo-Vlc.} <g e'>-.)
	<f d'>( a) <f' a>8(-. <e g>-.)
	<a, f'>( <g e'> <f d'>) <d a'>(
	<e c'> <d b'>) <d b'>( <c a'>)
	<c a'>4 r
	R2*6
	R2.*2
	R1*2
	R2*13
	% bar 102
	r4 r8 \tuplet 3/2 8 {e'16-.^\markup {Solo-Viol.} c'-. a-.}
	\tuplet 3/2 8 {dis,[ c' a] e[ c' a] f[ c' a] e[ e' c]}
	\tuplet 3/2 8 {dis,[ dis' c] e,[ e' c] f[ a e] c[ e e,]}
	R2*13
	% bar 118
	s4 s8 s16 a'-.^\markup {Solo-Viol.}
	a8-.[ a16\rest <f a>-.] <f a>8-.[ a16\rest q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	R2*35
	% bar 172
	r4 r16 a,,^(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d a) <c! a'>8^(
	<c' a'>) q4 <b gis'>8^(
	<c a'>) q4 r8
	R2*12
	% bar 189
	a2(^\markup {Trpt.I}
	fis'4) r
	fis,2(
	fis'4) b(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) r
	R2*26
	% bar 223
	r4 c,16-.^\markup {Solo-Vlc.} e-. g-. e-.
	c8-- b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	R2*52
	% bar 278
	r4 d'8(-.^\markup {Solo-Vlc.} cis-.)
	b( gis) fis'(-. e-.)
	d( cis) b fis(
	<cis a'> <b gis'>) q( <a fis'>)
	q4 r
}
cueVoiceFagIImI = \relative c {
	R1*22
	% bar 23
	r4 <e, b' d a'> -\tweak X-offset #-3 ^\pizz gis' f
	d b gis d^\arco(
	f1_\espressivo
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) fis,(^\markup {Fag.I}
	a2) r
	R1*23
	% bar 52
	r2 e,8(^\markup {Solo-Vlc.} f16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. a,-. <d a'>-. <d, c'> 
	<g, d' b'>-. r <e b' gis' d'>-. r
	R1*61
	% bar 118
	f'''8(^\markup {Solo-Viol.} a g f) a( g e f)
	d( d' a f) a( g e f)
	R1*41
	% bar 161
	r2 r4 e,4(^\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e(
	d) r r2
	R1*75
	% bar 242
	a''1(^\markup {Solo-Viol.}^\startTrillSpan
	\afterGrace a2)( {gis16[\stopTrillSpan a)]} c!4\trill  fis,\trill
	a\trill c,!8\trill r r4 r
	R1*34
	% bar 279
	r4^\markup {Klar.I} r8 ais( b cis d) ais(
	cis) r r gis( b) r r fis(
	a4 fis dis bis')
	cis1
	R1*53
	% bar 336
	r2 r4 cis4(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1)(
	e2.) <fis fis'>4^\markup {Solo-Viol.}(
	<fisis fisis'>) <gis gis'>4(~ <gis gis'>16 fis' e dis) r4
	R1*77
	% bar 420
	r2 r4 c-.-\tweak X-offset #-3 ^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. r
}
cueVoiceFagIImII = \relative c {
	a'4(-\tweak X-offset #-3 ^\markup {Hr.I} d2)\fermata
	R2.*17
	% bar 19
	r4^\markup {Fag.I} r8 fis,( a b)
	c( a fis dis e g)
	R2.*26
	% bar 47
	r2 g8(^\markup {Solo-Viol.} des'
	\tuplet 3/2 4 {f8 ees d! ees) c4( des8) bes4(}
	\tuplet 3/2 4 {c8) aes4( bes8) g4( aes8) aes( d}
	\tuplet 3/2 4 {f) aes,( c f) a,( c)} r4
	R2.*46
	% bar 97
	a8(^\markup {Solo-Vlc.} fis d a) e'4
	a8( fis d a) e'4
	d4. r8 r4
	R2.*10
	% bar 110
	r2 a'8(^\markup {Solo-Viol.} d)(
	e a)~ a([ a')] d,([ d']
	<e, e'>4) r2
}
cueVoiceFagIImIII = \relative c {
	a'8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8 r
	R2*18
	% bar 21
	c4(^\markup {Fag.I} bes
	a b!)
	c( cis
	d f8 e 
	f4) r
	R2*3
	% bar 29
	a'8(_\markup {Solo-Viol.} gis16 a) a,4
	c8( b16 c) c'4
	R2*31
	% bar 62
	<f,,, des'>4.^>^\markup {Solo-Vlc.} <c e>16-. c,-.
	<e' c'>4.^> <ees c'>16-. c,-.
	<ees' c'>-. c,^([ <c' a'>) c,^(] <a' fis'>) c,^( <fis ees'>8-.)
	R2*13
	% bar 78
	r4^\markup {Fag.I} g(
	bes) a(
	d) f
	e8( c) f-.( e-.)
	d( a) a4~(
	a d,)
	R2
	R2.*2
	% bar 87
	r4^\markup {Fag.I} e'( f fis)
	R1
	R2*29
	% bar 118
	s4 s8 s16 a''-.^\markup {Solo-Viol.}
	a8-.[ a16\rest <f a>-.] <f a>8-.[ a16\rest q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	R2*35
	% bar 172
	r4 r16 a,,^(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d a) <c! a'>8^(
	<c' a'>) q4 <b gis'>8^(
	<c a'>) q4 r8
	R2*12
	% bar 189
	a2(^\markup {Trpt.I}
	fis'4) r
	fis,2(
	fis'4) b(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) r
	R2*39
	% bar 236
	e'8->^\markup {Ob.I} d16-. e-. d8-> e16-. d-.
	e8 d16-. e-. d( f) d-. b-.
	R2*16
	% bar 254
	\tuplet 3/2 8 {gis,,16[( b e] b[ e gis]) e[( gis b] gis[ b e])}
	R2*23
	% bar 278
	r4 d'8(-.^\markup {Solo-Vlc.} cis-.)
	b( gis) fis'(-. e-.)
	d( cis) b fis(
	<cis a'> <b gis'>) q( <a fis'>)
	q4 r
	R2*6
	R2.*2
	% bar 291
	r4 cis,(_\markup {Fag.I} d dis)
}
%###############################################################################
%#                              H O R N   I  &  II                             #
%###############################################################################
cueVoiceHrnImI = \relative c {
	\transposition e
	R1*22
	% bar 23
	r4^\pizz <c, g' bes f'>4 e' des
	bes g e bes(^\arco
	des1)
	R1*26
	% bar 52
	r2 c''8(^\markup {Solo-Viol.} d16 e f g aes bes
	c) f,( g aes bes c d e f) c( d e f g aes bes
	c) f,( g  aes bes c d e f) c d e f c des ees
	f4-. <aes,, c'> <des des'> <f d'> 
	<ees ees'> r <e e'> r
	R1*32
	% bar 89
	r2 r4 f(_\markup {Hr.III}
	ees8) r f4( ees8) r des4(
	ees2.) f4(
	ees8) r f4( ees8) r des4(
	ees2 f4) r
	R1*44
	% bar 138
	aes,2(^\markup {Hr.III} ces
	ees d)
	f1~
	f~
	f
	g,4.(_\markup {Fag.I} aes8 bes2)
	R1*33
	% bar 177
	r2 r4 f'(~^\markup {Hr.III}
	f8 c) des4.( a8) bes4~
	bes bes2 bes4~
	bes1~
	bes2( ees)~
	ees1~(
	ees2 aes,)
	R1*4
	% bar 188
	f'16(^\markup {Solo-Viol.} ces aes ces aes f aes f ces f ces aes ces aes f aes)
	f8 r r4 r2
	R1*52
	% bar 242
	f''!1~\startTrillSpan^\markup {Solo-Viol.}
	\afterGrace f2( {e16[\stopTrillSpan f])} aes4\trill d,\trill
	f\trill aes,\trill ces\trill f,\trill
	aes\trill(  ges\trill) \afterGrace f2(\trill {ees16[ f])}
	R1*12
	% bar 258
	des'4.->_\markup {Ob.I} ces8 aes4 r
	beses4. aes8 des,4 r-\tweak X-offset #-2 ^\tutti
	beses''2^(^\markup {Fl.I} ges)
	ges^( eeses)
	R1*16
	% bar 278
	c,,1^\startTrillSpan_\markup {Pk.}
	c
	c
	c
	c4\stopTrillSpan r r2
	R1
	% bar 284
	r2 r4 bes''-.-\tweak X-offset #-1 ^\markup {Hr.III}
	f'-. r8 bes,-. f'4-. r8 bes,-.
	f'4-. r r2
	R1*23
	% bar 310
	r2 \tuplet 3/2 4 {ees'8\rf-\tweak X-offset #-8.5 ^\markup {Solo-Viol.} c ges ees c ges}
	f4 r \tuplet 3/2 4 {f''8\rf d b f d b}
	\tuplet 3/2 4 {f' d b} f f\rest \tuplet 3/2 4 {f d b} f f'\rest
	R1*29
	% bar 342
	r2 r4-\tweak X-offset #-1 ^\markup {Ob.I} f'(
	fis)-. g2( d4)
	r2 r4 bes(
	b!) c4(~ c16 bes a g) d'4(~_\markup {Klar.I} 
	d8 a) b4.( fis8) g4~
	g f!2 r4
	R1*15
	% bar 363
	c8_\markup {Solo-Viol.} c4 c c c8(
	<bes g'>-.) q4 q8( <f' d'>) q4 q8
	R1*55
	% bar 420
	r2 r4 aes'-.-\tweak X-offset #-2 ^\markup {Fl} 
	g-. aes-. e-. f-.
	g-. g-. c,-. aes'-.
	g-. aes-. e-. f-.
	f-. f-. c'-. f,-.
	f-. f-. c'-. f,-.
	f-. r r2
}
cueVoiceHrnImII = \relative c {
	\transposition d
	R2.*29
	% bar 30
	r2 g''4(~_\markup {Fl.Klar.}
	g aes bes
	aes g) c(
	d ees f
	ees bes) bes\((
	ees) d c 
	bes a!\) r
	R2.*26
	% bar 63
	r2 ees'4(~^\markup {Fag.I} 
	ees fes ges
	fes ees) fis,(_\markup {Fl.I}
	a2) g4(~_\markup {Viol.I}
	g a b
	a g) g
	R2.*31
	% bar 100
	e4(_\markup {Klar.I,Fag.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	R2.*4
	% bar 111
	r2 c'4(~_\markup {Fl.I, Klar.}
	c b a
	g f) f
}
cueVoiceHrnImIII = \relative c {
	\transposition e
	f'8(^\markup {Solo-Vlc.} c'16-.) c-. b8( bes16-.) bes-.
	aes8( g16-.) g-. f8( c16-.) c-.
	R2*18
	% bar 21
	aes'4(_\markup {Fag.I} ges
	f g!)
	aes( a
	bes des8 c)
	des2^\markup {Hr.III}^(
	des)^(
	des)^(
	des)
	R2*6
	% bar 35
	c8^\markup {Viol.I}-\tweak X-offset -3 ^\pizz bes des bes
	c bes des bes
	<bes f'> <g ees'> <bes f'> <g ees'>
	<f des' bes'> r r4
	R2*22
	% bar 61
	r4 fes'->~^\markup {Solo-Viol.}
	fes8 ees16-. ees,,-. fes''4->~
	fes8 ees16-. ees,,-. ees''8( d16-.) aes,-.
	d' ces,( ces') aes,( aes')[ f,(] f'8\noBeam)
	R2*15
	% bar 80
	r4 f(^\markup {Hr.III}
	aes8 c) f-.( ees-.)
	des( bes) f-.( a!-.)
	bes( des) f4(~
	f f,)
	bes2 r4
	R2.
	% bar 87
	r4-\tweak X-offset #-1 _\markup {Fag.I} c,( des) r
	R1
	R2*18
	% bar 107
	aes'8->^\markup {Ob.I} g16-. aes-. g8-> aes16-. g-.
	aes8-> g16-. aes-. g( f') ees-. d-.
	c8 r r4
	R2*8
	% bar 118
	r4 r8. f16-.^\markup {Solo-Viol.}
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	\tuplet 3/2 4 {f4( ees8) d( ees f)}
	\tuplet 3/2 4 {f4( ees8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} des-. bes-. g'-.
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	R2*44
	% bar 181
	<bes,, bes'>2(^\markup {Hr.III IV}
	<f f'>4) r
	<bes bes'>2(
	<f f'>4) r
	bes'2(
	ees4) r
	c2(
	<f, f'>4) r
	<bes, bes'>2(
	d4) r
	R2*7
	% bar 198
	r4 r8 r16 f'-\tweak X-offset #-4 ^\markup {Hr.III}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	f4 c
	R2*28
	% bar 230
	r4^\markup {Hr.III} r8 c
	f-. r r4
	f,16^\markup {Fag.I} aes c aes ees8\noBeam ees'-.^\markup {Hr.III}
	aes-. r r4
	R2*20
	% bar 254
	\tuplet 3/2 8 {e,,16[(^\markup {Solo-Viol.} g c] g[ c e]) c[( e g] e[ g c])}
	\tuplet 3/2 8 {e,[( g c] g[ c e] c[ e g] e[ g c])}
	e2\trill
	R2*32
	R2.*2
	R1*2
	R2*8
	% bar 301
	r4 r8 bes,^\markup {Hr.III}~
	bes2~
	bes4 r8. f16(
	bes d f d bes8)\noBeam c,~-\tweak X-offset #-2 _\markup {Hr.II}
	c r r4
	R2
}
cueVoiceHrnIImI = \relative c {
	\transposition e
	R1*22
	% bar 23
	r4^\pizz <c, g' bes f'>4 e' des
	bes g e bes(^\arco
	des1)
	R1*26
	% bar 52
	r2 c''8(^\markup {Solo-Viol.} d16 e f g aes bes
	c) f,( g aes bes c d e f) c( d e f g aes bes
	c) f,( g  aes bes c d e f) c d e f c des ees
	f4-. <aes,, c'> <des des'> <f d'> 
	<ees ees'> r <e e'> r
	R1*32
	% bar 89
	r2 r4 f(_\markup {Hr.III}
	ees8) r f4( ees8) r des4(
	ees2.) f4(
	ees8) r f4( ees8) r des4(
	ees2 f4) r
	R1*44
	% bar 138
	aes,2(^\markup {Hr.III} ces
	ees d)
	f1~
	f~
	f
	ees4.(-\tweak X-offset #1 ^\markup {Ob.I} des8 bes2)
	R1*33
	% bar 177
	r2 r4 f'(~^\markup {Hr.III}
	f8 c) des4.( a8) bes4~
	bes bes2 bes4~
	bes1~
	bes2( ees)~
	ees1~(
	ees2 aes,)
	R1*4
	% bar 188
	f'16(^\markup {Solo-Viol.} ces aes ces aes f aes f ces f ces aes ces aes f aes)
	f8 b\rest b4\rest r2
	R1*56
	% bar 246
	g''2(^\markup {Hr.I} f
	e ees4) r
	R1*10
	% bar 258
	des4.->_\markup {Ob.I} ces8 aes4 r
	beses4. aes8 des,4 r-\tweak X-offset #-2 ^\tutti
	beses''2^(^\markup {Fl.I} ges)
	ges^( eeses)
	R1*16
	% bar 278
	c,,1(\startTrillSpan_\markup {Pk.}
	c)(
	c)(
	c)
	c4\stopTrillSpan d\rest d2\rest
	R1
	% bar 284
	r2 r4 bes''-.-\tweak X-offset #-1 ^\markup {Hr.III}
	f'-. r8 bes,-. f'4-. r8 bes,-.
	f'4-. r r2
	R1*23
	% bar 310
	r2 \tuplet 3/2 4 {ees'8\rf-\tweak X-offset #-8.5 ^\markup {Solo-Viol.} c ges ees c ges}
	f4 r \tuplet 3/2 4 {f''8\rf d b f d b}
	\tuplet 3/2 4 {f' d b} f f\rest \tuplet 3/2 4 {f d b} f f'\rest
	R1*29
	% bar 342
	r2 r4-\tweak X-offset #-1 ^\markup {Ob.I} f'(
	fis)-. g2( d4)
	r2 r4 bes(
	b!) c4(~ c16 bes a g) d'4(~_\markup {Klar.I} 
	d8 a) b4.( fis8) g4~
	g f!2 r4
	R1*15
	% bar 363
	c8_\markup {Solo-Viol.} c4 c c c8(
	<bes g'>-.) q4 q8( <f' d'>) q4 q8
	R1*55
	% bar 420
	r2 r4 aes'-.-\tweak X-offset #-2 ^\markup {Fl} 
	g-. aes-. e-. f-.
	g-. g-. c,-. aes'-.
	g-. aes-. e-. f-.
	f-. f-. c'-. f,-.
	f-. f-. c'-. f,-.
	f-. r r2
}
cueVoiceHrnIImII = \relative c {
	\transposition d
	R2.*29
	% bar 30
	r2 g''4(~_\markup {Fl.Klar.}
	g aes bes
	aes g) c(
	d ees f
	ees bes) bes\((
	ees) d c 
	bes a!\) r
	R2.*26
	% bar 63
	r2 ees'4(~-\tweak X-offset #-1 ^\markup {Fag.I} 
	ees fes ges
	fes ees) fis,(_\markup {Fl.I}
	a2) g4(~_\markup {Viol.I}
	g a b
	a g) g
	R2.*31
	% bar 100
	e4(_\markup {Klar.I,Fag.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	R2.*4
	% bar 111
	r2 c'4(~_\markup {Fl.I, Klar.}
	c b a
	g f) f
}
cueVoiceHrnIImIII = \relative c {
	\transposition e
	f'8(^\markup {Solo-Vlc.} c'16-.) c-. b8( bes16-.) bes-.
	aes8( g16-.) g-. f8( c16-.) c-.
	R2*18
	% bar 21
	aes'4(_\markup {Fag.I} ges
	f g!)
	aes( a
	bes des8 c)
	des2^\markup {Hr.III}^(
	des)^(
	des)^(
	des)
	R2*6
	% bar 35
	c8^\markup {Viol.I}-\tweak X-offset -3 ^\pizz bes des bes
	c bes des bes
	<bes f'> <g ees'> <bes f'> <g ees'>
	<f des' bes'> r r4
	R2*22
	% bar 61
	r4 fes'->~^\markup {Solo-Viol.}
	fes8 ees16-. ees,,-. fes''4->~
	fes8 ees16-. ees,,-. ees''8( d16-.) aes,-.
	d' ces,( ces') aes,( aes')[ f,(] f'8\noBeam)
	R2*15
	% bar 80
	r4 f(^\markup {Hr.III}
	aes8 c) f-.( ees-.)
	des( bes) f-.( a!-.)
	bes( des) f4(~
	f f,)
	bes2 r4
	R2.
	% bar 87
	r4-\tweak X-offset #-1 _\markup {Fag.I} c,( des) r
	R1
	R2*18
	% bar 107
	aes'8->^\markup {Ob.I} g16-. aes-. g8-> aes16-. g-.
	aes8-> g16-. aes-. g( f') ees-. d-.
	c8 r r4
	R2*8
	% bar 118
	r4 r8. f16-.^\markup {Solo-Viol.}
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	\tuplet 3/2 4 {f4( ees8) d( ees f)}
	\tuplet 3/2 4 {f4( ees8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} des-. bes-. g'-.
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	R2*44
	% bar 181
	<bes,, bes'>2(^\markup {Hr.III IV}
	<f f'>4) r
	<bes bes'>2(
	<f f'>4) r
	bes'2(
	ees4) r
	c2(
	<f, f'>4) r
	<bes, bes'>2(
	d4) r
	R2*7
	% bar 198
	r4 r8 r16 f'-\tweak X-offset #-4 ^\markup {Hr.III}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	f4 c
	R2*28
	% bar 230
	r4 ^\markup {Hr.III} r8 c
	f-. r r4
	f,16^\markup {Fag.I} aes c aes ees8\noBeam ees'-.-\tweak X-offset #-1 ^\markup {Hr.III}
	aes-. r r4
	R2*20
	% bar 254
	\tuplet 3/2 8 {e,,16[(^\markup {Solo-Viol.} g c] g[ c e]) c[( e g] e[ g c])}
	\tuplet 3/2 8 {e,[( g c] g[ c e] c[ e g] e[ g c])}
	e2\trill
	R2*24
	% bar 281
	r4 c,(^\markup {Hr.I} 
	b bes
	a) d(~
	d8 bes) d( e)
	f( c) d( c)
	bes( g) d'4(~
	d8 bes) d4(~
	d g,)
	g2 r4
	R2.
	R1*2
	R2*8
	% bar 301
	r4 r8 bes^\markup {Hr.III}~
	bes2~
	bes4 r8. f16(
	bes d f d bes8)\noBeam r8
	R2*25
	% bar 330
	r8^\markup {Hr.I} c4 c8~
	c c4 c8~
	c r8 r4
}
%###############################################################################
%#                             H O R N  III  &  IV                             #
%###############################################################################
cueVoiceHrnIIImI = \relative c {
	\transposition d
	R1*22
	% bar 23
	r4 <d, a' c g'>^\pizz fis' ees
	c a fis c^\arco(
	ees1\espressivo
	d2) r
	R1*25
	% bar 52
	r2 d''8(^\markup {Solo-Viol.} e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. r <fis fis'>-. r
	R1*28
	% bar 85
	r2 r4 r8 aes~_\markup {Viol.I}
	aes4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {aes8 fis-. g-. e-. f-. c-. des-. a!-. bes-.}
	g'4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {g8 e!-. f-. b,!-. c-. g-. aes-. e!-. f-.}
	\tuplet 3/2 4 {d-. ees-. fis-. g-. a!-. bes-. d-. ees-. fis-. g-. a!-. bes-.}
	R1*43
	% bar 132
	r4^\markup {Fag.I} d,-. r ees-.
	r e-. c-.-\tweak X-offset #-1 ^\sf r
	r d-. r ees-.
	r e!-. g,-.-\tweak X-offset #-1 ^\sf r
	r f-. r f-.
	r f-. g-.-\tweak X-offset #-1 ^\sf r
	R1*25
	% bar 163
	r2 r4 r8 fis'(^\markup {Solo-Vlc.}
	g4 f! ees d
	c) r r d(
	c) r r2
	R1*21
	% bar 189
	g'16(^\markup {Solo-Viol.} des bes des bes g bes g des g des bes des bes g bes
	g8) d'\rest d4\rest r2
	R1*47
	% bar 237
	b'2(^\markup {Viol.I} cis~
	cis4 des b cis
	a b! gis a
	fis) r r2
	cis'16_(^\markup {Solo-Vlc} a fis gis a fis dis e fis dis b ais a fis dis bis)
	R1*12
	% bar 254
	r2 r4 r8 g'''-.^\markup {Viol.I}
	aes-. bes-. ces-. bes-. ces-. des-. ees-. ees,-. 
	fes-. ges-. aes-. g!-. aes-. bes-. ces-. ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	R1*20
	% bar 278
	d,,1\startTrillSpan~^\markup {Pk.}
	d~
	d~
	d
	d4\stopTrillSpan r r16 d'(^\markup {Solo-Viol.} e fis g a b c)
	d2 r16 g,( a bes c d e fis)
	g d e fis g a bes c d g, a bes r4
	R1*25
	% bar 310
	r2-\tweak X-offset #-4 ^\markup {Solo-Viol.} \tuplet 3/2 4 {f'8\rf d aes f d aes}
	g!4 r \tuplet 3/2 4 {g''8\rf e cis g e! cis} 
	\tuplet 3/2 4 {g' e cis} g g\rest \tuplet 3/2 4 {g e cis} g g\rest
	R1*20
	% bar 333
	r2 r4 r8 dis'''(-\tweak X-offset #-8 ^\markup {Solo-Viol.}
	e4 d! c b
	a) r r b(
	a) r r2
	R1*10
	% bar 347
	r2 r4 e(~^\markup {Hr.I}
	e8 f) e4.( d8) r4
	R1*14
	% bar 363
	d,8^\markup {Solo-Viol.} d4 d d d8(
	<c a'>) q4 q8( <g' e'>) q4 q8
	R1*55
	% bar 420
	r2 r4 bes'-.^\markup {Fl.}
	a-. bes-. fis-. g-.
	a-. a-. d,-. bes'-.
	a-. bes-. fis-. g-.
	g-. g-. d'-. g,-.
	g-. g-. d'-. g,-.
	g-. r r2
}
cueVoiceHrnIIImII = \relative c {
	\transposition f
	e'4(_\markup {Hr.I} a2)_\fermata
	b4( e2)_\fermata
	R2.*22
	% bar 25
	r2 cis,8(^\markup {Solo-Vlc.} fis
	d b) e( a b a)
	a8.( f16) fis8.( b,16) b8.( e16)
	e8( cis a e) b'4
	e8( cis a e) b'4
	a4. r8 r4
	R2.*75
	% bar 106
	d4(~^\markup {Solo-Vlc.} \tuplet 3/2 4 {d8 cis d~ d cis d}
	\tuplet 3/2 4 {e cis d~} d) d4 cis8(
	d4)(~ \tuplet 3/2 4 {d8 cis d)} bes' f
	d bes f4 d
	e8( a b! e)~ e4~
	e e,8( e') a,( a')
	b4( e2)~
	e2.
}
cueVoiceHrnIIImIII = \relative c {
	\transposition d
	g''8(^\markup {Solo-Vlc.} d'16-.) d-. cis8( c16-.) c-.
	bes8( a16-.) a-. g8( d16-.) d-.
	R2*18
	% bar 21
	bes'4(^\markup {Fag.I} aes
	g a!)
	bes( b
	c ees8 d)
	R2*10
	% bar 35
	d8^\markup {Viol.I pizz.} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> r r4
	R2*22
	% bar 61
	r4 ges'->~^\markup {Solo-Viol.}
	ges8\noBeam f16-. f,,-. ges''4->~
	ges8 f16-. f,,-. f''8( e16-.) bes,-.
	e'-. des,( des') bes,( bes') g,( g'8\noBeam)
	R2*8
	% bar 72
	r4 g~^\markup {Solo-Vlc.}
	g ees'8-.( d-.)
	c( g) g'-.( f-.)
	ees( d c) g(
	bes a) r4
	R2*7
	R2.*2
	R1*2
	R2*16
	% bar 105
	g8->^\markup {Fag.I} f16-. f-. bes8-> f16-. f-.
	ges8-> f16-. f-. bes-. d-. f-. d-.
	bes8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	d'8->-\tweak X-offset #-3.5 ^\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	R2*7
	% bar 118
	r4 r8. g16-.^\markup {Solo-Viol.} 
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest q-.]
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	R2*12
	% bar 134
	r8 ees-.^\markup {Viol.I} c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-. r
	R2*37
	% bar 174
	r4 r8 <bes,, g'>8(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g[ bes]) <c aes'>( ees
	<bes g'> ees bes g) ees([ <ees' g>)] <d bes'>( <c aes'>
	<b! g'>8)\noBeam <b d>8. <aes f'>16( <g ees'> <f d'>)
	<d b'>16( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e'! g e'! g e'!)}
	R2*47
	% bar 228
	g,8(^\markup {Solo-Viol.} d'16-.) d-. cis8-.( c16-.) c-.
	bes8( a16-.) a-. g8( d16-. d-.)
	ees8( d16-.) d-. g8 r
	R2*23
	% bar 254
	\tuplet 3/2 8 {fis,,16([^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])}
	fis2\trill
	d,,,\trill-\tweak X-offset #-3 ^\markup {Pk.}
	R2*23
	% bar 281
	r4 d''(^\markup {Hr.I}
	cis c
	b) e(~
	e8 c) e(-. fis-.)
	g r r4
	R2*3
	R2.*2
	% bar 291
	r4^\markup {Fl.} b,( c cis
	d e eis fis)
	gis8-. r r4
	R2*3
	% bar 297
	g,8(_\markup {Klar.I} d' cis c
	b a g) r
}
cueVoiceHrnIVmI = \relative c {
	\transposition d
	R1*22
	% bar 23
	r4 <d, a' c g'>^\pizz fis' ees
	c a fis c^\arco(
	ees1\espressivo
	d2) r
	R1*25
	% bar 52
	r2 d''8(^\markup {Solo-Viol.} e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. r <fis fis'>-. r
	R1*28
	% bar 85
	r2 r4 r8 aes~_\markup {Viol.I}
	aes4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {aes8 fis-. g-. e-. f-. c-. des-. a!-. bes-.}
	g'4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {g8 e!-. f-. b,!-. c-. g-. aes-. e!-. f-.}
	\tuplet 3/2 4 {d-. ees-. fis-. g-. a!-. bes-. d-. ees-. fis-. g-. a!-. bes-.}
	R1*43
	% bar 132
	r4^\markup {Fag.I} d,-. r ees-.
	r e-. c-.-\tweak X-offset #-1 ^\sf r
	r d-. r ees-.
	r e!-. g,-.-\tweak X-offset #-1 ^\sf r
	r f-. r f-.
	r f-. g-.-\tweak X-offset #-1 ^\sf r
	R1*25
	% bar 163
	r2 r4 r8 fis'(^\markup {Solo-Vlc.}
	g4 f! ees d
	c) r r d(
	c) r r2
	R1*21
	% bar 189!!!
	g'16(^\markup {Solo-Viol.} des bes des bes g bes g des g des bes des bes g bes
	g8) d'\rest d4\rest r2
	R1*47
	% bar 237
	b'2(^\markup {Viol.I} cis~
	cis4 des b cis
	a b! gis a
	fis) r r2
	cis'16_(^\markup {Solo-Vlc} a fis gis a fis dis e fis dis b ais a fis dis bis)
	R1*12
	% bar 254
	r2 r4 r8 g'''-. -\tweak X-offset #-5 ^\markup {Viol.I}
	aes-. bes-. ces-. bes-. ces-. des-. ees-. ees,-. 
	fes-. ges-. aes-. g!-. aes-. bes-. ces-. ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	R1*20
	% bar 278
	d,,1\startTrillSpan~^\markup {Pk.}
	d~
	d~
	d
	d4\stopTrillSpan r r16 d'(^\markup {Solo-Viol.} e fis g a b c)
	d2 r16 g,( a bes c d e fis)
	g d e fis g a bes c d g, a bes r4
	R1*25
	% bar 310
	r2^\markup {Solo-Viol.} \tuplet 3/2 4 {f'8\rf d aes f d aes}
	g!4 r \tuplet 3/2 4 {g''8\rf e cis g e! cis} 
	\tuplet 3/2 4 {g' e cis} g g\rest \tuplet 3/2 4 {g e cis} g g\rest
	R1*20
	% bar 333
	r2 r4 r8 dis'''(-\tweak X-offset #-8 ^\markup {Solo-Viol.}
	e4 d! c b
	a) r r b(
	a) r r2
	R1*10
	% bar 347
	r2 r4 e(~^\markup {Hr.I}
	e8 f) e4.( d8) r4
	R1*14
	% bar 363
	d,8^\markup {Solo-Viol.} d4 d d d8(
	<c a'>) q4 q8( <g' e'>) q4 q8
	R1*55
	% bar 420
	r2 r4 bes'-.^\markup {Fl.}
	a-. bes-. fis-. g-.
	a-. a-. d,-. bes'-.
	a-. bes-. fis-. g-.
	g-. g-. d'-. g,-.
	g-. g-. d'-. g,-.
	g-. r r2
}
cueVoiceHrnIVmII = \relative c {
	\transposition f
	e'4(_\markup {Hr.I} a2)_\fermata
	b4( e2)_\fermata
	R2.*22
	% bar 25
	r2 cis,8(^\markup {Solo-Vlc.} fis
	d b) e( a b a)
	a8.( f16) fis8.( b,16) b8.( e16)
	e8( cis a e) b'4
	e8( cis a e) b'4
	a4. r8 r4
	R2.*16
	% bar 47
	r2 d8(^\markup {Solo-Viol.} aes'
	\tuplet 3/2 4 {c bes a! bes) g4( aes8) f4(}
	\tuplet 3/2 4 {g8) ees4( f8) d4( ees8) ees( a!}
	\tuplet 3/2 4 {c) ees,( g c) ees,( g} c16) e,( g c)
	R2.*55
	% bar 106
	d,4(~^\markup {Solo-Vlc.} \tuplet 3/2 4 {d8 cis d~ d cis d}
	\tuplet 3/2 4 {e cis d~} d) d4 cis8(
	d4)(~ \tuplet 3/2 4 {d8 cis d)} bes' f
	d bes f4 d
	e8( a b! e)~ e4~
	e e,8( e') a,( a')
	b4( e2)~
	e2.~
}
cueVoiceHrnIVmIII = \relative c {
	\transposition d
	g''8(^\markup {Solo-Vlc.} d'16-.) d-. cis8( c16-.) c-.
	bes8( a16-.) a-. g8( d16-.) d-.
	R2*18
	% bar 21
	bes'4(^\markup {Fag.I} aes
	g a!)
	bes( b
	c ees8 d)
	R2*10
	% bar 35
	d8^\markup {Viol.I pizz.} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> r r4
	R2*22
	% bar 61
	r4 ges'->~^\markup {Solo-Viol.}
	ges8\noBeam f16-. f,,-. ges''4->~
	ges8 f16-. f,,-. f''8( e16-.) bes,-.
	e'-. des,( des') bes,( bes') g,( g'8\noBeam)
	R2*12
	% bar 77
	r4 f'(^\markup {Hr.III}
	e ees
	d) r
	R2*5
	R2.*2
	R1*2
	R2*16
	% bar 105
	g,8->^\markup {Fag.I} f16-. f-. bes8-> f16-. f-.
	ges8-> f16-. f-. bes-. d-. f-. d-.
	bes8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	d'8->_\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	R2*7
	% bar 118
	r4 r8. g16-.-\tweak X-offset #-7 ^\markup {Solo-Viol.} 
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest q-.]
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	R2*12
	% bar 134
	r8 ees-.^\markup {Viol.I} c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-. r
	R2*37
	% bar 174
	r4 r8 <bes,, g'>8(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g[ bes]) <c aes'>( ees
	<bes g'> ees bes g) ees([ <ees' g>)] <d bes'>( <c aes'>
	<b! g'>8)\noBeam <b d>8. <aes f'>16( <g ees'> <f d'>)
	<d b'>16( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e'! g e'! g e'!)}
	R2*47
	% bar 228
	g,8(^\markup {Solo-Viol.} d'16-.) d-. cis8-.( c16-.) c-.
	bes8( a16-.) a-. g8( d16-. d-.)
	ees8( d16-.) d-. g8 r
	R2*9
	% bar 240
	f8(^\markup {Hr.III} ees16 d) f4~
	f8( g16 aes) g8( f)
	R2*12
	% bar 254
	\tuplet 3/2 8 {fis,,16([^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])}
	fis2\trill
	d,,,\trill-\tweak X-offset #-3 ^\markup {Pk.}
	R2*23
	% bar 281
	r4 d''(^\markup {Hr.I}
	cis c
	b) e(~
	e8 c) e(-. fis-.)
	g r r4
	R2*3
	R2.*2
	% bar 291
	r4^\markup {Fl.} b,( c cis
	d e eis fis)
	gis8-. r r4
	R2*3
	% bar 297
	g,8(_\markup {Klar.I} d' cis c
	b a g) r
}
%###############################################################################
%#                         T R U M P E T    I  &  II                           #
%###############################################################################
cueVoiceTptImI = \relative c {
	\transposition d
	R1*22
	% bar 23
	r4 <d, a' c g'>_\pizz fis' ees 
	c a fis c(_\arco
	ees1
	d2) r4 b'''(^\markup {Klar.I}
	a) b( fis) g(
	a2 d,4) b'(^\markup {Ob.I}
	a) b( fis) g(
	g'2 d4) d\rest
	R1*21
	% bar 52
	r2^\markup {Solo-Viol.} d,8( e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. r <fis fis'>-. r
	R1*28
	% bar 85
	r2 r4 r8 aes~-\tweak X-offset #-4 ^\markup {Viol.I}
	aes4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {aes8 fis-! g-! e-! f-! c-! des-! a!-! bes-!}
	g'4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {g8 e-! f-! b,-! c-! g-! aes-! e-! f-!}
	\tuplet 3/2 4 {d-! ees-! fis-! g-! a!-! bes-! d-! ees-! fis-! g-! a!-! bes-!}
	R1*54
	% bar 143
	f4.(-\tweak X-offset #1 ^\markup {Ob.I} ees8 c2)
	r4 r8 f( ees4. c8
	f4. ees8 c2)
	R1*31
	% bar 177
	r2 r4^\markup {Ob.I} g'4(~
	g8 d) ees4.( b8) c4~
	c c2 bes4(~
	bes1~
	bes2 a)
	aes1(~
	aes
	g2) r
	R1*11
	% bar 196
	r4^\markup {Viol.I} r8 \ottava #1 b'( c d ees d)
	c8 c4 c c c8~
	c4. a8( bes fis g bes) \ottava #0
	R1*43
	% bar 242
	e,2(^\markup {Klar.I} d
	des c4) r8 dis-.^\markup {Ob.I}
	e-. fis-. g-. fis,^\markup {Klar.I}\noBeam g-. a-. bes-. r
	R1*9
	% bar 254
	r2 r4 r8 g'-!-\tweak X-offset #-4.5 ^\markup {Viol.I}
	aes-! bes-! ces-! bes-! ces-! des-! ees-! ees,-!
	fes-. ges-. aes-. g-. aes-. bes-. ces-. ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	R1*26
	% bar 284
	r2 r4 c,-.^\markup {Hr.III.IV} 
	g'-. r8 c,-. g'4-. r8 c,-.
	R1*31
	% bar 317
	b''4.(^\markup {Fl.I} a8 d,2)
	r4 r8 b'( a4. d,8
	b'4. a8 e4. b'8
	a4. e8 a4. fis8
	d4) r r2
	R1*22
	% bar 344
	r2 r4 c(^\markup {Ob.}
	cis) d4(~ d16 c b a) e'4(~^\fp_\markup {Klar.I}
	e8 b) c4.( gis8) a4~
	a g!2 e'4(~^\markup {Ob.I}
	e8 b) c4.( gis8) a4~
	a-. r r2
	R1*16
	% bar 366
	r4 r8 gis'(^\markup  {Viol.I} a b c b)
	a8 a4 a a a8~
	a4~ \tuplet 3/2 4 {a8 fis-. g-. dis-. e-. b-. g-. b-. e-.}
	R1*51
	% bar 420
	r2 r4 bes'-.^\markup {Fl.}
	a-. bes-. fis-. g-. 
	a-. a-. d,-. bes'-. 
	a-. bes-. fis-. g-. 
	g-. g-. d'-. g,-. 
	g-. g-. d'-. g,-. 
	g-. r4 r2
}
cueVoiceTptImII = \relative c {
	\transposition d
	g'4(-\tweak X-offset #-3.5 _\markup {Hr.I} c2_\fermata)
	d4( g2)_\fermata
	R2.*27
	% bar 30
	r2 g4(~_\markup {Klar.I}
	g aes bes
	aes g) c(
	d ees f
	ees bes) g'(~^\markup {Ob.I}
	g f ees 
	d c) f(
	ees d c
	a bes) r
	R2.*12
	R2.*12
	% bar 63
	r2 ees,4(~-\tweak X-offset #-4.5 _\markup {Fag.I}
	ees fes ges
	fes ees) fis(_\markup {Fl.I}
	a!2) g4(~_\markup {Viol.I}
	g a b 
	a g) g
	R2.*31
	% bar 100
	e4(-\tweak X-offset #-3 _\markup {Klar.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	R2.*4
	% bar 111
	r2 c'4(~^\markup {Klar.I}
	c b a
	g f) f
}
cueVoiceTptImIII = \relative c {
	\transposition d
	g'8_(^\markup {Solo-Vlc.} d'16-.) d-. cis8_( c16-.) c-.
	bes8_( a16-.) a-. g8_( d16-.) d-.
	R2*18
	% bar 21
	bes'4_(_\markup {Fag.I} aes
	g a!)
	bes_( b
	c ees8 d)
	ees2_\markup {Hr.III}_(
	ees)_(
	ees)_(
	ees)
	R2*6
	% bar 35
	d8^\markup {Viol.I pizz} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> e'\rest e4\rest
	R2*38
	% bar 77
	r4 f_(^\markup {Hr.III}
	e ees
	d g
	ees) g,_(
	bes8 d) g_(-. f-.)
	ees_( c) g_(-. b!-.)
	c_( ees) g4_(~
	g g,)
	c2 r4
	R2.
	R1*2
	R2*18
	% bar 107
	bes'8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	d'8->^\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	R2*7
	% bar 118
	r4-\tweak X-offset #-1.5 ^\markup {Solo-Viol.} r8. g16-.
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest <ees g>-.] 
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} ees-. c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	R2*37
	% bar 174
	r4 r8 <bes,, g'>(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g bes) <c aes'>([ ees]
	<bes g'> ees bes g) ees( <ees' g>) <d bes'>([ <c aes'>]
	<b! g'>8)\noBeam <b d>8. <aes f'>16([ <g ees'> <f d'>)]
	<d b'>( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e' g e'! g e'!)}
	R2*57
	% bar 238
	d,8(-\tweak X-offset #1 ^\markup {Klar.I} c16 d) c4
	ees16( d c d) c4
	f,8(^\markup {Hr.III} ees16 d) f4~
	f8( g16 aes) g8( f)
	ees2~
	ees
	R2*10
	% bar 254
	\tuplet 3/2 8 {fis,16[(^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])}
	fis2\trill
	d,,,2\trill^\markup {Pk.}
	R2*23
	% bar 281
	r4 d'-\tweak X-offset #-4 _\markup {Hr.I}(
	cis c
	b) e(~
	e8 c) e-.( fis-.)
	g r r4
	R2*3
	R2.*2
	% bar 291
	r4^\markup {Fl.I} b( c cis
	d e eis fis)
	gis8 r r4
	R2*3
	% bar 297
	g,8(_\markup {Klar.I} d' cis c
	b[ a g]) r
	R2*16
	% bar 315
	r4 r8 g'(^\markup {Klar.I}
	fis e c d)
	d( dis) e4(~
	e8 eis) fis4~
	fis8 r r g,(
	fis'4 e)
	g,4 r8 g(^\markup {Ob.I}
	fis'4 e8) r
	fis4( e8) r
	R2*8
	% bar 332
	r8^\markup {Ob.I} d4 d8~
	d d4 d8~
	d d4 d8~
	d d4 d8
}
cueVoiceTptIImI = \relative c {
	\transposition d
	R1*22
	% bar 23
	r4 <d, a' c g'>_\pizz fis' ees 
	c a fis c(_\arco
	ees1
	d2) r4 b'''(^\markup {Klar.I}
	a) b( fis) g(
	a2 d,4) b'(^\markup {Ob.I}
	a) b( fis) g(
	g'2 d4) d\rest
	R1*21
	% bar 52
	r2^\markup {Solo-Viol.} d,8( e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. r <fis fis'>-. r
	R1*28
	% bar 85
	r2 r4 r8 aes~-\tweak X-offset #-4 ^\markup {Viol.I}
	aes4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {aes8 fis-! g-! e-! f-! c-! des-! a!-! bes-!}
	g'4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {g8 e-! f-! b,-! c-! g-! aes-! e-! f-!}
	\tuplet 3/2 4 {d-! ees-! fis-! g-! a!-! bes-! d-! ees-! fis-! g-! a!-! bes-!}
	R1*54
	% bar 143
	f4.(^\markup {Ob.I} ees8 c2)
	r4 r8 f( ees4. c8
	f4. ees8 c2)
	R1*31
	% bar 177
	r2 r4^\markup {Ob.I} g'4(~
	g8 d) ees4.( b8) c4~
	c c2 bes4(~
	bes1~
	bes2 a)
	aes1(~
	aes
	g2) r
	R1*11
	% bar 196
	r4^\markup {Viol.I} r8 \ottava #1 b'( c d ees d)
	c8 c4 c c c8~
	c4. a8( bes fis g bes) \ottava #0
	R1*43
	% bar 242
	e,2(^\markup {Klar.I} d
	des c4) r8 dis-.^\markup {Ob.I}
	e-. fis-. g-. fis,^\markup {Klar.I}\noBeam g-. a-. bes-. r
	R1*9
	% bar 254
	r2 r4 r8 g'-!-\tweak X-offset #-4.5 ^\markup {Viol.I}
	aes-! bes-! ces-! bes-! ces-! des-! ees-! ees,-!
	fes-. ges-. aes-. g-. aes-. bes-. ces-. ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	R1*26
	% bar 284
	r2 r4 c,-.^\markup {Hr.III.IV} 
	g'-. r8 c,-. g'4-. r8 c,-.
	R1*31
	% bar 317
	b''4.(^\markup {Fl.I} a8 d,2)
	r4 r8 b'( a4. d,8
	b'4. a8 e4. b'8
	a4. e8 a4. fis8
	d4) r r2
	R1*22
	% bar 344
	r2 r4 c(^\markup {Ob.}
	cis) d4(~ d16 c b a) e'4(~^\fp_\markup {Klar.I}
	e8 b) c4.( gis8) a4~
	a g!2 e'4(~^\markup {Ob.I}
	e8 b) c4.( gis8) a4~
	a-. r r2
	R1*16
	% bar 366
	r4 r8 gis'(^\markup  {Viol.I} a b c b)
	a8 a4 a a a8~
	a4~ \tuplet 3/2 4 {a8 fis-. g-. dis-. e-. b-. g-. b-. e-.}
	R1*51
	% bar 420
	r2 r4 bes'-.^\markup {Fl.}
	a-. bes-. fis-. g-. 
	a-. a-. d,-. bes'-. 
	a-. bes-. fis-. g-. 
	g-. g-. d'-. g,-. 
	g-. g-. d'-. g,-. 
	g-. r4 r2
}
cueVoiceTptIImII = \relative c {
	\transposition d
	g'4(-\tweak X-offset #-3.5 _\markup {Hr.I} c2_\fermata)
	d4( g2)_\fermata
	R2.*27
	% bar 30
	r2 g4(~_\markup {Klar.I}
	g aes bes
	aes g) c(
	d ees f
	ees bes) g'(~^\markup {Ob.I}
	g f ees 
	d c) f(
	ees d c
	a bes) r
	R2.*12
	R2.*12
	% bar 63
	r2 ees,4(~-\tweak X-offset #-4.5 _\markup {Fag.I}
	ees fes ges
	fes ees) fis(_\markup {Fl.I}
	a!2) g4(~_\markup {Viol.I}
	g a b 
	a g) g
	R2.*31
	% bar 100
	e4(-\tweak X-offset #-3 _\markup {Klar.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	R2.*4
	% bar 111
	r2 c'4(~^\markup {Klar.I}
	c bes a
	g f) f
}
cueVoiceTptIImIII = \relative c {
	\transposition d
	g'8_(^\markup {Solo-Vlc.} d'16-.) d-. cis8_( c16-.) c-.
	bes8_( a16-.) a-. g8_( d16-.) d-.
	R2*18
	% bar 21
	bes'4_(_\markup {Fag.I} aes
	g a!)
	bes_( b
	c ees8 d)
	ees2^\markup {Hr.III}_(
	ees)_(
	ees)_(
	ees)
	R2*6
	% bar 35
	d8^\markup {Viol.I pizz} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> e'\rest e4\rest
	R2*38
	% bar 77
	r4 f_(^\markup {Hr.III}
	e ees
	d g
	ees) g,_(
	bes8 d) g_(-. f-.)
	ees_( c) g_(-. b!-.)
	c_( ees) g4_(~
	g g,)
	c2 e4\rest
	R2.
	R1*2
	R2*18
	% bar 107
	bes'8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	d'8->^\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	R2*7
	% bar 118
	r4-\tweak X-offset #-1.5 ^\markup {Solo-Viol.} r8. g16-.
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest <ees g>-.] 
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	R2*12
	% bar 134
	r8^\markup {Viol.I} ees-. c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	R2*37
	% bar 174
	r4 r8 <bes,, g'>(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g bes) <c aes'>([ ees]
	<bes g'> ees bes g) ees( <ees' g>) <d bes'>([ <c aes'>]
	<b! g'>8)\noBeam <b d>8. <aes f'>16([ <g ees'> <f d'>)]
	<d b'>( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e' g e'! g e'!)}
	R2*57
	% bar 238
	d,8(-\tweak X-offset #1 ^\markup {Klar.I} c16 d) c4
	ees16( d c d) c4
	f,8(^\markup {Hr.III} ees16 d) f4~
	f8( g16 aes) g8( f)
	ees2~
	ees
	R2*10
	% bar 254
	\tuplet 3/2 8 {fis,16[(^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])}
	fis2\trill
	d,,,2\trill^\markup {Pk.}
	R2*23
	% bar 281
	r4 d'-\tweak X-offset #-4 _\markup {Hr.I}(
	cis c
	b) e(~
	e8 c) e-.( fis-.)
	g r r4
	R2*3
	R2.*2
	% bar 291
	r4^\markup {Fl.I} b( c cis
	d e eis fis)
	gis8 r r4
	R2*3
	% bar 297
	g,8(_\markup {Klar.I} d' cis c
	b[ a g]) r
	R2*16
	% bar 315
	r4 r8 g'(^\markup {Klar.I}
	fis e c d)
	d( dis) e4(~
	e8 eis) fis4~
	fis8 r r g,(
	fis'4 e)
	g,4 r8 g(^\markup {Ob.I}
	fis'4 e8) r
	fis4( e8) r
	R2*8
	% bar 332
	r8^\markup {Ob.I} d4 d8~
	d d4 d8~
	d d4 d8~
	d d4 d8
}
%###############################################################################
%#                                P A U K E N                                  #
%###############################################################################
cueVoicePkmI = \relative {
	R1*22
	% bar 23
	r4 <e, b' d a'>^\pizz gis' f
	d b gis d^\arco(
	f1
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) a(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	R1*21
	% bar 52
	r2 e,8(^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>-.
	<g g'>-. r <gis gis'>-. r
	R1*32
	% bar 89
	r2 r4 a(^\markup {\column \right-align {\lower #1.2 \line {Viol.I} \line {Fl.I}}}
	g8) r a4( e8) r f4(
	g2 c,8) r a'4(
	g8) r a4( e8) r f4(
	f'2 c4) d(
	dis)-. e4(~\sf e16 d c bes) d4(~
	d16 c bes a) bes4(~ bes16 a g fis) g4(~
	g8 fis) g4.(^\markup {Viol.I} bes,8) a16( bes c d
	ees d c b!) c( d ees f g f ees d) r4
	R1*45
	% bar 143
	g4.(^\markup {Ob.I} f8 d2)
	r4 r8 g( f4. d8)
	g4.( f8 d2)
	R1*31
	% bar 177
	r2 r4 a'4(~^\markup {Ob.I}
	a8 e) f4.( cis8) d4~
	d d2 c4(~
	c1~
	c2 b)
	R1*17
	% bar 199
	<d, d'>2^\markup {Trpt.} q
	q4 r r2
	R1*8
	r2 r4 e'(^\markup {Ob.}
	g) f2-> f4~
	f f2 f4(~
	f8 e) f4.( cis'8) d4(~
	d16 c! bes a) bes4(~ bes16 a g fis) r4
	R1*28
	% bar 242
	fis2(^\markup {Klar.I} e
	ees d4) r8 eis-.^\markup {Ob.I}
	fis-.[ gis-. a-.] gis,-.\noBeam^\markup {Klar.I} a-.[ b-. c-.] r
	R1*29
	% bar 274
	e,8\(^\markup {Solo.Viol.} e4 e8( g) g4 g8(
	c) c4 c8( ees) ees4 ees8(
	aes) aes4 aes8( c) c4 c8(
	dis) dis4 dis8( gis) gis4 gis8\)
	R1*35
	% bar 313
	e,4.(-\tweak X-offset #1 ^\markup {Ob.I} d8 b2)
	r4 r8 e( d4. b8
	e4. d8 b2)
	R1*28
	% bar 344
	r2 r4 d(^\markup {Ob.I II}
	dis) e4(~ e16 d! cis b) fis'4(~^\markup {Klar.I} 
	fis8 cis) d4.( ais8) b4~
	b a2( gis4)
	R1*21
	% bar 369
	<d d'>2^\markup {Trpt.} q
	q4-. q-. r2
	q2 q
	<d' e>4-. <a e'>-. r2
	cis'4~\f^\markup {Viol.I} \tuplet 3/2 4 {cis8 ais-! b-! eis,-! fis-! cis-! d-! ais-! b-!}
	\tuplet 3/2 4 {gis-! a!-! bis-! cis-! dis-! e-! gis-! a!-! bis-! cis-! dis-! e-!}
	a16( e cis a) e'( cis a e) a( e cis a) <a, a'>4^\markup {Trpt.}
	R1*44
	% bar 420
	r2 r4 c''-.^\markup {Fl.}
	b-. c-. gis-. a-. 
	b-. b-. e,-. c'-. 
	b-. c-. gis-. a-. 
	<a a'>-. q-. e'-. a,-.
	<a a'>-. q-. e'-. a,-.
	a' r r2
}
cueVoicePkmIII = \relative {
	a8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	R2*18
	% bar 21
	c'4(^\markup {Fag.I} bes
	a b!)
	c( cis
	d f8 e
	f4) r
	R2*9
	% bar 35
	e8^\markup {Viol. pizz} d f d
	e d f d
	<d a'> <b g'> <d a'> <b g'>
	<a f' d'> r r4
	R2*38
	% bar 77
	r4 g'4(^\markup {Hr.III}
	fis f
	e a
	f) a,(
	c8 e) a(-. g-.)
	f( d) a(-. cis-.)
	d( f) a4(~
	a a,)
	d2 r4
	R2.
	R1*2
	R2*18
	% bar 107
	c'8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis
	e'8->^\markup {Fl.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	R2*26
	% bar 137
	\tuplet 3/2 4 {a4^(^\markup {Viol.I} g8) f^( g a)}
	\tuplet 3/2 4 {a4^( g8) f^( g a)}
	a4 e
	R2*41
	% bar 181
	<a,, a'>2(^\markup {Trpt.} 
	<d d'>4) r
	<a a'>2( 
	<d d'>4) r
	R2*17
	% bar 202
	r8.^\markup {Trpt.I} a'16-. a8-.[ a16\rest a-.] 
	f'4 e
	e d 
	a d,
	d'4..\sf d16
	d4..\sf d16
	d4-> d->
	d8-.\noBeam^\markup {Solo-Viol.} \tuplet 3/2 8 {f16([ g f] d[ e d]) b'[( cis b])}
	R2*18
	% bar 228
	a8(^\markup {Solo-Viol.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	f8( e16-.) e-. a8 r
	R2*23
	% bar 254
	\tuplet 3/2 8 {gis,,16([^\markup {Solo-Viol.} b e] b[ e gis]) e[( gis b] gis[ b e])}
	\tuplet 3/2 4 {gis,[( b e] b[ e gis] e[ gis b] gis[ b e])}
	gis2\trill
	R2*32
	R2.*2
	R1*2
	R2*4
	% bar 297
	a,8(^\markup {Fl.I} e' dis d
	cis[ b a]) a,\noBeam^\markup {Trpt.I}~
	a2~
	a~
	a4. d8~
	d2~
	d~
	d4. r8
	R2*23
	% bar 328
	r4 r8 d'-.\sfp^\markup {Viol.I}
	cis-. b-. a-. e-.
	a-. r r d-.\sfp
	cis-. b-. a-. e-.
	a-. a,4 b8~
	b cis4 e8~
	e a4 b8~
	b cis4 e8-.
}
%###############################################################################
%#                           S O L O - V I O L I N                             #
%###############################################################################
cueVoiceSoloVlnmI = \relative c {
	e'''4.^\markup {Viol.I} d8 b4 r
	c4. b8 e,4 r
	\tuplet 3/2 2 {fis-. gis-. a-. gis-. a-. b-.}
	\tuplet 3/2 2 {a-. b-. c-. d-. e-. f-.}
	R1*21
	% bar 26
	r2 r4^\markup {Klar.I} cis,4(_\pdolce
	b) cis( gis) a4(
	b2 e,4) cis''(^\markup {Fl.I}
	b) cis( gis) a(
	a'2 e4) r
	R1*81
	% bar 112
	a,,4.\f-\tweak X-offset #1 ^\markup {Solo-Vlc.} g8 e2~
	e4. c8( e4. d8)
	c( e d c) e( d b c)
	a( a' e c) e( d b c)
	R1*31
	% bar 147
	\tuplet 3/2 4 {c,,8(^\markup {Solo-Vlc.} g' bes c g' bes) c( bes g c, g' bes)}
	R1*13
	% bar 161
	e2.^\markup {Solo-Vlc.} e4(
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e(
	d) r r2
	R1*49
	% bar 216
	r2 r4 g->^\markup {Bass.}
	e-> cis-> ais-> g->
	R1*52
	% bar 270
	c,8\fp\(-\tweak X-offset #1 ^\markup {Solo-Vlc.} c4 c8( ees) ees4 ees8(
	aes) aes4 aes8( b!) b4 b8(
	e!) e4 e8( gis) gis4 gis8(
	b!) b4 b8( e) e4 e8\)
	R1*23
	% bar 297
	\tuplet 3/2 2 {g'2->-\tweak X-offset #-5 ^\markup {Viol.I} f4-. e( d) e-.}
	\tuplet 3/2 2 {c( a) f-. d( b) g-.}
	\tuplet 3/2 2 {f( e) r e( d) r}
	R1*93
	% bar 393
	e8 e''( d b) c( b e,) a(
	g c,) f( e a,) d( c f,)
	b( f) a( e) a( d,) gis( d)
}
cueVoiceSoloVlnmII = \relative c {
	a''4(^\markup {Hr.I} d2)\fermata
	e'4(^\markup {Fl.I} a2)\fermata
	R2.*31
	% bar 34
	r4^\markup {Ob.I} r a,(~
	a g f
	e d) g(
	f e d
	b c) r
	R2.*69
	% bar 108
	g,4_(~-\tweak X-offset #-6 ^\markup {Solo-Vlc.} \tuplet 3/2 4 {g8 fis g)} ees'8 bes
	g ees bes4 g
	a8( d e! a) r4
}
cueVoiceSoloVlnmIII = \relative c {
	R2*6
	% bar 7
	c'8---\tweak X-offset #-7 ^\markup {Solo-Vlc.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	e8-- d16-. e-. d8-- e16-. d-.
	e8-- d16-. e-. d( f) d-. b-.
	R2*35
	% bar 46
	c''16-\tweak X-offset #-4 ^\markup {Viol.I} c e c a a c a
	f f a f d d f d 
	e8-. a-. a-. gis-.
	a-. r r4
	R2*25
	% bar 75
	<f,, d'>8(^\markup {Solo-Vlc.} a) <f' a>-.( <e g>-.)
	<a, f'>( <g e'> <f d'>) <d a'>(
	<e c'> <d b'>) r4
	R2*7
	R2.*2
	R1*2
	R2*18
	% bar 107
	c''8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis-.
	R2*29
	% bar 138
	\tuplet 3/2 4 {a4_(-\tweak X-offset #-4 ^\markup {Viol.I} g8) f_( g a)}
	a4 e
	R2*2
	% bar 142
	r8.-\tweak X-offset #-1 ^\markup {Viol.I} g16-. g8-.[ g16\rest g-.]
	\tuplet 3/2 4 {g4( f8) d( e f)}
	\tuplet 3/2 4 {f4( e8) c( d e)}
	b4 a
	R2*18
	% bar 164
	r4 r8 a,,(-\tweak X-offset #-2 ^\markup {Solo-Vlc.}
	a') a4 gis8(
	a) a4 r8
	R2*39
	% bar 206
	d''8(\sf-\tweak X-offset #-3 ^\markup {Ob.I} c bes a)
	bes( a g f)
	e( f e f)
	R2*15
	% bar 224
	c,8--^\markup {Solo-Vlc.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	e8->^\markup {Fag.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	R2*36
	% bar 264
	c''16^\markup {Viol.I} c e c a! a c a
	f f a f d d f d
	e8-. a-. a-.\sf g-.
	g-.\sf f-. f-.\sf e-.
	R2*3
	% bar 271
	b8(^\markup {Viol.I} gis) gis( e)
	e( d4 b8)
	r4 e,-\tweak X-offset #-2 ^\markup {Solo-Vlc.}
}
%###############################################################################
%#                             S O L O - C E L L O                             #
%###############################################################################
cueVoiceSoloVlcmI = \relative c {
	e'''4.-\tweak X-offset #-4 ^\markup {Viol.I} d8 b4 r
	c4. b8 e,4 r
	\tuplet 3/2 2 {fis4-. gis-. a-. gis-. a-. b-.}
	\tuplet 3/2 2 {a-. b-. c-. d-. e-. f-.}
	R1*29
	% bar 34
	c2(~-\tweak X-offset #-6 ^\markup {Solo-Vln} \tuplet 3/2 2 {c4 a) fis}
	\tuplet 3/2 2 {c( a fis c) b a}
	R1*72
	% bar 108
	fis''8(-\tweak X-offset #-4 ^\markup {Viol.I} g) gis( a) d( f) e-. e,-.
	r4 d'8( f) e-. e,-. r4
	d'8( f) r4 dis8( fis) r4
	e4-. r e,,-. r
	R1*31
	% bar 143
	\tuplet 3/2 4 {g''8(-\tweak X-offset #-6 ^\markup {Solo-Vln.} f d g, f d) g( f d g, f d)}
	R1*7
	% bar 151
	g4.(^\markup {Klar.I} f8 d4. b8
	a2.) r4
	R1*62
	% bar 215
	r4^\markup {Viol.I} bes'16( e g a bes a g e) bes( e g a
	bes8-.) r r4 r g,->-\tweak X-offset #-5 ^\markup {Bass.} 
	e-> cis-> ais-> g->
	R1*41
	% bar 259
	r2 r8 ees'-.-\tweak X-offset #-3 ^\markup {Vlc.} des-. c-.
	bes4 ges2 bes4
	ges ees2 ges4
	bes,4-. r r2
	R1*5
	% bar 268
	\tuplet 3/2 2 {c4-.^\markup {Vlc.} d-. e!-. f-. g-. aes-.}
	\tuplet 3/2 2 {bes-. c-. des-. ees,-. f-. g-.}
	R1*24
	% bar 294
	d'2^\markup {Vlc.} dis
	\tuplet 3/2 2 {e2-> d!4 c( b) a-.}
	d2 dis
	\tuplet 3/2 2 {e2 d!4 c( g) c,-.}
	\tuplet 3/2 2 {f2 d4 g2 e4}
	a2 f,
	R1*31
	% bar 331
	r2 r4-\tweak X-offset #-2 ^\markup {Solo-Vln.} cis''''
	\afterGrace d2.( {e16[ d])} cis8( d)
	e4 r8 e( eis4) r8 eis(
	fis4 e d cis
	b) r r cis(
	b) r r2
	R1*56
	% bar 393
	r8-\tweak X-offset #-2 ^\markup {Viol.I} e( d b) c( b e,) a(
	g c,) f( e a,) d( c f,)
	b( f) a( e) a( d,) gis( d)
}
cueVoiceSoloVlcmII = \relative c {
	a''4_(-\tweak X-offset #-2 ^\markup {Hr.I} d2)\fermata
	e'4_(-\tweak X-offset #-3 ^\markup {Fl.I} a2)\fermata
	R2.*35
	% bar 38
	r4 r4 g,4_(-\tweak X-offset #-6 ^\markup {Solo-Vln.}
	bes4~ \tuplet 3/2 4 {bes8 a bes c a bes~}
	\tuplet 3/2 4 {bes a bes d c bes a g f)}
	R2.*2
	% bar 43
	r4 \tuplet 3/2 4 {bes8_( a bes c a bes~}
	\tuplet 3/2 4 {bes a bes g' f e f c a)}
	R2.*23
	% bar 68
	r4^\markup {Fl.I} r4 fis(~
	fis g! a 
	g fis) b
	R2.*28
	% bar 99
	r2 a4_(-\tweak X-offset #-5 ^\markup {Solo-Vln.}
	c!)_(~ \tuplet 3/2 4 {c8 b c d b c~}
	\tuplet 3/2 4 {c b c d a c b a g)}
}
cueVoiceSoloVlcmIII = \relative c {
	R2*45
	% bar 46
	c'''16-\tweak X-offset #-5 ^\markup {Viol.I} c e c a a c a
	f f a f d d f d
	e8-. a-. a-. gis-.
	a-. r r4
	R2*35
	R2.*2
	R1*2
	R2*16
	% bar 105
	r8 g,,16-.^\markup {Fag.I} g-. c8-> g16-. g-.
	aes8-> g16-. g-. c-. e-. g-. e-.
	c'8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-. 
	c8-> b16-. c-. b( a') g-. fis-.
	R2*97
	% bar 206
	d'8(-\tweak X-offset #-4 ^\markup {Ob.I} c bes a)
	bes( a g f)
	e( f e f)
	e r r4
	% bar 210
	r8 g(-\tweak X-offset #-4 ^\markup {Ob.I} f e)
	f( e d c)
	b( c b c)
	b r r4
	% bar 214
	r8 d'(-\tweak X-offset #-4 ^\markup {Ob.I} c b
	c b a gis
	a g! fis f
	e d c b)
	R2*16
	% bar 234
	c'8^-^\markup {Solo-Vln.} b16^. c^. b8^- c16^. b^.
	c8^- b16^. c^. b^( a') g^. fis^.
	e8^>^\markup {Fl.I} d16^. e^. d8^> e16^. d^.
	e8^> d16^. e^. d( f) d^. b^.
	g8^. g\rest r4
	R2*25
	% bar 264
	c16-\tweak X-offset #-5 ^\markup {Viol.I} c e c a a c a
	f f a f d d f d
	e8-. a-. a-. g-.
	g-. f-. f-. e-.
	R2*2
	% bar 270
	r4 d8(-\tweak X-offset #-4 ^\markup {Viol.I} b)
	b( gis) gis( e)
	e( d4 b8)
}
%###############################################################################
%#                              V I O L I N   I                                #
%###############################################################################
cueVoiceVlnImI = \relative c {
	R1*23
	% bar 24
	r2 r4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 cis'''(_\markup {Klar.I}
	b) cis( gis) a(\<
	b2\> e,4)\! cis''^(^\markup {Fl.I}
	b) cis^( gis) a^(
	a'2 e4) g,\rest
	R1*21
	% bar 52
	r2 e,8^(^\markup {Solo-Viol.} fis16 gis a b c d 
	e) a,^( b c d e fis gis a) e^( fis gis a b c d
	e) a,^( b c d e fis gis a) e fis gis a e f g
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r
	R1*99
	% bar 156
	r2 f4\rest bes,-._(-\tweak X-offset #-3 _\markup {Br.}
	f'\rest a,-. f'\rest cis-.)
	f\rest a,-._( f'\rest a,-.\<
	f'\rest c!-. f\rest a,-.)\!
	f'\rest dis2.\sf\>
	b1_(~-\tweak X-offset #0 \pdimD
	b2 d!)
	e_( c)
	c2.\pp a4\>_(
	c2.) a4_(
	c2)\! e\rest
}
cueVoiceVlnImII = \relative c {
	a'4(-\tweak X-offset #-4 _\markup {Hr.I} d2)_\fermata
	e'4(^\markup {Klar.I} a2)\fermata
	R2.*33
	% bar 36
	r2 g4(-\tweak X-offset #-3.5 ^\markup {Ob.I}
	f e d
	b) r2
}
cueVoiceVlnImIII = \relative c {
	a'8(-\tweak X-offset #-6 ^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16)-. b-. a8( e16-.) e-.
	R2*6
	% bar 9
	b''4(-\tweak X-offset #-3 ^\markup {Klar.I} d
	b d8. f16
	e8) r r4
	R2*49
	% bar 61
	r4 <bes aes'>->~-\tweak X-offset #-8 ^\markup {Solo-Viol.}
	q8 <bes g'>16[-. g,-.] <bes' aes'>4->~
	q8 <bes g'>16 g, <bes' g'>8( <a! fis'>16-.) c,-.
	<a' fis'>-. ees( <fis ees'>) c_( <ees c'>[) a,]( <c a'>8-.)
	R2*19
	% bar 84
	r4 r8 a''(-\tweak X-offset #-7 ^\markup {Solo-Viol.}
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	<e c'> <d b'> <e c'> <d b'>) q4. r8
	R1
	R2*27
	% bar 116
	e4\rest-\tweak X-offset #-2 _\markup {Hr.III} a,8-. e'\rest
	e4\rest a,8-. e'\rest
	R2*54
	% bar 172
	r4 r16 a,(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d a) <c! a'>8(\noBeam
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a c) <d bes'>( f
	<c a'> f c a) f( <f' a>) <e c'>( <d bes'>
	<cis a'>8) <cis e>8. <bes g'>16[( <a f'> <g e'>)]
	<e cis'>( <f d'>) <e gis>( <f a>) r4
	R2*37
	% bar 218
	a,8(-\tweak X-offset #-6 ^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8 r
	R2*34
	% bar 254
	\tuplet 3/2 8 {gis16([^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	\tuplet 3/2 8 {gis,([ b e] b[ e gis] e[ gis b] gis[ b e])}
	gis2^\trill
	R2*31
	% bar 288
	r4 r8 fis,(-\tweak X-offset #-6 ^\markup {Solo-Viol.}
	<cis a'>8 <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e_(
	<cis a'> <b gis'> <cis a'> <b gis'>) q4. r8
	R1
	R2*14
	% bar 307
	r4 r8 b''(^\markup {Ob.I}
	a gis) r e(
	gis fis) r d'(^\markup {Fl.I}
	cis b a gis
	eis fis) r fis'(
	e d cis b)
}
%###############################################################################
%#                            V I O L I N   I I                                #
%###############################################################################
cueVoiceVlnIImI = \relative c {
	R1*23
	% bar 24
	s2^\markup {Solo-Vlc.} s4 d,(
	f1
	e2) r4 cis'''(_\markup {Klar.I}
	b) cis( gis) a(\<
	b2\> e,4\!) cis''(^\markup {Fl.I}
	b) cis( gis) a_(
	a'2 e4) r
	R1*21
	% bar 52
	r2^\markup {Solo-Viol.} e,,8( fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r
	R1*103
	% bar 160
	r4-\tweak X-offset #-1.5 _\markup {Br.} << a,2. {s8-\tweak X-offset -1.5 \f\> s s s s s\p} >>
	gis2(_\dimD g)~
	g( b)
	bes1
	a\pp\>
	a~
	a2\! e'\rest
	R1*56
	% bar 223
	\tuplet 3/2 4 {g4-\tweak X-offset #-3 ^\markup {Solo-Viol.} b d} g8 b d g
	R1*16
	% bar 240
	gis,16(^\markup {Solo-Viol.} eis b cis dis b gis ais b gis eis fis gis eis b cis)
	dis(_\markup {Solo-Vlc.} b gis ais b gis eis fis gis eis cis bis b gis eis cis)
}
cueVoiceVlnIImII = \relative c {
	a'4(-\tweak X-offset #-3 _\markup {Hr.I} d2)_\fermata
	e'4(^\markup {Klar.I} a2)^\fermata
	R2.*33
	% bar 36
	s2 g4(^\markup {Ob.}
	f e d
	b) r2
	R2.*68
	% bar 107
	s2 s8 fis,(^\markup {Solo-Vlc.}
	g4)(~ \tuplet 3/2 4 {g8 fis g)} ees' bes
	g ees bes4 g
	a8( d e! a) r4
}
cueVoiceVlnIImIII = \relative c {
	a'8-\tweak X-offset #-1 ^\p(-\tweak X-offset #-3 ^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	R2*6
	% bar 9
	b''4(^\markup {Klar.I} d
	b d8. f16
	e8) r r4
	R2*17
	% bar 29
	r8 c,-\tweak X-offset #-5 _\markup {Viol.I} a' a,
	r c c' c,
	R2*30
	% bar 61
	r4 <bes' aes'>4->~^\markup {Solo-Viol.}
	q8 <bes g'>16-.[ g,-.] <bes' aes'>4->~
	q8 <bes g'>16-. g,-. <bes' g'>8( <a! fis'>16-.) c,
	<a' fis'>16-. ees( <fis ees'>) c( <ees a>)[ a,]( <c a'>8)\noBeam
	R2*19
	% bar 84
	s4 s8 a''(_\markup {Solo-Viol.} 
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	<e c'> <d b'> <e c'> <d b'>) q4. r8
	R1
	R2*27
	% bar 116
	d4\rest_\markup {Hr.III} a8-. d\rest
	d4\rest a8-. d\rest
	R2*54
	% bar 172
	s4 s16 a(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d[ a]) <c! a'>8(
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f[( <f' a>]) <e c'>([ <d bes'>]
	<cis a'>8)\noBeam <cis e>8. <bes g'>16[( <a f'> <g e'>)]
	<e cis'>( <f d'>) <e gis>( <f a>) r4
	R2*37
	% bar 218
	a,8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8 r
	R2*26
	% bar 246
	aes''8(-\tweak X-offset #-3 ^\markup {Ob.} g16 aes) aes,4
	b!8(^\markup {Klar.} ais16 b) b'4
	R2*6
	% bar 254
	\tuplet 3/2 8 {gis,,16[(^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	\tuplet 3/2 8 {gis,[( b e] b[ e gis] e[ gis b] gis[ b e])}
	R2*32
	% bar 288
	s4 s8 fis,(-\tweak X-offset #-7 ^\markup {Solo-Viol.}
	<cis a'> <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e(
	<cis a'> <b gis'> <cis a'> <b gis'>) q4. r8
	R1
	R2*14
	% bar 307
	s4 s8 b''(-\tweak X-offset #-4 ^\markup {Ob.I}
	a gis) r e( 
	gis fis) r d'(-\tweak X-offset #-3 ^\markup {Fl.I}
	cis b a gis
	eis fis) r fis'(
	e d cis b)
	a,4.(^\markup {Viol.I} ais8)
	b4.( bis8)
}
%###############################################################################
%#                            B R A T S C H E                                  #
%###############################################################################
cueVoiceBrmI = \relative c {
	R1*23
	% bar 24
	s2 s4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) a(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	R1*21
	% bar 52
	r2 e,8(-\tweak X-offset #-3 ^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d 
	e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r
}
cueVoiceBrmII = \relative c {
	a'4(-\tweak X-offset #-1 ^\markup {Hr.I} d2^\fermata)
	e'4(-\tweak X-offset #-2 ^\markup {Klar.I} a2)^\fermata
	a,,8(^\markup {Solo-Viol.} d e a fis d)
	R2.*37
	% bar 41
	f'4.^\markup {Fl.I} f4 f8~
	f f4 f8( g) g~
	g4. bes,8(^\markup {Klar.I} c) bes~
	bes  bes( g') e( f) c
}
cueVoiceBrmIII = \relative c {
	R2*60
	% bar 61
	s4 <bes'' aes'>4->~^\markup  {Solo-Viol.}
	q8 <bes g'>16-.[ g,-.] <bes' aes'>4->~
	q8 <bes g'>16-. g,-. <bes' g'>8( <a! fis'>16-.) c,-.
	<a' fis'>-. ees( <fis ees'>) c( <ees c'>) a,( <c a'>8-.)\noBeam
	R2*12
	% bar 77
	r4^\markup {Solo-Viol.} g'(
	<c e> <d g>
	<e c'>) <a f'>8-.( <g e'>-.)
	<f d'>( a) <dis, b'>-.( a'-.)
	<e g>4 <a, a'>~
	q <a' f'>8-.( <g e'>-.)
	<f d'>( a) r4
	R2
	R2.*2
	R1*2
	R2*27
	% bar 116
	r4_\markup {Hr.III} a,,8-. r
	r4 a8-. r
	R2*54
	% bar 172
	s4 s16 a16(-\tweak X-offset #-5 ^\markup {Solo-Viol} a' f
	e d cis d f a d b
	d a f e d[ a]) <c! a'>8(
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>([ f]
	<c a'> f c a) f([ <f' a>]) <e c'>[( <d bes'>]
	<cis a'>8)\noBeam <cis e>8. <bes g'>16([ <a f'> <g e'>)]
	<e cis'>( <f d'>) <e gis>( <f a>) r4
	R2*100
	% bar 281
	s4 e(^\markup {Solo-Viol.}
	<a cis> <b e>
	<cis a'>) <fis d'>8-.( <e cis'>-.)
	<d b'>( fis) <bis, gis'>-.( fis'-.)
	<cis e>4 <fis, fis'>~
	q <fis' d'>8-.( <e cis'>)-.
	<d b'>( fis) r4
	R2
	R2.*2
	R1*2
	R2*14
	% bar 307
	s4 s8 b(^\markup {Ob.I}
	a gis) r e(
	gis fis) r d'(-\tweak X-offset #-3 ^\markup {Fl.I}
	cis b a gis
	eis fis) r fis'(
	e d cis b)
}
%###############################################################################
%#                        V I O L O N C E L L                                  #
%###############################################################################
cueVoiceVlcmI = \relative c {
	R1*23
	% bar 24
	s2 s4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) a(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	R1*21
	% bar 52
	r2 e,,,8(-\tweak X-offset #-3 ^\markup {Solo-Vlc.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d 
	e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. a,-. <d a'>-. <d, c'>-.
	<g, d' b'>-. r <e b' gis' d'>-. r
}
cueVoiceVlcmII = \relative c {
	a'4^(-\tweak X-offset #-3 ^\markup {Hr.I} d2^\fermata)
	e4^( a2)^\fermata
	R2.*42
	% bar 45
	f4(~^\markup {Solo-Vlc.} \tuplet 3/2 4 {f8 e f g e f~}
	\tuplet 3/2 4 {f e f d' c b c) e,( g}
	\tuplet 3/2 4 {des' c b c) e,( g des' c b)}
	r8^\markup {Br.} ees,,-.( r ees-.) r e
	r f r2
}
cueVoiceVlcmIII = \relative c {
	R2*60
	% bar 61
	s4 s8 <g f'>16-.-\tweak X-offset #-3 ^\markup {Solo-Vlc.} c,-.
	<f' des'>4.-> <c e>16-. c,-.
	<e' c'>4.-> <ees c'>16-. c,-.
	<ees' c'>-.\noBeam c,( <c' a'>) c,( <a' fis'>)[ c,(] <fis ees'!>8-.)
	R2*20
	R2.*2
	R1*2
	R2*27
	% bar 116
	a8.\rest^\markup {Pk.} a16-. a8-. a\rest
	a8.\rest a16-. a8-. a\rest
	R2*56
	% bar 174
	s4 s8 <c'! a'>8(-\tweak X-offset #-6 ^\markup {Solo-Viol.}
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f[( <f' a>)] <e c'>( <d bes'>
	<cis a'>8)\noBeam <cis e>8. <bes g'>16( <a f'> <g e'>)
	<e cis'>( <f d'> <e gis> <f a>) r4
}
%###############################################################################
%#                        K O N T R A B A S S                                  #
%###############################################################################
cueVoiceKtbmI = \relative c {
	R1*23
	% bar 24
	s2 s4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 cis'''_(^\markup {Klar.I}
	b) cis_( gis) a_(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	R1*21
	% bar 52
	r2 e,,,8(-\tweak X-offset #-3 ^\markup {Solo-Vlc.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d 
	e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. a,-. <d a'>-. <d, c'>-.
	<g, d' b'>-. r <e b' gis' d'>-. r
	R1*95
	%bar 152
	s2 s4 e''(-\tweak X-offset #-6 ^\markup {Solo-Vlc.}
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'2 gis4) r
	R1*83
	% bar 240
	gis'16(^\markup {Solo-Viol.} eis b cis dis b gis ais b gis eis fis gis eis b cis)
	dis(^\markup {Solo-Vlc.} b gis ais b gis eis fis gis eis cis bis b gis eis cis)
	a''''1^\p~\startTrillSpan^\markup {Solo-Viol.}
	\afterGrace a2( {gis16[\stopTrillSpan a])} c!4\trill fis,\trill
	a\trill c,!\trill ees\trill r
	R1*91
	% bar 336
	s2 s4 cis4(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'4(
	b8) r cis4( gis8) r a4(
	a'1
	e2.) <fis fis'>4(_\markup {Solo-Viol.}
	<fisis fisis'>-.) r4 r2
}
cueVoiceKtbmII = \relative c {
	a'4^(-\tweak X-offset #-3 ^\markup {Hr.I} d2^\fermata)
	e4^( a2)^\fermata
	a,,8(^\markup {Solo-Vlc.} d e a fis d)
	R2.*45
	% bar 49
	d4\rest_\markup {Vlc.} d8\rest bes d\rest b
	d\rest c d4\rest c_\pizz
	f, <g''' bes>(-\tweak X-offset #-2 ^\markup {Fl.} <a c>
	<g bes> <f a>) r
}
cueVoiceKtbmIII = \relative c {
	R2*32
	% bar 33
	c'''8(^\markup {Solo-Vlc.} a4 f8)
	d( b f d)
	e8-.\noBeam \tuplet 3/2 8 {d16( e d} f8-.) \tuplet 3/2 8 {d16( e d}
	e8-.) \tuplet 3/2 8 {d16( e d} a'8)-. \tuplet 3/2 8 {d,16( e d}
	d,8-.) \tuplet 3/2 8 {g,16( g' g,} d'8-.) \tuplet 3/2 8 {g,16( g' g,)}
	\tuplet 6/4 4 {d'16 f' d, f' d, f' d, f' d, f' d, f'}
	R2*22
	% bar 61
	<g, f'>4.->^\markup {Solo-Vlc.} <g, f'>16-. c,-.
	<f' des'>4.-> <c e>16-. c,-.
	<e' c'>4.-> <ees c'>16-. c,-.
	<ees' c'>-.\noBeam c,( <c' a'>) c,( <a' fis'>) c,( <fis ees'>8-.)
	R2*20
	R2.*2
	R1*2
	R2*24
	% bar 113
	a'16-.^\markup {Solo-Vlc.} e-. dis-. d-. cis-. c-. b-. bes-. 
	a8-. e-. dis-. d-.
	cis-. f\rest f8.\rest d16-.
	cis8-. f\rest f4\rest
	a8.\rest a16-._\markup {Pk.} a8-. a\rest
	a4\rest a8.\rest a'16-.-\tweak X-offset #-3 ^\markup {Vlc.}
	a8-.[ a16\rest f-.] d8-.[ d16\rest bes-.]
	R2*54
	% bar 174
	s4 s8 <c'! a'>8(^\markup {Solo-Viol.}
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f[( <f' a>]) <e c'>( <d bes'>
	<cis a'>8)\noBeam <cis e>8. <bes g'>16( <a f'> <g e'>)
	<e cis'>( <f d'>) <e gis>( <f a>) r4
	R2*63
	% bar 244
	f'8(^\markup {Klar.I} ees16 f) ees8( des16 ees)
	des( c bes c) aes4
	R2*10
	% bar 256
	\tuplet 3/2 8 {d,,,!16([-\tweak X-offset #-3 ^\markup {Vlc.} f b] f[ b d]) b([ d f] d[ f b])}
	R2*32
	R2.*2
	R1*2
	R2*9
	% bar 302
	d,,2_(-\tweak X-offset #-3 _\markup {Vlc.}
	d)_(
	d)
}
