%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                             C U E   V O I C E S                             #
%###############################################################################
%
% Flote I             | 34   | 100  | 122 
% Flote II            | 197  | 275  | 303 
% Oboe I              | 381  | 471  | 505 
% Oboe II             | 581  | 667  | 703 
% Klarinet I          | 792  | 841  | 873 
% Klarinet II         | 949  | 1012 | 1043
% Fagot I             | 1121 | 1177 | 1197
% Fagot II            | 1269 | 1326 | 1350
% Horn I              | 1430 | 1523 | 1557
% Horn II             | 1649 | 1740 | 1774
% Horn III            | 1883 | 1973 | 1997
% Horn IV             | 2083 | 2173 | 2203
% Trumpet I           | 2294 | 2384 | 2423
% Trumpet II          | 2529 | 2619 | 2658
% Pauken              | 2767 |      | 2860 
% Solo Violin         | 2949 | 3000 | 3017 
% Solo Violoncelle    | 3080 | 3140 | 3164 
% Violin I            | 3215 | 3246 | 3256 
% Violin II           | 3319 | 3353 | 3369 
% Bratsche            | 3441 | 3459 | 3471 
% Violoncelle         | 3523 | 3541 | 3553 
% Contrabass          | 3577 | 3618 | 3630
%
%###############################################################################
%#                   C U E   V O I C E   F O R   F L O T E N                   #
%###############################################################################
cueVoiceFloteIMvtI = \relative c, {
	s1*22
	% bar 23 - 28
	\voiceTwo r4 <e b' d a'>_\pizz^\markup {Solo-Vlc.} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2)^\tutti r4 cis'''4(^\markup {Klar.}
	b) cis( gis) a(
	b2 e,4) s4
	s1*23
	% bar 52 - 56
	r2 e8^(^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,^( b c d e fis gis a) e^( fis gis a b c d
	e) a,^( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>-.
	<g g'>-. \once \voiceOne r <gis gis'>-. \once \voiceOne r 
	s1*63
	% bar 120 - 123
	fis,2(^\markup {Klar.I} g
	gis a)
	b( c
	cis d)
	s1*37
	% bar 161 - 166
	s2 s4 e,(_\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e( 
	d) r s2
	s1*64
	% bar 231 - 234
	\voiceOne r2^\markup {Solo-Viol.} r4 \tupletDown \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b c} e,4)
	\tuplet 3/2 4 {d8( cis b e d cis fis e d)} r4
	\tuplet 3/2 4 {b'8( a g cis b ais} d8) \tupletNeutral s s4
	s1*40
	% bar 276 - 280
	s2 ees(~^\markup {Solo-Vlc.}
	ees1~
	ees2 b!
	d!)~ d4. cis8(
	d e f!) s s2
	s1*23
	% bar 303 - 305
	s2 s4 a,_(^\markup {Solo-Viol.}
	c,2. b4)
	\tuplet 3/2 4 {a8 c f} s4 s2
	s1*30
	% bar 336 - 342
	\voiceTwo s2 s4 cis'4^(^\markup {Solo-Vlc.}
	b8) r cis4^( gis8) r a4^(
	b2 e,4) cis'^(
	b8) r cis4^( gis8) r a4^(
	a'1
	e2.) \oneVoice \set doubleSlurs = ##t <fis fis'>4(-\tweak extra-offset #'(0 . -0.25) ^\markup {Solo-Viol.}
	<fisis fisis'>) \set doubleSlurs = ##f <gis gis'>4^(~ q16 fis' e dis) s4
	s1*57
	% bar 400 - 401
	\voiceTwo a,2(~^\markup {Solo-Viol.} a8 c b a)
	a2(~ a8 c b a)
	s1*17
	% bar 419 - 420
	\tuplet 3/2 4 {f''8^\markup {Solo-Viol.} e d c b a f e d c b a}
	c,16( e a c) e,( a c e) a,( c e a) s4
}
cueVoiceFloteIMvtII = \relative c' {
	% bar 1
	\stemOffset #-2 \voiceOne a4(_\markup {Hr.I} \stemOffset #-2 d2)\fermata
	s2.*15
	% bar 17 - 19
	\oneVoice \beamOffset #'(-0.5 . -1) a'8(^\markup {Solo-Viol.} fis d a) e'4
	\beamOffset #'(-0.5 . -1) a8( fis d a) e'4
	d4. s8 s4
	s2.*8
	% bar 28 - 30
	\beamOffset #'(-0.5 . -1) a'8(^\markup {Solo-Viol.} fis d a) e'4
	\beamOffset #'(-0.5 . -1) a8( fis d a) e'4
	d4. r8 s4
	s2.*75
	% bar 106 - 111
	\voiceOne g,4~(-\tweak X-offset #-6 ^\markup {Solo-Vlc.} \tuplet 3/2 4 {g8 fis g~ g fis g}
	\tuplet 3/2 4 {a fis g~} g8) g4 fis8(
	g4)(~ \tuplet 3/2 4 {g8 fis g)} ees' bes
	g ees bes4 g
	a8([ d e! a)] a(^\markup {Solo-Viol.} d
	e[ a)]~ a([ a']) s4
}
cueVoiceFloteIMvtIII = \relative c' {
	% bar 1 - 2
	\oneVoice a8(^\markup {Solo-Vlc.} e'16) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	s2*22
	% bar 25 - 30
	\voiceOne f''8(^\markup {Solo-Viol.} e16 f) e4
	d16( c bes c) a4
	a'8( g16 a) g4
	f16( e d e) c4
	\voiceTwo <a c>2~_\markup {Klar.}
	q
	s2*46
	% bar 77 - 87
	\oneVoice r4^\markup {Solo-Viol.} \once \stemDown g^(
	<c e> <d g>
	<e c'>) <a f'>8-.^( <g e'>-.)
	<f d'>^([ a)] <dis, b'>-.^( a'-.)
	<e g>4 <a, a'>~
	q <a' f'>8-.^( <g e'>-.)
	<f d'>^([ a)] <a a'>-.^( <g g'>-.)
	<f f'>^( <e e'> <d d'>) a'^(\noBeam 
	<e c'> <d b'>) <d b'>4.^( <c a'>8)
	<b g'>2 r8 \voiceTwo \shape #'((0 . -0.7)(0 . -0.5)(0 . -0.5)(0 . 0)) Slur g^( \bar "||"
	<e c'> <d b'> <e c'> <d b'>) <d b'>4 s4
	s1 s2*18
	% bar 107 - 108
	\voiceOne c'8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis-.
	s2*7
	% bar 116 - 121
	\once \voiceTwo r4-\tweak X-offset #-4.5 ^\markup {Hr.III} a,,8-. \once \voiceTwo r
	\once \voiceTwo r4 a8-. \once \voiceTwo r8
	r4-\offset X-offset #-2.3 ^\markup {Solo-Viol.} r8. a''16-. 
	a8[-. r16 <f a>-.] q8[-. r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)
	<f a>4( <ees g>8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	s2*29
	% bar 166 - 172
	s4 s8 a,,(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f d'>8(
	<f c'>) <c f>4 <d bes'>8(
	<d a'>) <cis e>8. <d f>16( <f a> <e g>)
	<d f>8 a'4 gis8(
	a)\noBeam a8. s16 s8
	s2*19
	% bar 192 - 196
	s4 b'(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) s
	s2*37
	% bar 234 - 235
	\oneVoice c'8--^\markup {Solo-Viol.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	s2*18
	% bar 254
	\voiceOne \tuplet 3/2 8 {gis,,,16([^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	s2*30
	% bar 285 - 291
	\oneVoice s4 <fis, fis'>~-\offset X-offset -2 ^\markup {Solo-Viol.}
	<fis fis'> <fis' d'>8-.( <e cis'>-.)
	<< {\voiceOne b'8([ fis])} \new Voice {\InCueContext \voiceTwo fis b,\rest } >> \oneVoice <fis' fis'>-.( <e e'>-.)
	\beamOffset #'(1 . 1) <d d'>( <cis cis'> <b b'>) fis'(\noBeam
	<cis a'> <b gis'>) q4.( <a fis'>8)
	<gis e'>4 \voiceTwo r r8 e_( 
	<cis a'>[ <b gis'>]) s4 s2
}
cueVoiceFloteIIMvtI = \relative c, {
	s1*22
	% bar 23 - 28
	\voiceTwo r4 <e b' d a'>_\pizz^\markup {Solo-Vlc.} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4 cis'''4(^\markup {Klar.}
	b4) cis( gis) a(
	b2 e,4) s4
	s1*23
	% bar 52 - 56
	r2^\markup {Solo-Viol.} e8^( fis16 gis a b c d
	e) a,^( b c d e fis gis a) e^( fis gis a b c d
	e) a,^( b c d e fis gis a) e fis gis a e f g
	\oneVoice a4-. <c,, e'>-. <f f'>-. <a fis'>-.
	<g g'>-. r <gis gis'>-. r
	s1*63
	% bar 120 - 123
	\voiceTwo fis,2(^\markup {Klar.I} g
	gis a)
	b( c
	cis d)
	s1*8
	% bar 132
	\voiceOne r4^\markup {Fl.I} e-. r f-.
	s1*28
	% bar 161 - 166
	\voiceTwo s2 s4 e,(-\tweak X-offset #-4 ^\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e( 
	d) r s2
	s1*64
	% bar 231 - 234
	\voiceOne \tupletDown r2-\offset X-offset -2 ^\markup {Solo-Viol.} r4 \shape #'((0 . 0)(0 . 0)(1 . -1)(0 . -2.5)) Slur \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b c} e,4)
	\tuplet 3/2 4 {d8( cis b e d cis fis e d)} r4
	\tuplet 3/2 4 {b'8( a g cis b ais} d8) s s4 \tupletNeutral
	s1*15
	% bar 251 - 253
	s2 s4 s8 fis-.^\markup {Ob.I}
	g-.[ a-. bes-.] cis,,-.^\markup {Fag.I} d-.[ e-. fis-.] r
	\voiceTwo f!4\trill^\markup {Solo-Viol.}  f'2\trill f,4\trill
	s1*22
	% bar 275 - 279
	\voiceOne s2 ees'(~^\markup {Solo-Vlc.}
	ees1~
	ees2 b!
	d!)~ d4. cis8(
	d e f!) s s2
	s1*23
	% bar 303 - 306
	s2 s4 a,(^\markup {Solo-Viol.}
	c,2. b4)
	\tuplet 3/2 4 {a8 c f} e'4-.^\markup {Fl.I} r f-.
	\tuplet 3/2 4 {a,,8^\markup {Solo-Viol.} c g'!} s4 s2
	s1*10
	% bar 317
	\oneVoice cis'4.(^\markup {Fl.I} b8 e,2)
	s1*18
	% bar 336 - 342
	\voiceTwo s2 s4 cis4^(_\markup {Solo-Vlc.}
	b8) r cis4^( gis8) r a4^(
	b2 e,4) cis'^(
	b8) r cis4^( gis8) r a4^(
	a'1
	e2.) \oneVoice \set doubleSlurs = ##t <fis fis'>4^(^\markup {Solo-Viol.}
	<fisis fisis'>) \set doubleSlurs = ##f <gis gis'>4^(~ q16 fis' e dis) s4
	s1*57
	% bar 400 - 401
	\voiceOne a,2(~^\markup {Solo-Viol.} a8 c b a)
	a2(~ a8 c b a)
	s1*17
	% bar 419 - 420
	\oneVoice \tuplet 3/2 4 {f''8^\markup {Solo-Viol.} e d c b a f e d c b a}
	\voiceTwo c,16( e a c) e,( a c e) a,(  c e a) s4
}
cueVoiceFloteIIMvtII = \relative c' {
	% bar 1
	\stemOffset #-2 a4(_\markup {Hr.I} \stemOffset #-2 d2)\fermata
	s2.*15
	% bar 17 - 20
	\oneVoice \beamOffset #'(-0.5 . -1) a'8(^\markup {Solo-Viol.} fis d a) e'4
	\beamOffset #'(-0.5 . -1) a8( fis d a) e'4
	<< d4. \new Voice {\voiceOne \InCueContext r4 r8} >> fis'8([^\markup {Fl.I} a b)]
	c( a fis dis e g)
	s2.*7
	% bar 28 - 30
	\beamOffset #'(-0.5 . -1) a,8(^\markup {Solo-Viol.} fis d a) e'4
	\beamOffset #'(-0.5 . -1) a8( fis d a) e'4
	d4. \once \voiceTwo r8 s4
	s2.*32
	% bar 63 - 65
	\voiceTwo s4 s f(~_\markup {Fag.I}
	f fis gis
	fis eis) s4
	s2.*40
	% bar 106 - 111
	\voiceOne \tupletDown g,4~(^\markup {Solo-Vlc.} \tuplet 3/2 4 {g8 fis g~ g fis g
	a fis g~} g8) g4 fis8(
	g4)(~ \tuplet 3/2 4 {g8 fis g)} ees' bes
	g ees bes4 g
	a8([ d e! a)] a(^\markup {Solo-Viol.} d
	e[ a)]~ a([ a']) d4^\markup {Fl.I}
}
cueVoiceFloteIIMvtIII = \relative c' {
	% bar 1 - 2
	\oneVoice a8(^\markup {Solo-Vlc.} e'16) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	s2*22
	% bar 25 - 30
	\voiceOne f''8(^\markup {Solo-Viol.} e16 f) e4
	d16( c bes c) a4
	a'8( g16 a) g4
	f16( e d e) c4\laissezVibrer
	<a c>2~^\markup {Klar.}
	q
	s2*46
	% bar 77 - 87
	\voiceTwo r4^\markup {Solo-Viol.} g^(
	\oneVoice <c e> <d g>
	<e c'>) <a f'>8-.( <g e'>-.)
	<f d'>([ a]) <dis, b'>-.( a'-.)
	<e g>4 <a, a'>(
	q) <a' f'>8-.( <g e'>-.)
	<f d'>([ a)] <a a'>-.( <g g'>-.)
	<f f'>( <e e'> <d d'>) a'(\noBeam 
	<e c'> <d b'>) <d b'>4.( <c a'>8)
	<b g'>2 \voiceTwo r8 g^(
	<e c'> <d b'> <e c'> <d b'>) <d b'>4.^( <c a'>8)
	s1 s2*27
	% bar 116 - 121
	\voiceTwo r4^\markup {Hr.III} \once \voiceOne a8-. r
	r4 \once \voiceOne a8-. r
	\voiceOne r4 r8. a''16-.-\tweak X-offset #-7 ^\markup {Solo-Viol.} \bar "||" \key d \minor
	a8[-. r16 <f a>-.] q8[-. r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	s2*12
	% bar 134 - 136
	r8-\offset X-offset -3 ^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	a8-.[ r16 a-.] a8-.[ r16 a-.] 
	s2*29
	% bar 166 - 172
	s4 s8 a,,^(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8^(
	<a a'>) <f' a>4 <f d'>8^(
	<f c'>) <c f>4 <d bes'>8^(
	<d a'>) <cis e>8.\noBeam <d f>16^( <f a> <e g>)
	<d f>8 a'4 gis8^(
	a) a8.\noBeam s16 s8
	s2*19
	% bar 192 - 196
	s4 b'(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) s
	s2*39
	% bar 236 - 241
	\oneVoice e''8->^\markup {Fl.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	\voiceOne e,8(^\markup {Klar.I} d16 e) d4
	f16( e d e) d4^\markup {Ob.I}
	g8( f16 e) g4(
	g8)( a16 bes) a8( g)
	s2*12
	% bar 254
	\tupletDown \tuplet 3/2 8 {gis,,16([^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])} \tupletNeutral
	s2*30
	% bar 285 - 291
	r4 \oneVoice <fis, fis'>~^\markup {Solo-Viol.}
	<fis fis'> <fis' d'>8-.( <e cis'>-.)
	<< {\voiceOne b'([ fis)] } \new Voice {\voiceTwo \InCueContext d8 c\rest } >> \oneVoice <fis fis'>-.( <e e'>-.)
	\beamOffset #'(1 . 1) <d d'>( <cis cis'> <b b'>) fis'(\noBeam
	<cis a'> <b gis'>) q4.( <a fis'>8)
	\voiceTwo <gis e'>4 r r8 e_( 
	<cis a'>[ <b gis'>]) cis'4_(^\markup {Fl.I} d dis)
}
%###############################################################################
%#                     C U E   V O I C E   F O R   O B O E                     #
%###############################################################################
cueVoiceOboeIMvtI = \relative c, {
	s1*22
	% bar 23 - 28
	\voiceTwo r4 <e b' d a'>-\offset X-offset 0.5 _\pizz^\markup {Solo-Vlc} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4^\markup {Klar.I} cis'''4(
	b) cis( gis) a(
	b2 e,4) s 
	s1*23
	% bar 52 - 56
	\voiceOne r2 e8(^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b  c d
	\oneVoice e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>-.
	<g g'>-. \once \voiceOne r <gis gis'>-. \once \voiceOne r
	s1*75
	% bar 132 - 137
	\voiceOne r4^\markup {Fl.I} e-. r f-.
	r fis-. gis -\tweak X-offset #-1 ^\sf-. r
	r e-. r f-.
	r fis-. dis'-.-\tweak X-offset #-1 ^\sf r
	r b-. r c-.
	r cis-. g'-.-\tweak X-offset #-1 ^\sf r
	s1*28
	% bar 166 - 172
	\voiceOne s2 s4 e,(^\markup {Solo-Viol.}
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'1
	g2.) <a, a'>4(
	<ais ais'>) <b b'>4(~ q16 a'! g fis) s4
	s1*20
	% bar 193 - 194
	<g,, g'>8^\markup {Solo-Viol.} g'4-> g g-> g8(
	<f d'>-.) q4-> q8( <d c' a'!>)-. <c' a'>4-> <c a'>8-.
	s1*36
	% bar 231 - 233
	r2^\markup {Solo-Viol.} r4 \oneVoice \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {\tupletUp e, fis g cis, d e ais, b cis} e,4) \tupletNeutral
	\tuplet 3/2 4 {d8( cis b e d cis} fis) s8 s4
	s1*8
	% bar 242 - 243
	\voiceOne c'!1(^\markup {Fl.I}
	c4) r8 gis'-. a-.[ b-. c!-.] s
	s1*3
	% bar 247
	r4^\markup {Fl.I} r8 \oneVoice cis!-. d-.[ e-. f-.] s
	s1*4
	% bar 252 - 253
	s2 s4 s8 \voiceOne cis!-.-\tweak X-offset #-3 ^\markup {Fl.I}
	d-. s8 s4 s2
	s1*30
	% bar 284 - 285
	\voiceTwo a,,2.^\markup {Viol.I} d4-.
	e-. r8 d-. e4-. r8 d'-.
	s1*24
	% bar 310 - 312
	\oneVoice r2-\offset X-offset #-1 ^\markup { \column {\lower #1.5 "Solo-" "Viol."} } \tuplet 3/2 4 {g'!8 -\tweak X-offset #-1.7 \f e! bes g e bes}
	a!4 r \tuplet 3/2 4 {a''8-\tweak X-offset #-1.0 \f fis dis a fis dis}
	\voiceOne \tuplet 3/2 4 {a' fis dis} a8 r \tuplet 3/2 4 {a fis dis a^\markup {Solo-Vlc} fis dis}
	s1*23
	% bar 336 - 342
	r2 r4 cis''(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1
	e2.) \set doubleSlurs = ##t <fis fis'>4(^\markup {Solo-Viol.}
	<fisis fisis'>) \set doubleSlurs = ##f <gis gis'>4(~ q16 fis' e dis) s4
	s1*20
	% bar 363 - 364
	\voiceTwo e,,8^\markup {Solo-Viol.} e4 e e e8^(
	<d b'>^.) q4 q8^( <a' fis'!>) q4 q8
	s1*41
	% bar 406 - 409
	\voiceOne r4^\markup {Viol.I} d( dis) dis~
	dis dis( e) e~
	e e( f) a,~
	a d s2
	s1*10
	% bar 420 - 425
	r2 r4 c'-.^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. s
}
cueVoiceOboeIMvtII = \relative c' {
	% bar 1 - 2
	\voiceTwo a4(-\tweak X-offset #-3.5 _\markup {Hr.I} d2)_\fermata
	e4( a2)_\fermata
	s2.*27
	% bar 30 - 34
	\voiceOne s4 s a'4(~ -\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) d(
	e f g
	f c) s
	s2.*15
	% bar 50 - 55
	s4 s a(~-\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) r
	r r d(
	e f g 
	f c) s
	s2.*10
	% bar 66 - 68
	s4 s a,^\markup {Viol.I}(_~
	a b cis
	b a) s
	s2.*42
	% bar 111 - 117
	s4 s d'^\markup {Fl.I}(~
	d cis b
	a g e)\laissezVibrer
	a,^\markup {Trpt.I}( d2)~
	d2.~
	d~
	d2 r4
}
cueVoiceOboeIMvtIII = \relative c' {
	% bar 1 - 2
	a8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	s2*32
	% bar 35 - 38
	\voiceTwo e'8^\markup {Viol.I}^\pizz d f d
	e d f d
	<d a'> <b g'> <d a'> <b g'>
	<a f' d'> r r4
	s2*45
	% bar 84 - 89
	\voiceOne s4 s8 a''(-\offset X-offset -4 ^\markup {\column {\lower #1.5 "Solo-" "Viol."}}
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	c b c b) b4 fis'^\markup {Fl.I}(
	g a ais b)
	cis8-. s s4
	s2*3
	% bar 93 - 96
	c,8(^\markup {Klar.I} g' fis f
	e d c g)
	c'(-\offset X-offset -2 ^\markup {Fl.} <bes g'> <a fis'> <aes f'>
	<g e'> <f d'>) s4
	s2*21
	% bar 118 - 121
	s4 s8 s16 a-.^\markup {Solo-Viol.}
	a8-.[ r16 <f a>-.] q8-.[ r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	s2*29
	% bar 166 - 172
	r4 r8 a,,(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f d'>8(
	<f c'>) <c f>4 <d bes'>8(
	<d a'>) <cis e>8.\noBeam <d f>16([ <f a> <e g>)]
	<d f>8 a'4 gis8(
	a) a s4
	s2*19
	% bar 192 - 196
	s4 b'!^\markup {Viol.I}(
	a) g( 
	dis) e(
	bes!) a(
	\once \voiceTwo a) s
	s2*35
	% bar 232 - 235
	\oneVoice a'8(^\markup {Solo-Viol.} g16-.) g-. c8( g16-.) g-.
	aes8( g16-.) g-. c-. e-. g-. e-.
	c8-- b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	s2*19
	% bar 255 - 256
	e2(^\markup {Fl.I}
	f)
	s2*31
	% bar 288 - 293
	\voiceOne s4 s8 fis,(^\markup {Solo-Viol.}
	<cis a'>8 <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e(
	a gis) cis4(^\markup {Fl.I} d dis
	e fis fisis gis)
	ais8-. r r4
	s2*3
	% bar 297 - 300
	a,8(^\markup {Klar.I} e' dis d
	cis b a) e'(\noBeam
	fis e a e
	f e4.) 
}
cueVoiceOboeIIMvtI = \relative c, {
	s1*22
	% bar 23 - 30
	\voiceTwo r4 <e b' d a'>_\pizz^\markup {Solo-Vlc} gis' f
	d b gis d(_\arco
	f1\espressivo
	e2) r4^\markup {Klar.I} cis'''4(
	b) cis( gis) a(
	\hairpinShorten #'(0 . 0.8) b2\< \hairpinShorten #'(0.2 . 0) e,4\>) a(\!
	dis2 d)
	cis4( a2) r4
	s1*21
	% bar 52 - 56
	\voiceOne r2^\markup {Solo-Viol.} e8( fis16 gis a b c d 
	e) a,( b c d e fis gis a) e( fis gis a b c d
	\oneVoice e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. e-. <f, f'>-. <a fis'>-.
	<g g'>-. \once \voiceOne r <gis gis'>-. \once \voiceOne r
	s1*75
	% bar 132 - 137
	\voiceOne r4^\markup {Fl.I} e-. r f-.
	r fis-. gis -\tweak X-offset #-1.5 ^\sf-. r
	r e-. r f-.
	r fis-. dis'-.-\tweak X-offset #-1.5 ^\sf r
	r b-. r c-.
	r cis-. g'-.-\tweak X-offset #-1.5 ^\sf r
	s1*28
	% bar 166 - 172
	r2 r4 e,(^\markup {Solo-Viol.}
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'1
	g2.) <a, a'>4(
	<ais ais'>) <b b'>4(~ q16 a'! g fis) s4
	s1*20
	% bar 193 - 194
	<g,, g'>8 -\tweak X-offset #1 ^\markup {Solo-Viol.} g'4-> g g-> g8(
	<f d'>-.) q4-> q8( <d c' a'!>)-. <c' a'>4-> <c a'>8-.
	s1*36
	% bar 231 - 233
	\tupletDown r2-\offset X-offset #-1 ^\markup {Solo-Viol.} r4 \shape #'((0 . 0)(0 . 0)(0 . -1)(0 . -2.3)) Slur \tuplet 3/2 4 {g'8( a b}
	\tuplet 3/2 4 {e, fis g cis, d e ais, b cis} e,4) \tupletNeutral
	\tuplet 3/2 4 {d8( cis b e d cis} fis) s8 s4
	s1*16
	% bar 250 - 252
	bes,4\trill-\tweak Y-offset #4.5 ^\markup {Solo-Viol.} bes'2\trill bes,4\trill
	bes'\trill \afterGrace bes'2(\trill {a16[ bes]} a8) r
	f,4\trill f'2\trill f,4\trill
	s1*31
	% bar 284 - 285
	\voiceTwo a,2.^\markup {Viol.I} d4-.
	e-. r8 d-. e4-. r8 d'-.
	s1*27
	% bar 313 - 315
	\voiceOne e4.(^\markup {Ob.I} d8 b2)
	r4 r8 e( d4. b8
	e4. d8 b2)
	s1*20
	% bar 336 - 342
	r2 r4 cis(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1
	e2.) \set doubleSlurs = ##t <fis fis'>4(^\markup {Solo-Viol.}
	<fisis fisis'>) \set doubleSlurs = ##f <gis gis'>4(~ q16 fis' e dis) s4
	s1*20
	% bar 363 - 364
	e,,8^\markup {Solo-Viol.} e4 e e e8(
	<d b'>-.) q4 q8( <a' fis'!>) q4 q8
	s1*41
	% bar 406 - 409
	r4^\markup {Viol.I} d( dis) dis~
	dis dis( e) e~
	e e( f) a,~
	a d s2
	s1*10
	% bar 420 - 425
	r2 r4 c'-.^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. s
}
cueVoiceOboeIIMvtII = \relative c' {
	% bar 1 - 2
	\voiceTwo a4(-\tweak X-offset #-3.5 _\markup {Hr.I} d2)_\fermata
	e4( a2)_\fermata
	s2.*27
	% bar 30 - 36
	\voiceOne s4 s a'4(~ -\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) d(
	e f g
	f c) a4(~^\markup {Ob.I}
	a g fis
	e d) s
	s2.*13
	% bar 50 - 55
	s4 s a'(~-\tweak X-offset #-3 ^\markup {Fl.I}
	a bes c
	bes a) r
	r r d(
	e f g 
	f c) r
	s2.*10
	% bar 66 - 68
	\voiceTwo s4 s a,^\markup {Viol.I}(~
	a b cis
	b a) s
	s2.*42
	% bar 111 - 117
	\voiceOne s4 s d'-\offset X-offset -3 ^\markup {Fl.I}(~
	d cis b
	a gis e)
	a,^\markup {Trpt.I}( d2)~
	d2.~
	d~
	d2 r4
}
cueVoiceOboeIIMvtIII = \relative c' {
	% bar 1 - 2
	a8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	s2*32
	% bar 35 - 38
	\voiceTwo e'8^\markup {Viol.I}^\pizz d f d
	e d f d
	<d a'> <b g'> <d a'> <b g'>
	<a f' d'> r r4
	s2*45
	% bar 84 - 89
	\voiceOne s4 s8 a''(^\markup {Solo-Viol.}
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	c b c b) b4 fis'^\markup {Fl.I}(
	g a ais b)
	cis8-. r r4
	s2*3
	% bar 93 - 96
	c,8(^\markup {Klar.I} g' fis f
	e d c g)
	c'(-\tweak X-offset #-2 ^\markup {Fl.} <bes g'> <a fis'> <aes f'>
	<g e'> <f d'>) s4
	s2*21
	% bar 118 - 121
	s4 s8 s16 a-.^\markup {Solo-Viol.}
	a8-.[ a16\rest <f a>-.] q8-.[ a16\rest q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	s2*12
	%bar 134 - 136
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	s2*29
	% bar 166 - 172
	r4 r8 a,,(^\markup {Solo-Viol.}
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f d'>8(
	<f c'>) <c f>4 <d bes'>8(
	<d a'>) <cis e>8.\noBeam <d f>16([ <f a> <e g>)]
	<d f>8 a'4 gis8(
	a) a s4
	s2*19
	% bar 192 - 196
	s4 b'!^\markup {Viol.I}(
	a) g( 
	dis) e(
	bes!) a(
	a) s
	s2*39
	% bar 236 - 239
	e'8->^\markup {Ob.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	e8(^\markup {Klar.I} d16 e) d4
	f16( e d e) d4~
	d8 s s4
	s2*14
	% bar 255 - 256
	\oneVoice e'2(^\markup {Fl.I}
	f)\laissezVibrer
	s2*31
	% bar 288 - 292
	\voiceOne s4 s8 fis,(-\offset X-offset -3 ^\markup {\column { \lower #1.5 "Solo-" "Viol." }}
	<cis a'>8 <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e(
	a gis a gis) gis4.( fis8)
	e4 r4 r2
	s2*4
	% bar 297 - 301
	a8(^\markup {Klar.I} e' dis d
	cis b a) e'(\noBeam
	fis e a e
	f e4.)~
	e r8
	s2*11
	% bar 313 - 319
	e8(^\markup {Ob.I} eis) fis4(~
	fis8 fisis) gis4~
	gis8 cis( b a)
	gis(^\markup {Klar.I} fis d e)
	e( eis) fis4(~
	fis8 fisis) gis4~
	gis8 r
}
%###############################################################################
%#               C U E   V O I C E   F O R   K L A R I N E T E N               #
%###############################################################################
cueVoiceKlarinetIMvtI = \relative c {
	\transposition a
	s1*22
	% bar 23 - 26
	r4 \voiceOne <g d' f c'>-.^\pizz b'-. aes-.
	f-. d-. b-. f_(^\arco
	aes1_\espressivo
	\once \voiceTwo g2) s
	s1*25
	% bar 52 - 56
	\voiceOne r2^\markup {Solo-Viol.} g''8( a16 b c d ees f
	\oneVoice g) c,( d ees f g a b c) g( a b c d ees f
	g) c,( d ees f g a b c) g a b c g aes bes
	c4-. <ees,, g'>-. <aes aes'>-. <c a'>-.
	<bes bes'>-. r <b b'>-. r
	s1*61
	% bar 118 - 119
	aes8(^\markup {Solo-Viol.} c bes aes) c( bes g aes)
	f( f' c aes) c( bes g aes)
	s1*41
	% bar 161 - 166
	\stemUp \slurUp r2 r4 g,(^\markup {Solo-Vlc.}
	\afterGrace aes2.)( {bes16[ aes])}  g8( aes)
	bes4 r8 bes( b4) r8 b(
	c4 bes! aes g
	f) r r g(
	f) r s2 \stemNeutral \slurNeutral
	s1*64
	% bar 231 - 235
	\voiceOne \tupletDown s2 s4 \shape #'((0 . 0)(0 . 0)(0 . -1)(0 . -2.5)) Slur \tuplet 3/2 4 {bes'8( -\tweak X-offset #-7 ^\markup {Solo-Viol.} c d}
	\tuplet 3/2 4 {g, a bes e, f g cis, d e} g,4-.)
	\tuplet 3/2 4 {f8( e d g f e a g f)} r4
	\tuplet 3/2 4 {d'8( c bes e d cis f e d)} r4
	\tuplet 3/2 4 {bes'8( a g c bes a} d) s s4 \tupletNeutral
	s1*106 
	% bar 342 - 345
	r2 r4 c-\tweak X-offset #-4 ^\markup {Ob.I}(
	cis-.) d2( a4)
	r2 r4 f4(
	fis-.) g4(~ g16 f! e d) s4
	s1*74
	% bar 420 - 425
	\oneVoice r2 r4 ees'-. -\tweak X-offset #-3 ^\markup {Fl.I}
	d-. ees-. b-. c-.
	d-. d-. g,-. ees'-.
	d-. ees-. b-. c-.
	c-. c-. g'-. c,-.
	c-. c-. g'-. s
}
cueVoiceKlarinetIMvtII = \relative c' {
	\transposition a
	% bar 1
	\voiceTwo c4( -\tweak X-offset #-4 _\markup {Hr.II} f2_\fermata)
	s2.*23
	% bar 25 - 29
	\voiceOne g8([^\markup {Solo-Viol.} c a f)] a( d
	bes g) c([ f g8. f16])
	f8[( d]) d([ g,]) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	\voiceTwo f4. s8 s4
	s2.*35
	% bar 66 - 68
	\voiceOne s2 c'4^\markup {Viol.I}(~
	c d e
	d c) s
	s2.*10
	% bar 79 - 83
	r2 f8(^\markup {Fl.I} c)
	d([ f]) f( g) a4
	r r d,8( f)
	a([ g]) g( f) e4
	c8([ f g]) s s4
	s2.*11
	% bar 95 - 99
	bes,8(-\offset X-offset -3 ^\markup {Solo-Viol.} g) c([ f g8. f16)]
	f8( d) d( g,) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	f4. r8 c''4\laissezVibrer
}
cueVoiceKlarinetIMvtIII = \relative c' {
	\transposition a
	% bar 1 - 2
	c8( -\tweak X-offset #-4 ^\markup {\column {\lower #1.5 \line {Solo-} \line {Vlc.}}} g'16-.) g-. fis8( f16-.) f-.
	e8( d16-.) d-. c8( g16-.) g-.
	s2*22
	% bar 25 - 28
	aes''8(^\markup {Solo-Viol.} g16 aes) g4
	f16( ees des ees) c4
	c'8( bes16 c) bes4
	aes16( g f g) ees4\laissezVibrer
	s2*48
	% bar 77 - 87
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
	\voiceOne ees d) s4 s2
	s1 
	s2*18
	% bar 107 - 109
	ees8->^\markup {Ob.I} d16-. ees-. d8 ees16-. d-.
	ees8-> d16-. ees-. d( c') bes-. a-.
	g8 r^\markup {Solo} r4
	s2*2
	r4^\markup {Ob.I} c,16( g') r8
	s2*5
	% bar 118 - 121
	s4 s8 s16 \oneVoice c-.^\markup {Solo-Viol.}
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.]
	\tuplet 3/2 4 {c4( bes8)} \tuplet 3/2 4 {aes( bes c)}
	\tuplet 3/2 4 {c4( bes8) } r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} aes-. f-. d'-.
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	s2*44
	% bar 181 - 184
	\voiceOne c,2(^\markup {Trpt.I}
	f4) r
	c2(
	f4) r
	s2*7
	% bar 192 - 196
	r4 d'(-\offset X-offset -6 ^\markup {Viol.I}
	c) bes(
	fis) g(
	des!) c~
	c s4
	s2*35
	% bar 232
	c,16-.^\markup {Fag.I} ees-. g-. ees-. bes8-. r
	s2
	% bar 234
	ees16-.^\markup {Fag.I} g-. bes-. g-. d8-. r
	s2*46
	% bar 281 - 291
	\oneVoice s4 g(^\markup {Solo-Viol.}
	e' g
	c)-. f8-.( e-.)
	d([ a)] b(-. a-.)
	g4 a~
	a f'8( e)
	d([ a)] a'-.( g-.)
	f[( e d)] a(
	c b) b4.( a8)
	g4 r r8 \voiceOne g,(
	c[ b)] s4 s2
}
cueVoiceKlarinetIIMvtI = \relative c {
	\transposition a
	s1*22
	% bar 23 - 30
	\voiceOne r4 <g d' f c'>^\pizz b' aes
	f d b f_(^\arco
	aes1_\espressivo
	g2) r4 e'''^(^\markup {Klar.I}
	d) e^( b) c^(
	d2 g,4) c^(
	fis2 f)
	e4^( c2) r4 
	s1*21
	% bar 52 - 56
	\oneVoice r2^\markup {Solo-Viol.} g8( a16 b c d ees f
	g) c,( d ees f g a b c) g( a b c d ees f
	g) c,( d ees f g a b c) g a b c g aes bes
	c4-. <ees,, g'>-. <aes aes'>-. <c a'>-.
	<bes bes'>-. r <b b'>-. r
	s1*61
	% bar 118 - 119
	aes8(^\markup {Solo-Viol.} c bes aes) c( bes g aes)
	f( f' c aes) c( bes g aes)
	s1*41
	% bar 161 - 166
	\voiceOne s2 s4 g,(^\markup {Solo-Vlc.}
	\afterGrace aes2.)( {bes16[ aes])}  g8( aes)
	bes4 r8 bes( b4) r8 b(
	c4 bes! aes g
	f) r r g(
	\voiceTwo f) r s2
	s1*64
	% bar 231 - 236
	\voiceOne s2 s4 \tupletDown \shape #'((0 . 0)(0 . 0)(0 . -1)(0 . -2.5)) Slur \tuplet 3/2 4 {bes'8( -\tweak X-offset #-7 ^\markup {Solo-Viol.} c d}
	\tuplet 3/2 4 {g, a bes e, f g cis, d e} g,4-.)
	\tuplet 3/2 4 {f8( e d g f e a g f)} r4
	\tuplet 3/2 4 {d'8( c bes e d cis f e d)} r4
	\tuplet 3/2 4 {bes'8( a g c bes a} d) r r4
	\tuplet 3/2 4 {b8( a gis cis b a} d) s s4 \tupletNeutral
	s1*5
	% bar 242 - 243
	a2(^\markup {Klar.I} g
	ges f4) r
	s1*35
	% bar 279 - 280
	r4^\markup {Klar.I} r8 cis8( d e f) cis(\noBeam
	e) r r b( d) r r a(
	c4 a fis) s
	s1*60
	% bar 342 - 345
	r2 r4 c'' -\tweak X-offset #-4 ^\markup {Ob.I}(
	cis-.) d2( a4)
	r2 r4 f4(
	fis-.) g4(~ g16 f! e d) s4
	s1*74
	% bar 420 - 425
	\oneVoice s2 s4 ees'-. -\tweak X-offset #-3 ^\markup {Fl.I}
	d-. ees-. b-. c-.
	d-. d-. g,-. ees'-.
	d-. ees-. b-. c-.
	c-. c-. g'-. c,-.
	c-. c-. g'-. s
}
cueVoiceKlarinetIIMvtII = \relative c' {
	\transposition a
	% bar 1
	\voiceTwo c4( -\tweak X-offset #-4 _\markup {Hr.I} f2_\fermata)
	s2.*23
	% bar 25 - 30
	\voiceOne g8([^\markup {Solo-Viol.} c a f)] a( d
	bes g) c([ f g8. f16])
	f8([ d]) d([ g,]) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	\once \voiceTwo f4. s8 s4
	s2.*35
	% bar 66 - 68
	s2 c'4^\markup {Viol.I}(~
	c d e
	d c) s
	s2.*26
	% bar 95 - 99
	r4^\markup {Solo-Viol.} c8([ f g8. f16)]
	f8( d) d( g,) g( c)
	c( a f c) g'4
	c8( a f c) g'4
	f4. r8 c''4
	s2.*11
	% bar 111 - 114
	s2^\markup {Klar.I} f,4(~
	f e d
	c bes) bes(~
	bes a) c\rest
}
cueVoiceKlarinetIIMvtIII = \relative c' {
	\transposition a
	% bar 1 - 2
	c8( -\tweak X-offset #-4 ^\markup {\column {\lower #1.5 \line {Solo-} \line {Vlc.}}} g'16-.) g-. fis8( f16-.) f-.
	e8( d16-.) d-. c8( g16-.) g-.
	s2*22
	% bar 25 - 28
	aes''8(^\markup {Solo-Viol.} g16 aes) g4
	f16( ees des ees) c4
	c'8( bes16 c) bes4
	aes16( g f g) ees4
	s2*48
	% bar 77 - 86
	r4 bes(^\markup {Solo-Viol.}
	g' bes
	ees) aes8(-. g-.)
	f([ c)] d-.( c)-.
	bes4 c~
	c aes'8-.( g-.)
	f([ c)] c'-.( bes-.)
	aes( g f) c(\noBeam
	ees d) d4.( c8)
	bes2 r8 bes,(
	ees d) \voiceTwo g,4(^\markup {Klar.I} aes a)
	s1 
	s2*18
	% bar 107 - 109
	\voiceOne ees'8->^\markup {Ob.I} d16-. ees-. d8 ees16-. d-.
	ees8-> d16-. ees-. d( c') bes-. a-.
	g8 r r4
	s2*8
	% bar 118 - 121
	\oneVoice s4 s8 s16 c-.^\markup {Solo-Viol.}
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.]
	\tuplet 3/2 4 {c4( bes8)} \tuplet 3/2 4 {aes( bes c)}
	\tuplet 3/2 4 {c4( bes8) } r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} aes-. f-. d'-.
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	c8-.[ c16\rest c-.] c8-.[ c16\rest c-.] 
	s2*44
	% bar 181 - 184
	\voiceOne c,2(^\markup {Trpt.I}
	f4) r
	c2(
	f4) r
	s2*7
	% bar 192 - 196
	s4 d'(^\markup {Viol.I}
	c) bes(
	fis) g(
	des!) c~
	c s4
	s2*39
	% bar 236 - 237
	g'8->^\markup {Ob.I} f16-. g-. f8-> g16-. f-.
	g8-> f16-. g-. f( aes) f-. des-.
	s2*16
	% bar 254
	\tuplet 3/2 8 {b,16([^\markup {Viol.Solo} d g] d[ g b]) g[( b d] b[ d g])}
	s2*26
	% bar 281 - 291
	\oneVoice s4 \once \stemDown g,(^\markup {Solo-Viol.}
	e' g
	c)-. f8-.( e-.)
	d( a) b(-. a-.)
	g4 a~
	a f'8( e)
	d( a) a'-.( g-.)
	f[( e d)] a(
	c b) b4.( a8)
	g4 r r8 \once \stemDown g,(
	c[ b)] e,4(^\markup {Klar.I} f fis)
}
%###############################################################################
%#                  C U E   V O I C E   F O R   F A G O T T O                  #
%###############################################################################
cueVoiceFagottoIMvtI = \relative c {
	s1*22
	% bar 23 - 27
	\voiceTwo r4 <e, b' d a'> -\tweak X-offset #-3 ^\pizz gis'-. f-.
	d-. b-. gis-. d^\arco(
	f1_\espressivo
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) s4
	s1*24
	% bar 52 - 56
	\voiceOne r2 e,,8(^\markup {Solo-Vlc.} f16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. a,-. <d a'>-. <d, c'> 
	<g, d' b'>-. r <e b' gis' d'>-. r
	s1*61
	% bar 118 - 119
	f'''8(^\markup {Solo-Viol.} a g f) a( g e f)
	d( d' a f) a( g e f)
	s1*41
	% bar 161 - 166
	s2 s4 \oneVoice e,4(-\offset X-offset -3 ^\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e(
	d) r s2
	s1*75
	% bar 242 - 244
	a''1(^\markup {Solo-Viol.}^\startTrillSpan
	\afterGrace a2)( {gis16[\stopTrillSpan a)]} c!4\trill  fis,\trill
	a\trill c,!8\trill s s4 s
	s1*34
	% bar 279 - 281
	\voiceTwo r4^\markup {Klar.I} r8 ais( b cis d) ais(
	cis) r r gis( b) r r fis(
	a4 fis dis bis')
	cis1
	s1*53
	% bar 336 - 342
	s2 s4 \oneVoice cis4(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1)(
	e2.) <fis fis'>4-\offset X-offset -4 ^\markup {\column { \lower #1.5 "Solo-" "Viol." }}(
	<fisis fisis'>) <gis gis'>4(~ <gis gis'>16 fis' e dis) s4
	s1*77
	% bar 420 - 425
	s2 s4 c-.-\tweak X-offset #-3 ^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. s
}
cueVoiceFagottoIMvtII = \relative c {
	% bar 1
	\voiceOne a'4(-\tweak X-offset #-3 ^\markup {Hr.I} d2)\fermata
	s2.*15
	% bar 17 - 19
	a8(^\markup {Solo-Vlc.} fis d a) e'4
	a8( fis d a) e'4
	d4. s8 s4
	s2.*27
	% bar 47 - 50
	s2 \voiceTwo g8(^\markup {Solo-Viol.} des'
	\tuplet 3/2 4 {f8 ees d! ees) c4( des8) bes4(}
	\tuplet 3/2 4 {c8) aes4( bes8) g4( aes8) aes( d}
	\tuplet 3/2 4 {f) aes,( c f) a,( c)} s4
	s2.*46
	% bar 97 - 99
	\voiceOne a8(^\markup {Solo-Vlc.} fis d a) e'4
	a8( fis d a) e'4
	d4. r8 r4
}
cueVoiceFagottoIMvtIII = \relative c {
	% bar 1 - 2
	a'8(-\tweak X-offset #-6.5 ^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8 s
	s2*14
	% bar 17 - 20
	c''8--^\markup {Solo-Viol.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	e8-- d16-. e-. d8-- e16-. d-.
	e8-- d16-. e-. d( f) d-. b-.
	s2*8
	% bar 29 - 30
	a8(-\tweak X-offset #-7 ^\markup {Solo-Viol.} gis16 a) a,4
	c8( b16 c) c'4\laissezVibrer
	s2*31
	% bar 62 - 64
	\voiceTwo <f,,, des'>4.^>^\markup {Solo-Vlc.} <c e>16-. c,-.
	<e' c'>4.^> <ees c'>16-. c,-.
	<ees' c'>-. c,^([ <c' a'>) c,^(] <a' fis'>) c,^( <fis ees'>8-.)\noBeam
	s2*9
	% bar 74 - 78
	s4 \oneVoice <a' f'>8-.(-\offset X-offset -7 ^\markup {Solo-Vlc.} <g e'>-.)
	<< {\voiceOne d'([ a])} \new Voice {\InCueContext \voiceTwo f4} >> \oneVoice <f' a>8(-. <e g>-.)
	<a, f'>( <g e'> <f d'>) <d a'>(
	<e c'> <d b'>) <d b'>( <c a'>)
	<c a'>4 s
	s2*6 s2.*2 s1*2 s2*13
	% bar 102 - 104
	s4 s8 \tuplet 3/2 8 {e'16-.^\markup {Solo-Viol.} c'-. a-.}
	\tuplet 3/2 8 {dis,[ c' a] e[ c' a] f[ c' a] e[ e' c]}
	\voiceOne \tuplet 3/2 8 {dis,[ dis' c] e,[ e' c] f[ a e] c[ e e,]}
	s2*13
	% bar 118 - 121
	\oneVoice s4 s8 s16 a'-.^\markup {Solo-Viol.}
	a8-.[ a16\rest <f a>-.] <f a>8-.[ a16\rest q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	s2*35
	% bar 172 - 176
	s4 s16 a,,^(-\offset X-offset #-3.5 ^\markup { \column { \lower #1.5 "Solo-" "Viol."} } a' f
	e d cis d f a d b
	\beamOffset #'(0 . -0.8) d a f e d a) <c! a'>8^(\noBeam
	\voiceOne <c' a'>) q4 <b gis'>8^(
	<c a'>) q4 s8
	s2*12
	% bar 189 - 196
	a2(^\markup {Trpt.I}
	fis'4) r
	fis,2(
	fis'4) b(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) s
	s2*26
	% bar 223 - 225
	s4 c,16-.-\offset X-offset -3.5 ^\markup {\column { \lower #1.5 "Solo-" "Vlc." } } e-. g-. e-.
	c8-- b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	s2*52
	% bar 278 - 282
	s4 \oneVoice d'8(-.-\offset X-offset #-7 ^\markup {Solo-Vlc.} cis-.)
	b([ fis)] fis'(-. e-.)
	\beamOffset #'(0.8 . 0.8) d( cis) b fis(\noBeam
	\beamOffset #'(0.8 . 0.8) <cis a'> <b gis'>) q( <a fis'>)
	q4 s
}
cueVoiceFagottoIIMvtI = \relative c {
	s1*22
	% bar 23 - 27
	\voiceTwo r4 <e, b' d a'> -\tweak X-offset #-3 ^\pizz gis' f
	d b gis d^\arco(
	f1_\espressivo
	e2) r4 cis'''(^\markup {Klar.I}
	b) cis( gis) fis,(^\markup {Fag.I}
	a2) s
	s1*23
	% bar 52 - 56
	\voiceOne r2 e,8(^\markup {Solo-Vlc.} f16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. a,-. <d a'>-. <d, c'>-.
	<g, d' b'>-. r <e b' gis' d'>-. r
	s1*61
	% bar 118 - 119
	\oneVoice f'''8(^\markup {Solo-Viol.} a g f) a( g e f)
	d( d' a f) a( g e f)
	s1*41
	% bar 161 - 166
	s2 s4 e,4(-\offset X-offset -3 ^\markup {Solo-Vlc.}
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e(
	d) r s2
	s1*75
	% bar 242 - 244
	a''1(^\markup {Solo-Viol.}^\startTrillSpan
	\afterGrace a2)( {gis16[\stopTrillSpan a)]} c!4\trill  fis,\trill
	a\trill c,!8\trill s s4 s
	s1*34
	% bar 279 - 282
	\voiceTwo r4^\markup {Klar.I} r8 ais( b cis d) ais(
	cis) r r gis( b) r r fis(
	a4 fis dis bis')
	cis1
	s1*53
	% bar 336 - 342
	\oneVoice s2 s4 cis4(^\markup {Solo-Vlc.}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'(
	b8) r cis4( gis8) r a4(
	a'1)(
	e2.) <fis fis'>4(-\offset X-offset -4 ^\markup {\column {\lower #1.5 "Solo-" "Viol."} } 
	<fisis fisis'>) <gis gis'>4(~ <gis gis'>16 fis' e dis) s4
	s1*77
	% bar 420 - 425
	s2 s4 c-.-\tweak X-offset #-3 ^\markup {Fl.I}
	b-. c-. gis-. a-.
	b-. b-. e,-. c'-.
	b-. c-. gis-. a-.
	a'-. a-. e-. a,-.
	a'-. a-. e-. s
}
cueVoiceFagottoIIMvtII = \relative c {
	% bar 1
	\voiceOne a'4(-\tweak X-offset #-3 ^\markup {Hr.I} d2)\fermata
	s2.*17
	% bar 19 - 20
	r4^\markup {Fag.I} r8 fis,( a b)
	c( a fis dis e g)
	s2.*26
	% bar 47 - 50
	\oneVoice s2 g8(^\markup {Solo-Viol.} des'
	\tuplet 3/2 4 {f8 ees d! ees) c4( des8) bes4(}
	\tuplet 3/2 4 {c8) aes4( bes8) g4( aes8) aes( d}
	\tuplet 3/2 4 {f) aes,( c f) a,( c)} s4
	s2.*46
	% bar 97 - 99
	\voiceOne a8(^\markup {Solo-Vlc.} fis d a) e'4
	a8( fis d a) e'4
	d4. r8 r4
	s2.*10
	% bar 110 - 112
	s2 a'8(^\markup {Solo-Viol.} d)(
	e a)~ a([ a')] d,([ d']
	<e, e'>4) s2
}
cueVoiceFagottoIIMvtIII = \relative c {
	% bar 1 - 2
	a'8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8 s
	s2*18
	% bar 21 - 25
	\voiceOne c4(^\markup {Fag.I} bes
	a b!)
	c( cis
	d f8 e 
	f4) r
	s2*3
	% bar 29 - 30
	a'8(_\markup {Solo-Viol.} gis16 a) a,4
	c8( b16 c) c'4\laissezVibrer
	s2*31
	% bar 62 - 64
	<f,,, des'>4.^>^\markup {Solo-Vlc.} <c e>16-. c,-.
	<e' c'>4.^> <ees c'>16-. c,-.
	<ees' c'>-. c,^([ <c' a'>) c,^(] <a' fis'>) c,^( <fis ees'>8-.)\noBeam
	s2*13
	% bar 78 - 83
	\voiceTwo s4^\markup {Fag.I} g(
	bes) a(
	d) f
	e8([ c)] f-.( e-.)
	d( a) a4~(
	a d,)
	s2 s2.*2
	% bar 87
	\voiceOne r4^\markup {Fag.I} e'( f fis)
	s1 s2*29
	% bar 118 - 121
	\oneVoice s4 s8 s16 a''-.^\markup {Solo-Viol.}
	a8-.[ a16\rest <f a>-.] <f a>8-.[ a16\rest q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
	\tuplet 3/2 4 {<f a>4( <ees g>8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} f-.[ d-. b'-.]
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	a8-.[ a16\rest a-.] a8-.[ a16\rest a-.] 
	s2*35
	% bar 172 - 176
	\voiceOne s4 s16 a,,^(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d a) <c! a'>8^(
	<c' a'>) q4 <b gis'>8^(
	<c a'>) q4 s8
	s2*12
	% bar 189 - 196
	a2(^\markup {Trpt.I}
	fis'4) r
	fis,2(
	fis'4) b(^\markup {Viol.I}
	a) g(
	dis) e(
	bes!) a(
	a) s
	s2*39
	% bar 236 - 237
	e'8->^\markup {Ob.I} d16-. e-. d8-> e16-. d-.
	e8 d16-. e-. d( f) d-. b-.
	s2*16
	% bar 254
	\tupletDown \tuplet 3/2 8 {gis,,16[( b e] b[ e gis]) e[( gis b] gis[ b e])} \tupletNeutral
	s2*23
	% bar 278 - 282
	\oneVoice s4 d'8(-.-\offset X-offset -4 ^\markup {\column {\lower #1.5 "Solo-" "Vlc." }} cis-.)
	b([ gis)] fis'(-. e-.)
	d( cis) b fis(\noBeam
	<cis a'> <b gis'>) q( <a fis'>)
	\voiceOne q4 s
	s2*6 s2.*2
	% bar 291
	\voiceTwo r4 cis,(_\markup {Fag.I} d dis)
}
%###############################################################################
%#              C U E   V O I C E   F O R   H O R N   I   &   I I              #
%###############################################################################
cueVoiceHornIMvtI = \relative c {
	\transposition e
	s1*22
	% bar 23 - 25
	r4-\offset X-offset -1 ^\pizz^\markup {Solo.Vlc.} \voiceOne <c, g' bes f'>4 e' des
	\oneVoice bes g e bes(^\arco
	des1)
	s1*26
	% bar 52 - 56
	\voiceOne r2 c''8(^\markup {Solo-Viol.} d16 e f g aes bes
	c) f,( g aes bes c d e f) c( d e f g aes bes
	\oneVoice c) f,( g  aes bes c d e f) c d e f c des ees
	f4-. <aes,, c'>-. <des des'>-. <f d'>-. 
	<ees ees'>-. \once \voiceOne r <e e'>-. \once \voiceOne r
	s1*32
	% bar 89 - 93
	s2 s4 f(_\markup {Hr.III}
	ees8) r f4( ees8) r des4(
	ees2.) f4(
	ees8) r f4( ees8) r des4(
	ees2 f4) s
	s1*44
	% bar 138 - 143
	\voiceOne aes,2(^\markup {Hr.III} ces
	ees d)
	f1~
	f~
	f
	\voiceTwo g,4.(_\markup {Fag.I} aes8 bes2)
	s1*33
	% bar 177 - 183
	\voiceOne s2 s4 f'(~-\offset X-offset -4 ^\markup {Hr.III}
	f8 c) des4.( a8) bes4~
	bes bes2 bes4~
	bes1~
	bes2( ees)~
	ees1~(
	ees2 aes,)
	s1*4
	% bar 188 - 189
	f'16(^\markup {Solo-Viol.} ces aes ces aes f aes f ces f ces aes ces aes f aes)
	f8 \voiceTwo r r4 s2
	s1*52
	% bar 242 - 245
	\voiceOne f''!1~\startTrillSpan^\markup {Solo-Viol.}
	\afterGrace f2_( {e16[\stopTrillSpan f])} aes4\trill d,\trill
	f\trill aes,\trill ces\trill f,\trill
	aes\trill(  ges\trill) \afterGrace f2_(\trill {ees16[ f])}
	s1*12
	% bar 258 - 261
	\voiceTwo des'4.->_\markup {Ob.I} ces8 aes4 r
	beses4. aes8 des,4 r-\tweak X-offset #-2 ^\tutti
	\oneVoice beses''2^(^\markup {Fl.I} ges)
	ges^( eeses)
	s1*16
	% bar 278 - 282
	c,,1^\startTrillSpan_\markup {Pk.}
	c
	c
	c
	\voiceTwo c4\stopTrillSpan r r2
	s1
	% bar 284 - 286
	\voiceOne s2 s4 bes''-.-\tweak X-offset #-1 ^\markup {Hr.III}
	f'-. r8 bes,-. f'4-. r8 bes,-.
	f'4-. r s2
	s1*23
	% bar 310 - 312
	\oneVoice r2 \tupletUp \tuplet 3/2 4 {ees'8\rf-\tweak X-offset #-8.5 ^\markup {Solo-Viol.} c ges ees c ges}
	\once \stemDown f4 r \tuplet 3/2 4 {f''8\rf d b f d b}
	\tuplet 3/2 4 {f' d b} \voiceTwo f r \tuplet 3/2 4 {f d b} f r \tupletNeutral
	s1*29
	% bar 342 - 347
	\voiceOne r2 r4-\tweak X-offset #-1 ^\markup {Ob.I} \shape #'((0 . -0.5)(0 . 0)(0 . 0)(0 . 0)) Slur f''(
	fis)-. g2( d4)
	r2 r4 bes(
	b!) c4(~ c16 bes a g) \voiceTwo d'4(~_\markup {Klar.I} 
	d8 a) b4.( fis8) g4~
	g f!2\laissezVibrer s4
	s1*15
	% bar 363 - 364
	\oneVoice c8_\markup {Solo-Viol.} c4 c c c8(
	<bes g'>-.) q4 q8( <f' d'>)-. q4 q8
	s1*55
	% bar 420 - 426
	s2 s4 aes'-.-\tweak X-offset #-2 ^\markup {Fl} 
	g-. aes-. e-. f-.
	g-. g-. c,-. aes'-.
	g-. aes-. e-. f-.
	f-. f-. c'-. f,-.
	f-. f-. c'-. f,-.
	f-. s s2
}
cueVoiceHornIMvtII = \relative c {
	\transposition d
	s2.*29
	% bar 30 - 36
	\voiceOne s2 g''4(~_\markup {Fl.Klar.}
	g aes bes
	aes g) c(
	d ees f
	ees bes) bes\((
	ees) d c 
	bes a!\) r
	s2.*26
	% bar 63 - 68
	\oneVoice s2 ees'4(~^\markup {Fag.I} 
	ees fes ges
	fes ees) \voiceTwo fis,(_\markup {Fl.I}
	a2) g4(~_\markup {Viol.I}
	g a b
	a g) g\laissezVibrer
	s2.*31
	% bar 100 - 106
	e4(_\markup {Klar.I,Fag.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	s2.*4
	% bar 111 - 113
	s2 c'4(~_\markup {Fl.I, Klar.}
	c b a
	g f) f\laissezVibrer
}
cueVoiceHornIMvtIII = \relative c {
	\transposition e
	% bar 1 - 2
	\voiceTwo f'8(^\markup {Solo-Vlc.} c'16-.) c-. b8( bes16-.) bes-.
	aes8( g16-.) g-. f8( c16-.) c-.
	s2*18
	% bar 21 - 28
	aes'4(-\offset X-offset -3 _\markup {Fag.I} ges
	f g!)
	aes( a
	bes des8 c)
	\voiceOne des2^\markup {Hr.III}(
	des)(
	des)(
	des)
	s2*6
	% bar 35 - 38
	c8^\markup {Viol.I}-\tweak X-offset -3 ^\pizz bes des bes
	c bes des bes
	<bes f'> <g ees'> <bes f'> <g ees'>
	<f des' bes'> r r4
	s2*22
	% bar 61 - 64
	s4 fes'->~^\markup {Solo-Viol.}
	fes8\noBeam ees16-. ees,,-. fes''4->~
	fes8 ees16-. ees,,-. ees''8( d16-.) aes,-.
	d' ces,( ces') aes,( aes')[ f,(] f'8\noBeam)
	s2*15
	% bar 80 - 85
	s4 f(^\markup {Hr.III}
	aes8[ c)] f-.( ees-.)
	des([ bes]) f-.( a!-.)
	bes( des) f4(~
	f f,)
	bes2 r4
	s2.
	% bar 87
	\once \voiceTwo r4-\tweak X-offset #-1 _\markup {Fag.I} \oneVoice c,( des) s
	s1 s2*18
	% bar 107 - 109
	\voiceOne aes'8->^\markup {Ob.I} g16-. aes-. g8-> aes16-. g-.
	aes8-> g16-. aes-. g( f') ees-. d-.
	c8 r r4
	s2*8
	% bar 118 - 121
	\voiceOne r4 r8. f16-.^\markup {Solo-Viol.}
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	\tuplet 3/2 4 {f4( ees8) d( ees f)}
	\tuplet 3/2 4 {f4( ees8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} des-. bes-. g'-.
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	s2*44
	% bar 181 - 190
	\voiceTwo <bes,, bes'>2(^\markup {Hr.III IV}
	<f f'>4) r
	<bes bes'>2(
	<f f'>4) r
	bes'2(
	ees4) r
	c2(
	<f, f'>4) r
	<bes, bes'>2(
	d4) r
	s2*7
	% bar 198 - 201
	\oneVoice s4 s8 s16 f'-\tweak X-offset #-4 ^\markup {Hr.III}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	f4 c
	s2*28
	% bar 230 - 233
	\voiceOne r4^\markup {Hr.III} r8 c
	f-. r r4
	f,16^\markup {Fag.I} aes c aes ees8\noBeam ees'-.-\offset X-offset -1 ^\markup {Hr.III}
	aes-. r r4
	s2*20
	% bar 254
	\tuplet 3/2 8 {e,,16[(^\markup {Solo-Viol.} g c] g[ c e]) c[( e g] e[ g c])}
	\tuplet 3/2 8 {e,[( g c] g[ c e] c[ e g] e[ g c])}
	e2\trill\laissezVibrer
	s2*32 s2.*2 s1*2 s2*8
	% bar 301
	s4 s8 bes,^\markup {Hr.III}~
	bes2~
	bes4 r8. f16(
	bes d f d bes8)\noBeam c,~-\offset X-offset -1.5 _\markup {Hr.II}
	c s s4
	s2
}
cueVoiceHornIIMvtI = \relative c {
	\transposition e
	s1*22
	% bar 23 - 25
	r4^\pizz \stemUp <c, g' bes f'>4 e' des \stemNeutral
	bes g e bes(^\arco
	des1)
	s1*26
	% bar 52 - 56
	\voiceOne r2 c''8(^\markup {Solo-Viol.} d16 e f g aes bes
	c) f,( g aes bes c d e f) c( d e f g aes bes
	\oneVoice c) f,( g  aes bes c d e f) c d e f c des ees
	f4-. <aes,, c'>-. <des des'>-. <f d'>-.
	<ees ees'>-. \once \voiceOne r <e e'>-. \once \voiceOne r
	s1*32
	% bar 89 - 93
	s2 s4 f(_\markup {Hr.III}
	ees8) r f4( ees8) r des4(
	ees2.) f4(
	ees8) r f4( ees8) r des4(
	ees2 f4) s
	s1*44
	% bar 138 - 143
	\voiceOne aes,2(^\markup {Hr.III} ces
	ees d)
	f1~
	f~
	f
	ees4.(^\markup {Ob.I} des8 bes2)
	s1*33
	% bar 177 - 183
	r2 r4 f'(~^\markup {Hr.III}
	f8 c) des4.( a8) bes4~
	bes bes2 bes4~
	bes1~
	bes2( ees)~
	ees1~(
	ees2 aes,)
	s1*4
	% bar 188 - 189
	f'16(-\offset X-offset #-3.5 ^\markup { \column { \lower #1.5 "Solo-" "Viol."}} ces aes ces aes f aes f ces f ces aes ces aes f aes)
	f8 \voiceTwo r r4 s2
	s1*56
	% bar 246 - 247
	\oneVoice g''2(^\markup {Hr.I} f
	e ees4) r
	s1*10
	% bar 258 - 261
	\voiceTwo des4.->_\markup {Ob.I} ces8 aes4 r
	beses4. aes8 des,4 r_\tutti
	\oneVoice beses''2^(^\markup {Fl.I} ges)
	ges^( eeses)
	s1*16
	% bar 278 - 282
	c,,1(\startTrillSpan_\markup {Pk.}
	c)(
	c)(
	c)
	\voiceTwo c4\stopTrillSpan r r2
	s1
	% bar 284 - 286
	s2 s4 \voiceOne bes''-.-\tweak X-offset #-1 ^\markup {Hr.III}
	f'-. r8 bes,-. f'4-. r8 bes,-.
	f'4-. r s2
	s1*23
	% bar 310 - 312
	r2 \oneVoice \tuplet 3/2 4 {ees'8\rf-\tweak X-offset #-5 ^\markup { \column {\lower #1.5 "Solo-" "Viol." } } c ges ees c ges}
	\once \stemDown f4 r \tuplet 3/2 4 {f''8\rf d b f d b}
	\voiceTwo \tuplet 3/2 4 {f' d b} f r \tuplet 3/2 4 {f d b} f r
	s1*29
	% bar 342 - 347
	\voiceOne r2 r4-\tweak X-offset #-1 ^\markup {Ob.I} \oneVoice f''(
	fis)-. g2( d4)
	\voiceTwo r2 r4 bes(
	b!) c4(~ c16 bes a g) d'4(~_\markup {Klar.I} 
	d8 a) b4.( fis8) g4~
	g f!2\laissezVibrer s4
	s1*15
	% bar 363 - 364
	\oneVoice c8_\markup {Solo-Viol.} c4 c c c8(
	<bes g'>-.) q4 q8( <f' d'>) q4 q8
	s1*55
	% bar 420 - 426
	s2 s4 aes'-.-\tweak X-offset #-2 ^\markup {Fl} 
	g-. aes-. e-. f-.
	g-. g-. c,-. aes'-.
	g-. aes-. e-. f-.
	f-. f-. c'-. f,-.
	f-. f-. c'-. f,-.
	f-. s s2
}
cueVoiceHornIIMvtII = \relative c {
	\transposition d
	s2.*29
	% bar 30 - 36
	\voiceOne s2 g''4(~_\markup {Fl.Klar.}
	g aes bes
	aes g) c(
	d ees f
	ees bes) bes\((
	ees) d c 
	bes a!\) r
	s2.*26
	% bar 63 - 68
	\oneVoice s2 ees'4(~-\tweak X-offset #-1 ^\markup {Fag.I} 
	ees fes ges
	fes ees) \voiceTwo fis,(_\markup {Fl.I}
	a2) g4(~_\markup {Viol.I}
	g a b
	a g) g\laissezVibrer
	s2.*31
	% bar 100 - 106
	e4(_\markup {Klar.I,Fag.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	s2.*4
	% bar 111 - 113
	s2 c'4(~_\markup {Fl.I, Klar.}
	c b a
	g f) f\laissezVibrer
}
cueVoiceHornIIMvtIII = \relative c {
	\transposition e
	% bar 1 - 2
	\voiceTwo f'8(^\markup {Solo-Vlc.} c'16-.) c-. b8( bes16-.) bes-.
	aes8( g16-.) g-. f8( c16-.) c-.
	s2*18
	% bar 21 - 28
	aes'4(-\offset X-offset #-4 _\markup {Fag.I} ges
	f g!)
	aes( a
	bes des8 c)
	\voiceOne des2^\markup {Hr.III}~
	des~
	des~
	des
	s2*6
	% bar 35 - 38
	c8^\markup {Viol.I}-\tweak X-offset -3 ^\pizz bes des bes
	c bes des bes
	<bes f'> <g ees'> <bes f'> <g ees'>
	<f des' bes'> r r4
	s2*22
	% bar 61 - 64
	s4 fes'->~-\offset X-offset #-5 ^\markup {\column { \lower #1.5 "Solo-" "Viol." } }
	fes8\noBeam ees16-. ees,,-. fes''4->~
	fes8 ees16-. ees,,-. ees''8( d16-.) aes,-.
	d' ces,( ces') aes,( aes')[ f,(] f'8\noBeam)
	s2*15
	% bar 80 - 85
	s4 f(^\markup {Hr.III}
	aes8[ c)] f-.( ees-.)
	des[( bes]) f-.( a!-.)
	bes( des) f4(~
	f f,)
	bes2 r4
	s2.
	% bar 87
	\once \voiceTwo r4-\tweak X-offset #-1 _\markup {Fag.I} \oneVoice c,( des) s
	s1 s2*18
	% bar 107 - 109
	\voiceOne aes'8->^\markup {Ob.I} g16-. aes-. g8-> aes16-. g-.
	aes8-> g16-. aes-. g( f') ees-. d-.
	c8 r r4
	s2*8
	% bar 118 - 121
	r4 r8. \oneVoice f16-.^\markup {Solo-Viol.}
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	\tuplet 3/2 4 {f4( ees8) d( ees f)}
	\tuplet 3/2 4 {f4( ees8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} des-. bes-. g'-.
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	f8-.[ f16\rest f-.] f8-.[ f16\rest f-.] 
	s2*44
	% bar 181 - 190
	\voiceTwo <bes,, bes'>2(^\markup {Hr.III IV}
	<f f'>4) r
	<bes bes'>2(
	<f f'>4) r
	bes'2(
	ees4) r
	c2(
	<f, f'>4) r
	<bes, bes'>2(
	d4) r
	s2*7
	% bar 198 - 201
	s4 s8 s16 \oneVoice f'-\tweak X-offset #-4 ^\markup {Hr.III}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	\tuplet 3/2 4 {f4( ees8) des( ees f)}
	f4 c
	s2*28
	% bar 230 - 233
	\voiceOne r4^\markup {Hr.III} r8 c
	f-. r r4
	f,16^\markup {Fag.I} aes c aes ees8\noBeam \oneVoice ees'-.-\tweak X-offset #-1 ^\markup {Hr.III}
	aes-. \voiceOne r r4
	s2*20
	% bar 254 - 256
	\tupletDown \tuplet 3/2 8 {e,,16[(^\markup {Solo-Viol.} g c] g[ c e]) c[( e g] e[ g c])}
	\tuplet 3/2 8 {e,[( g c] g[ c e] c[ e g] e[ g c])} \tupletNeutral
	e2\trill
	s2*24
	% bar 281 - 289
	s4 c,(^\markup {Hr.I} 
	b bes
	a) d(~
	d8[ bes]) d( e)
	f([ c)] d( c)
	bes( g) d'4(~
	d8 bes) d4(~
	d g,)
	g2 r4
	s2. s1*2 s2*8
	% bar 301 - 304
	s4 s8 bes^\markup {Hr.III}~
	bes2~
	bes4 r8. f16(
	bes d f d bes8)\noBeam s8
	s2*25
	% bar 330 - 332
	r8^\markup {Hr.I} c4 c8~
	c c4 c8~
	c s8 s4
}
%###############################################################################
%#            C U E   V O I C E   F O R   H O R N   I I I   &   I V            #
%###############################################################################
cueVoiceHornIIIMvtI = \relative c {
	\transposition d
	s1*22
	% bar 23 - 26
	\voiceTwo r4 <d, a' c g'>^\pizz fis' ees
	c a fis c^\arco(
	ees1\espressivo
	d2) s
	s1*25
	% bar 52 - 56
	\voiceOne r2 d''8(^\markup {Solo-Viol.} e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	\oneVoice d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. \once \voiceOne r <fis fis'>-. \once \voiceOne r
	s1*28
	% bar 85 - 88
	\voiceOne s2 s4 s8 aes~_\markup {Viol.I}
	aes4-\tweak X-offset #-1 \sf~ \tuplet 3/2 4 {aes8 fis-. g-. e-. f-. c-. des-. a!-. bes-.}
	g'4-\tweak X-offset #-1 \sf~ \tuplet 3/2 4 {g8 e!-. f-. b,!-. c-. g-. aes-. e!-. f-.}
	\tuplet 3/2 4 {d-. ees-. fis-. g-. a!-. bes-. d-. ees-. fis-. g-. a!-. bes-.}
	s1*43
	% bar 132 - 137
	r4^\markup {Fag.I} d,-. r ees-.
	r e-. c-.-\tweak X-offset #-1 ^\sf r
	r d-. r ees-.
	r e!-. g,-.-\tweak X-offset #-1 ^\sf r
	\oneVoice r f-. r f-.
	r f-. g-.-\tweak X-offset #-1 ^\sf r
	s1*25
	% bar 163 - 166
	\voiceOne s2 s4 s8 fis'(^\markup {Solo-Vlc.}
	g4 f! ees d
	c) r r d(
	c) r s2
	s1*21
	% bar 188 - 189
	g'16(-\offset X-offset -4 ^\markup {\column { \lower #1.5 "Solo-" "Viol." }} des bes des bes g bes g des g des bes des bes g bes
	g8) \voiceTwo r r4 s2
	s1*47
	% bar 237 - 241
	b'2(^\markup {Viol.I} cis~
	cis4 des b cis
	a b! gis a
	fis) r r2
	\oneVoice \shape #'((0 . 0)(0 . 0)(0 . 0)(0 . 0.8)) Slur cis'16_(^\markup {Solo-Vlc} a fis gis a fis dis e fis dis b ais a fis dis bis)
	s1*12
	% bar 254 - 257
	\voiceOne s2 s4 s8 g'''-.^\markup {Viol.I}
	aes-. bes-. ces-. bes-. ces-. des-. ees-. ees,-. 
	fes-. ges-. aes-. g!-. aes-.[ bes-. ces-.] ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	s1*20
	% bar 278 - 284
	\voiceTwo d,,1\startTrillSpan~^\markup {Pk.}
	d~
	d~
	d
	d4\stopTrillSpan r r16 d'(^\markup {Solo-Viol.} e fis g a b c)
	\voiceOne d2 r16 g,( a bes c d e fis)
	g d e fis g a bes c d g, a bes s4
	s1*25
	% bar 310 - 312
	\tupletUp \oneVoice r2-\tweak X-offset #-4 ^\markup {Solo-Viol.} \tuplet 3/2 4 {f'8\rf d aes f d aes}
	\voiceTwo g!4 r \oneVoice \tuplet 3/2 4 {g''8\rf e cis g e! cis} 
	\tuplet 3/2 4 {g' e cis} \voiceTwo g r \tuplet 3/2 4 {g e cis} g r \tupletNeutral
	s1*20
	% bar 333 - 336
	\voiceOne s2 s4 s8 dis'''(-\tweak X-offset #-8 ^\markup {Solo-Viol.}
	e4 d! c b
	a) r r b(
	a) r s2
	s1*10
	% bar 347 - 348
	s2 s4 e(~^\markup {Hr.I}
	e8 f) e4.( d8) s4
	s1*14
	% bar 363 - 364
	\voiceTwo d,8^\markup {Solo-Viol.} d4 d d d8(
	<c a'>)-. q4 q8( <g' e'>)-. q4 q8
	s1*55
	% bar 420 - 426
	\voiceOne s2 s4 bes'-.-\offset X-offset #-4 ^\markup {Fl.}
	a-. bes-. fis-. g-.
	a-. a-. d,-. bes'-.
	a-. bes-. fis-. g-.
	g-. g-. d'-. g,-.
	g-. g-. d'-. g,-.
	g-. s s2
}
cueVoiceHornIIIMvtII = \relative c {
	\transposition f
	% bar 1 - 2
	\voiceTwo e'4(_\markup {Hr.I} a2)_\fermata
	b4( e2)_\fermata
	s2.*22
	% bar 25 - 30
	s2 cis,8(^\markup {Solo-Vlc.} fis
	d[ b]) e( a b a)
	a8.( f16) fis8.( b,16) b8.( e16)
	\oneVoice e8( cis a e) b'4
	e8( cis a e) b'4
	a4. \once \voiceTwo r8 s4
	s2.*75
	% bar 106 - 113
	\voiceTwo d4(~^\markup {Solo-Vlc.} \tupletUp \tuplet 3/2 4 {d8 cis d~ d cis d}
	\tuplet 3/2 4 {e cis d~} d) d4 cis8(
	d4)(~ \tuplet 3/2 4 {d8 cis d)} bes' f \tupletNeutral
	d bes f4 d
	e8( a b! e)~ e4~
	e e,8([ e')] a,( a')
	b4( e2)~
	e2.
}
cueVoiceHornIIIMvtIII = \relative c {
	\transposition d
	% bar 1 - 2
	\voiceTwo g''8(^\markup {Solo-Vlc.} d'16-.) d-. cis8( c16-.) c-.
	bes8( a16-.) a-. g8( d16-.) d-.
	s2*18
	% bar 21 - 24
	\voiceOne bes'4(^\markup {Fag.I} aes
	g a!)
	bes( b
	c ees8 d)
	s2*10
	% bar 35 - 38
	d8^\markup {Viol.I pizz.} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> r r4
	s2*22
	% bar 61 - 64
	s4 ges'->~^\markup {Solo-Viol.}
	ges8\noBeam f16-. f,,-. ges''4->~
	ges8 f16-. f,,-. f''8( e16-.) bes,-.
	e'-. des,( des') bes,( bes') g,( g'8\noBeam)
	s2*8
	% bar 72 - 76
	s4 g~^\markup {Solo-Vlc.}
	g ees'8-.( d-.)
	c([ g)] g'-.( f-.)
	ees( d c) g(
	bes a) s4
	s2*7 s2.*2 s1*2 s2*16
	% bar 105 - 110
	g8->^\markup {Fag.I} f16-. f-. bes8-> f16-. f-.
	ges8-> f16-. f-. bes-. d-. f-. d-.
	bes8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	\oneVoice d'8->_\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	s2*7
	% bar 118 - 121
	\voiceOne s4 s8. g16-.^\markup {Solo-Viol.} 
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest q-.]
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	s2*12
	% bar 134 - 136
	r8 ees-.^\markup {Viol.I} c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-. s
	s2*37
	% bar 174 - 180
	s4 s8 <bes,, g'>8(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g[ bes]) <c aes'>( ees
	<bes g'> ees bes g) ees([ <ees' g>)] <d bes'>( <c aes'>
	<b! g'>8)\noBeam <b d>8. <aes f'>16( <g ees'> <f d'>)
	<d b'>16( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e'! g e'! g e'!)}
	s2*47
	% bar 228 - 230
	\oneVoice g,8(^\markup {Solo-Viol.} d'16-.) d-. cis8-.( c16-.) c-.
	bes8( a16-.) a-. g8( d16-. d-.)
	\voiceOne ees8( d16-.) d-. g8 s
	s2*23
	% bar 254 - 257
	\voiceTwo \tupletUp \tuplet 3/2 8 {fis,,16([^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\voiceOne \tupletDown \tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])} \tupletNeutral
	fis2\trill\laissezVibrer
	d,,,\trill-\tweak X-offset #-3 ^\markup {Pk.}
	s2*23
	% bar 281 - 285
	s4 d''(^\markup {Hr.I}
	cis c
	b) e(~
	e8[ c]) e(-. fis-.)
	g r r4
	s2*3 s2.*2
	% bar 291 - 293
	r4^\markup {Fl.} b,( c cis
	d e eis fis)
	gis8-. r r4
	s2*3
	% bar 297 - 288
	\voiceTwo g,8(_\markup {Klar.I} d' cis c
	b a g) s
}
cueVoiceHornIVMvtI = \relative c {
	\transposition d
	s1*22
	% bar 23 - 26
	\voiceTwo r4 <d, a' c g'>^\pizz fis' ees
	c a fis c^\arco(
	ees1\espressivo
	d2) s
	s1*25
	% bar 52 - 56
	\voiceOne r2 d''8(^\markup {Solo-Viol.} e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	\oneVoice d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. \once \voiceOne r <fis fis'>-. \once \voiceOne r
	s1*28
	% bar 85 - 88
	\voiceOne s2 s4 s8 aes~_\markup {Viol.I}
	aes4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {aes8 fis-. g-. e-. f-. c-. des-. a!-. bes-.}
	g'4-\tweak X-offset #-1 ^\sf~ \tuplet 3/2 4 {g8 e!-. f-. b,!-. c-. g-. aes-. e!-. f-.}
	\tuplet 3/2 4 {d-. ees-. fis-. g-. a!-. bes-. d-. ees-. fis-. g-. a!-. bes-.}
	s1*43
	% bar 132 - 137
	r4^\markup {Fag.I} d,-. r ees-.
	r e-. c-.\sf r
	r d-. r ees-.
	r e!-. \oneVoice g,-.^\sf r
	r f-. r f-.
	r f-. g-.^\sf r
	s1*25
	% bar 163 - 166
	\voiceOne s2 s4 s8 fis'(-\offset X-offset -6 ^\markup {Solo-Vlc.}
	g4 f! ees d
	c) r r d(
	c) r s2
	s1*21
	% bar 189 - 190
	\voiceTwo g'16(^\markup {Solo-Viol.} des bes des bes g bes g des g des bes des bes g bes
	g8) r r4 s2
	s1*47
	% bar 237 - 241
	b'2(^\markup {Viol.I} cis~
	cis4 des b cis
	a b! gis a
	fis) r r2
	\oneVoice cis'16_(^\markup {Solo-Vlc} a fis gis a fis dis e fis dis b ais a fis dis bis)
	s1*12
	% bar 254 - 257
	\voiceOne s2 s4 s8 g'''-. -\tweak X-offset #-5 ^\markup {Viol.I}
	aes-. bes-. ces-. bes-. ces-. des-. ees-. ees,-. 
	fes-. ges-. aes-. g!-. aes-. bes-. ces-.\noBeam ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	s1*20
	% bar 278 - 284
	\voiceTwo d,,1\startTrillSpan~^\markup {Pk.}
	d~
	d~
	d
	\voiceOne d4\stopTrillSpan r r16 d'(^\markup {Solo-Viol.} e fis g a b c)
	d2 r16 g,( a bes c d e fis)
	g d e fis g a bes c d g, a bes s4
	s1*25
	% bar 310 - 312
	r2-\offset X-offset -1.5 ^\markup {\column {\lower #1.5 "Solo-" "Viol."}} \oneVoice \tupletUp \tuplet 3/2 4 {f'8\rf d aes f d aes}
	g4 r \tuplet 3/2 4 {g''8\rf e cis g e! cis} 
	\tuplet 3/2 4 {g' e cis} \voiceTwo g r \tuplet 3/2 4 {g e cis} g r \tupletNeutral
	s1*20
	% bar 333 - 336
	\oneVoice s2 s4 s8 dis'''(-\tweak X-offset #-5.5 ^\markup {\column {\lower #1.5 "Solo-" "Viol."}}
	e4 d! c b
	a) r r b(
	a) r s2
	s1*10
	% bar 347 - 348
	\voiceOne s2 s4 e(~-\offset X-offset -3.5 ^\markup {Hr.I}
	e8 f) e4.( d8) s4
	s1*14
	% bar 363 - 364
	\voiceTwo d,8^\markup {Solo-Viol.} d4 d d d8(
	<c a'>)-. q4 q8( <g' e'>)-. q4 q8
	s1*55
	% bar 420 - 426
	\voiceOne s2 s4 bes'-.-\offset X-offset -4 ^\markup {Fl.}
	a-. bes-. fis-. g-.
	a-. a-. d,-. bes'-.
	a-. bes-. fis-. g-.
	g-. g-. d'-. g,-.
	g-. g-. d'-. g,-.
	g-. s s2
}
cueVoiceHornIVMvtII = \relative c {
	\transposition f
	% bar 1 - 2
	\voiceTwo e'4(-\offset X-offset -4 _\markup {Hr.I} a2)_\fermata
	b4( e2)_\fermata
	s2.*22
	% bar 25 - 30
	s2 cis,8(^\markup {Solo-Vlc.} fis
	d[ b]) e( a b a)
	a8.( f16) fis8.( b,16) b8.( e16)
	e8( cis a e) b'4
	e8( cis a e) b'4
	a4. r8 s4
	s2.*16
	% bar 47 - 50
	s2 d8(^\markup {Solo-Viol.} aes'
	\tuplet 3/2 4 {c bes a! bes) g4( aes8) f4(}
	\tuplet 3/2 4 {g8) ees4( f8) d4( ees8) ees( a!}
	\tuplet 3/2 4 {c) ees,( g c) ees,( g} c16) e,( g c)
	s2.*55
	% bar 106 - 113
	d,4(~^\markup {Solo-Vlc.} \tupletUp \tuplet 3/2 4 {d8 cis d~ d cis d}
	\tuplet 3/2 4 {e cis d~} d) d4 cis8(
	d4)(~ \tuplet 3/2 4 {d8 cis d)} \tupletNeutral bes' f
	d bes f4 d
	e8( a b! e)~ e4~
	e e,8([ e')] a,( a')
	b4( e2)~
	e2.~
}
cueVoiceHornIVMvtIII = \relative c {
	\transposition d
	% bar 1 - 2
	\voiceTwo g''8(^\markup {Solo-Vlc.} d'16-.) d-. cis8( c16-.) c-.
	bes8( a16-.) a-. g8( d16-.) d-.
	s2*18
	% bar 21 - 24
	\voiceOne bes'4(^\markup {Fag.I} aes
	g a!)
	bes( b
	c ees8 d)
	s2*10
	% bar 35 - 38
	d8^\markup {Viol.I pizz.} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> r r4
	s2*22
	% bar 61 - 64
	s4 ges'->~^\markup {Solo-Viol.}
	ges8\noBeam f16-. f,,-. ges''4->~
	ges8 f16-. f,,-. f''8( e16-.) bes,-.
	e'-. des,( des') bes,( bes') g,( g'8\noBeam)
	s2*12
	% bar 77 - 79
	r4 f'(^\markup {Hr.III}
	e ees
	d) s
	s2*5 s2.*2 s1*2 s2*16
	% bar 105 - 110
	g,8->^\markup {Fag.I} f16-. f-. bes8-> f16-. f-.
	ges8-> f16-. f-. bes-. d-. f-. d-.
	bes8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	\oneVoice d'8->_\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	s2*7
	% bar 118 - 121
	\voiceOne s4 s8. g16-.-\tweak X-offset #-7 ^\markup {Solo-Viol.} 
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest q-.]
	\tupletDown \tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} \tupletNeutral r4
	s2*12
	% bar 134 - 136
	r8 ees-.-\offset X-offset -5 ^\markup {Viol.I} c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-. s
	s2*37
	% bar 174 - 180
	s4 s8 <bes,, g'>8(-\offset X-offset -3 ^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g[ bes]) <c aes'>( ees
	<bes g'> ees bes g) ees([ <ees' g>)] <d bes'>( <c aes'>
	<b! g'>8)\noBeam <b d>8. <aes f'>16( <g ees'> <f d'>)
	<d b'>16( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e'! g e'! g e'!)}
	s2*47
	% bar 228 - 230
	\oneVoice g,8(^\markup {Solo-Viol.} d'16-.) d-. cis8-.( c16-.) c-.
	bes8( a16-.) a-. g8( d16-. d-.)
	\voiceOne ees8( d16-.) d-. g8 s
	s2*9
	% bar 240 - 241
	f8(^\markup {Hr.III} ees16 d) f4~
	f8( g16 aes) g8( f)
	s2*12
	% bar 254 - 257
	\tupletDown \tuplet 3/2 8 {fis,,16([^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])} \tupletNeutral
	fis2\trill\laissezVibrer
	d,,,\trill-\tweak X-offset #-3 ^\markup {Pk.}
	s2*23
	% bar 281 - 285
	s4 d''(^\markup {Hr.I}
	cis c
	b) e(~
	e8[ c)] e(-. fis-.)
	g r r4
	s2*3 s2.*2
	% bar 291 - 293
	r4^\markup {Fl.} b,( c cis
	d e eis fis)
	gis8-. r r4
	s2*3
	% bar 297 - 298
	\voiceTwo g,8(_\markup {Klar.I} d' cis c
	b a g) s
}
%###############################################################################
%#                  C U E   V O I C E   F O R   T R U M P E T                  #
%###############################################################################
cueVoiceTrumpetIMvtI = \relative c {
	\transposition d
	s1*22
	% bar 23 - 30
	\voiceTwo r4 <d, a' c g'>_\pizz fis' ees 
	c a fis c(_\arco
	ees1
	d2) r4 b'''(^\markup {Klar.I}
	a) b( fis) g(
	a2 d,4) \voiceOne b'(^\markup {Ob.I}
	a) b( fis) g(
	g'2 d4) r
	s1*21
	% bar 52 - 56
	\oneVoice r2^\markup {Solo-Viol.} \stemDown d,8( e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	\stemNeutral d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. \once \voiceOne r <fis fis'>-. \once \voiceOne r
	s1*28
	% bar 85 - 88
	\voiceOne s2 s4 s8 aes~-\tweak X-offset #-4 ^\markup {Viol.I}
	aes4^\sf~ \tuplet 3/2 4 {aes8 fis-! g-! e-! f-! c-! des-! a!-! bes-!}
	g'4^\sf~ \tuplet 3/2 4 {g8 e-! f-! b,-! c-! g-! aes-! e-! f-!}
	\tuplet 3/2 4 {d-! ees-! fis-! g-! a!-! bes-! d-! ees-! fis-! g-! a!-! bes-!}
	s1*54
	% bar 143 - 145
	f4.(^\markup {Ob.I} ees8 c2)
	r4 r8 f( ees4. c8
	f4. ees8 c2)
	s1*31
	% bar 177 - 184
	r2 r4^\markup {Ob.I} g'4(~
	g8 d) ees4.( b8) c4~
	c c2 bes4(~
	bes1~
	bes2 a)
	aes1(~
	aes
	g2) r
	s1*11
	% bar 196 - 198
	r4-\offset X-offset -1 ^\markup {Viol.I} r8 \ottava #1 b'( c d ees d)
	c8 c4 c c c8~
	c4. a8( bes fis g bes) \ottava #0
	s1*43
	% bar 242 - 244
	e,2(^\markup {Klar.I} d
	des c4) r8 dis-.^\markup {Ob.I}
	e-. fis-. g-. fis,^\markup {Klar.I}\noBeam g-. a-. bes-. r
	s1*9
	% bar 254 - 257
	\oneVoice s2 s4 s8 g'-!-\tweak X-offset #-4.5 ^\markup {Viol.I}
	aes-! bes-! ces-! bes-! ces-! des-! ees-! ees,-!
	fes-. ges-. aes-. g-. aes-.[ bes-. ces-.] ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	s1*26
	% bar 284 - 285
	\voiceTwo r2 r4 c,-.^\markup {Hr.III.IV} 
	g'-. r8 c,-. g'4-. r8 c,-.
	s1*31
	% bar 317 - 321
	\voiceOne b''4.(^\markup {Fl.I} a8 d,2)
	r4 r8 b'( a4. d,8
	b'4. a8 e4. b'8
	a4. e8 a4. fis8
	d4) r r2
	s1*22
	% bar 344 - 349
	s2 s4 c(^\markup {Ob.}
	cis) d4(~ d16 c b a) e'4(~^\fp_\markup {Klar.I}
	e8 b) c4.( gis8) a4~
	a g!2 e'4(~^\markup {Ob.I}
	e8 b) c4.( gis8) a4~
	a-. r r2
	s1*16
	% bar 366 - 368
	\oneVoice r4 r8 gis'(-\offset X-offset -4 ^\markup  {Viol.I} a b c b)
	a8 a4 a a a8~
	a4~ \tuplet 3/2 4 {a8 fis-. g-. dis-. e-. b-. g-. b-. e-.}
	s1*51
	% bar 420
	s2 s4 bes'-.^\markup {Fl.}
	a-. bes-. fis-. g-. 
	a-. a-. d,-. bes'-. 
	a-. bes-. fis-. g-. 
	g-. g-. d'-. g,-. 
	g-. g-. d'-. g,-. 
	g-. s4 s2
}
cueVoiceTrumpetIMvtII = \relative c {
	\transposition d
	% bar 1 - 2
	g'4(-\tweak X-offset #-3.5 _\markup {Hr.I} c2_\fermata)
	d4( g2)_\fermata
	s2.*27
	% bar 30 - 38
	\voiceOne s2 g4(~_\markup {Klar.I}
	g aes bes
	aes g) c(
	d ees f
	ees bes) g'(~^\markup {Ob.I}
	g f ees 
	d c) f(
	ees d c
	a bes) r
	s2.*24
	% bar 63 - 68
	\voiceTwo s2 ees,4(~-\tweak X-offset #-4.5 _\markup {Fag.I}
	ees fes ges
	fes ees) fis(_\markup {Fl.I}
	a!2) g4(~_\markup {Viol.I}
	g a b 
	a g) g
	s2.*31
	% bar 100 - 106
	e4(-\tweak X-offset #-3 _\markup {Klar.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	s2.*4
	% bar 111 - 113
	s2 c'4(~^\markup {Klar.I}
	c b a
	g f) f
}
cueVoiceTrumpetIMvtIII = \relative c {
	\transposition d
	% bar 1 - 2
	g'8_(^\markup {Solo-Vlc.} d'16-.) d-. cis8_( c16-.) c-.
	bes8_( a16-.) a-. g8_( d16-.) d-.
	s2*18
	% bar 21 - 28
	bes'4(-\offset X-offset -3 _\markup {Fag.I} aes
	g a!)
	bes( b
	c ees8 d)
	ees2_\markup {Hr.III}(
	ees)(
	ees)(
	ees)
	s2*6
	% bar 35 - 38
	\voiceTwo d8^\markup {Viol.I pizz} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> e'\rest e4\rest
	s2*38
	% bar 77 - 85
	\oneVoice s4 f(^\markup {Hr.III}
	e ees
	d g
	ees) g,(
	bes8[ d]) g(-. f-.)
	ees([ c]) g(-. b!-.)
	c( ees) g4(~
	g g,)
	c2 r4
	s2. s1*2 s2*18
	% bar 107 - 110
	\voiceOne bes'8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	\oneVoice d'8->-\tweak X-offset #-3.5 ^\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	s2*7
	% bar 118 - 121
	\voiceOne r4-\tweak X-offset #-1.5 ^\markup {Solo-Viol.} r8. g16-.
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest <ees g>-.] 
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} ees-. c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	s2*37
	% bar 174 - 180
	s4 s8 <bes,, g'>(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g bes) <c aes'>([ ees]
	<bes g'> ees bes g) ees( <ees' g>) <d bes'>([ <c aes'>]
	<b! g'>8)\noBeam <b d>8. <aes f'>16([ <g ees'> <f d'>)]
	<d b'>( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e' g e'! g e'!)}
	s2*57
	% bar 238 - 243
	d,8(^\markup {Klar.I} c16 d) c4
	ees16( d c d) c4\laissezVibrer
	\voiceTwo f,8(^\markup {Hr.III} ees16 d) f4~
	f8( g16 aes) g8( f)
	ees2~
	ees
	s2*10
	% bar 254 - 257
	\voiceOne \tupletDown \tuplet 3/2 8 {fis,16[(^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])} \tupletNeutral
	fis2\trill\laissezVibrer
	d,,,2\trill^\markup {Pk.}
	s2*23
	% bar 281 - 285
	\voiceTwo s4 d'-\tweak X-offset #-4 _\markup {Hr.I}(
	cis c
	b) e(~
	e8[ c]) e-.( fis-.)
	g r r4
	s2*3 s2.*2
	% bar 291 - 293
	\voiceOne r4^\markup {Fl.I} b( c cis
	d e eis fis)
	gis8 r r4
	s2*3
	% bar 297 - 298
	\shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . -1)) Slur g,8(_\markup {Klar.I} d' cis c
	b[ a g]) s
	s2*16
	% bar 315 - 323
	s4 s8 g'(^\markup {Klar.I}
	fis e c d)
	d( dis) e4(~
	e8 eis) fis4~
	fis8 r r g,(
	fis'4 e)
	g,4 r8 g(^\markup {Ob.I}
	fis'4 e8) r
	fis4( e8) r
	s2*8
	% bar 332 - 335
	r8^\markup {Ob.I} d4 d8~
	d d4 d8~
	d d4 d8~
	d d4 d8
}
cueVoiceTrumpetIIMvtI = \relative c {
	\transposition d
	s1*22
	% bar 23 - 30
	\voiceOne r4 <d, a' c g'>^\pizz fis' ees 
	c a fis c(^\arco
	ees1
	d2) r4 b'''(^\markup {Klar.I}
	a) b( fis) g(
	a2 d,4) b'(^\markup {Ob.I}
	a) b( fis) g(
	g'2 d4) r
	s1*21
	% bar 52 - 56
	r2^\markup {Solo-Viol.} d,8( e16 fis g a bes c
	d) g,( a bes c d e fis g) d( e fis g a bes c
	\oneVoice d) g,( a bes c d e fis g) d e fis g d ees f
	g4-. <bes,, d'>-. <ees ees'>-. <g e'>-.
	<f f'>-. \once \voiceOne r <fis fis'>-. \once \voiceOne r
	s1*28
	% bar 85 - 88
	s2 s4 s8 aes~-\tweak X-offset #-5 ^\markup {Viol.I}
	aes4^\sf~ \tuplet 3/2 4 {aes8 fis-! g-! e-! f-! c-! des-! a!-! bes-!}
	g'4^\sf~ \tuplet 3/2 4 {g8 e-! f-! b,-! c-! g-! aes-! e-! f-!}
	\tuplet 3/2 4 {d-! ees-! fis-! g-! a!-! bes-! d-! ees-! fis-! g-! a!-! bes-!}
	s1*54
	% bar 143 - 146
	\voiceOne f4.(^\markup {Ob.I} ees8 c2)
	r4 r8 f( ees4. c8
	f4. ees8 c2)
	s1*31
	% bar 177 - 184
	r2 r4-\offset X-offset -2 ^\markup {Ob.I} g'4(~
	g8 d) ees4.( b8) c4~
	c c2 bes4(~
	bes1~
	bes2 a)
	aes1(~
	aes
	g2) r
	s1*11
	% bar 196 - 198
	r4-\offset X-offset -2 ^\markup {Viol.I} r8 \ottava #1 b'^( c d ees d)
	c8 c4 c c c8^(
	c4.) a8^( bes fis g bes) \ottava #0
	s1*43
	% bar 242 - 244
	e,2(-\tweak X-offset #1 ^\markup {Klar.I} d
	des c4) r8 dis-.^\markup {Ob.I}
	e-. fis-. g-. fis,^\markup {Klar.I}\noBeam g-. a-. bes-. r
	s1*9
	% bar 254 - 257
	\oneVoice s2 s4 s8 g'-!-\tweak X-offset #-4.5 ^\markup {Viol.I}
	aes-! bes-! ces-! bes-! ces-! des-! ees-! ees,-!
	fes-. ges-. aes-. g-. aes-.[ bes-. ces-.] ces,16 ces
	des8:16 ees: fes: ees: des: ces: beses: aes:
	s1*26
	% bar 284 - 285
	r2 r4 c,-.^\markup {Hr.III.IV} 
	g'-. r8 c,-. g'4-. r8 c,-.
	s1*31
	% bar 317 - 321
	b''4.(^\markup {Fl.I} a8 d,2)
	r4 r8 b'( a4. d,8
	b'4. a8 e4. b'8
	a4. e8 a4. fis8
	d4) r r2
	s1*22
	% bar 344 - 349
	\voiceOne s2 s4 c(^\markup {Ob.}
	cis) d4(~ d16 c b a) e'4(~^\fp_\markup {Klar.I}
	e8 b) c4.( gis8) a4~
	a g!2 e'4(~^\markup {Ob.I}
	e8 b) c4.( gis8) a4~
	a-. r r2
	s1*16
	% bar 366 - 368
	\oneVoice r4 r8 gis'(-\tweak X-offset #-5 ^\markup  {Viol.I} a b c b)
	a8 a4 a a a8~
	a4~ \tuplet 3/2 4 {a8 fis-. g-. \voiceOne dis-. e-. b-. g-. b-. e-.}
	s1*51
	% bar 420 - 426
	\oneVoice s2 s4 bes'-.^\markup {Fl.}
	a-. bes-. fis-. g-. 
	a-. a-. d,-. bes'-. 
	a-. bes-. fis-. g-. 
	g-. g-. d'-. g,-. 
	g-. g-. d'-. g,-. 
	g-. s4 s2
}
cueVoiceTrumpetIIMvtII = \relative c {
	\transposition d
	% bar 1 - 2
	g'4(-\tweak X-offset #-4 _\markup {Hr.I} c2_\fermata)
	d4( g2)_\fermata
	s2.*27
	% bar 30 - 38
	\voiceOne s2 g4(~_\markup {Klar.I}
	g aes bes
	aes g) c(
	d ees f
	ees bes) g'(~^\markup {Ob.I}
	g f ees 
	d c) f(
	ees d c
	a bes) r
	s2.*24
	% bar 63 - 68
	s2 ees,4(~^\markup {Fag.I}
	ees fes ges
	fes ees) fis(^\markup {Fl.I}
	a!2) g4(~^\markup {Viol.I}
	g a b 
	a g) g
	s2.*31
	% bar 100 - 106
	\shape #'((0 . 2.5)(0 . 0)(0 . 0)(0 . 2.5)) Slur e4(^\markup {Klar.I} f g
	f e) a(
	b c d
	c b) c(
	bes2.)~
	bes4 e,8( g c, f)~
	f4. r8 r4
	s2.*4
	% bar 111 - 113
	s2 c'4(~^\markup {Klar.I}
	c bes a
	g f) f
}
cueVoiceTrumpetIIMvtIII = \relative c {
	\transposition d
	% bar 1 - 2
	g'8(^\markup {Solo-Vlc.} d'16-.) d-. cis8( c16-.) c-.
	bes8( a16-.) a-. g8( d16-.) d-.
	s2*18
	% bar 21 - 28
	bes'4(^\markup {Fag.I} aes
	g a!)
	bes( b
	c ees8 d)
	ees2^\markup {Hr.III}(
	ees)(
	ees)(
	ees)
	s2*6
	% bar 35 - 38
	d8^\markup {Viol.I pizz} c ees c
	d c ees c
	<c g'> <a f'> <c g'> <a f'>
	<g ees' c'> r r4
	s2*38
	% bar 77 - 85
	s4 f'(^\markup {Hr.III}
	e ees
	d g
	ees) \voiceOne g,(
	bes8[ d)] g(-. f-.)
	ees([ c)] g(-. b!-.)
	c( ees) g4(~
	g g,)
	c2 \once \voiceTwo r4
	s2. s1*2 s2*18
	% bar 107 - 110
	bes'8->^\markup {Ob.I} a16-. bes-. a8-> bes16-. a-.
	bes8-> a16-. bes-. a( g') f-. e-.
	\oneVoice d'8->-\tweak X-offset #-3.2 ^\markup {Fl.I} c16-. d-. c8-> d16-. c-.
	d8-> c16-. d-. c( ees) c-. a-.
	s2*7
	% bar 118 - 121
	r4-\tweak X-offset #-1.5 ^\markup {Solo-Viol.} r8. g16-.
	g8-.[ g16\rest <ees g>-.] q8-.[ g16\rest <ees g>-.] 
	\tuplet 3/2 4 {<ees g>4( <d f>8) <c ees>( <d f> <ees g>)}
	\tuplet 3/2 4 {<ees g>4( <des f>8)} r4
	s2*12
	% bar 134 - 136
	r8^\markup {Viol.I} ees-. c-. a'-.
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	g8-.[ g16\rest g-.] g8-.[ g16\rest g-.] 
	s2*37
	% bar 174 - 180
	\voiceOne s4 s8 <bes,, g'>(^\markup {Solo-Viol.}
	<bes' g'>) q4 <a fis'>8(
	<bes g'>) q4 <ees c'>16( g
	<d bes'> g d bes g bes) <c aes'>([ ees]
	<bes g'> ees bes g) ees( <ees' g>) <d bes'>([ <c aes'>]
	<b! g'>8)\noBeam <b d>8. <aes f'>16([ <g ees'> <f d'>)]
	<d b'>( <ees c'>) <d fis>( <ees g>) \tuplet 6/4 4 {g,16( e' g e'! g e'!)}
	s2*57
	% bar 238 - 243
	d,8(-\tweak X-offset #1 ^\markup {Klar.I} c16 d) c4
	ees16( d c d) c4
	f,8(^\markup {Hr.III} ees16 d) f4~
	f8( g16 aes) g8( f)
	ees2~
	ees
	s2*10
	% bar 254 - 257
	\tupletDown \tuplet 3/2 8 {fis,16[(^\markup {Solo-Viol.} a d] a[ d fis]) d([ fis a] fis[ a d])}
	\tuplet 3/2 8 {fis,[( a d] a[ d fis] d[ fis a] fis[ a d])} \tupletNeutral
	\oneVoice fis2\trill\laissezVibrer
	\voiceOne d,,,2\trill^\markup {Pk.}
	s2*23
	% bar 281 - 285
	s4 d'^\markup {Hr.I}(
	cis c
	b) e(~
	e8[ c)] e-.( fis-.)
	g \oneVoice r r4
	s2*3 s2.*2
	% bar 291 - 293
	\voiceOne r4^\markup {Fl.I} b( c cis
	d e eis fis)
	gis8 r r4
	s2*3
	% bar 297 - 298
	\shape #'((0 . 0)(0 . -0.3)(0 . -0.3)(0 . -1.5)) Slur g,8(_\markup {Klar.I} d' cis c
	b[ a g]) s
	s2*16
	% bar 315 - 323
	s4 s8 g'(-\offset X-offset -4 ^\markup {Klar.I}
	fis e c d)
	d( dis) e4(~
	e8 eis) fis4~
	fis8 r r g,(
	fis'4 e)
	g,4 r8 g(-\offset X-offset -3 ^\markup {Ob.I}
	fis'4 e8) r
	fis4( e8) r
	s2*8
	% bar 332 - 335
	r8^\markup {Ob.I} d4 d8~
	d d4 d8~
	d d4 d8~
	d d4 d8
}
%###############################################################################
%#                   C U E   V O I C E   F O R   P A U K E N                   #
%###############################################################################
cueVoicePaukenMvtI = \relative {
	s1*22
	% bar 23 - 30
	\voiceOne r4 <e, b' d a'>^\pizz gis' f
	d b gis d^\arco(
	f1
	e2) r4 cis'''(_\markup {Klar.I}
	b) cis( gis) a(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	s1*21
	% bar 52 - 56
	r2 e,8(^\markup {Solo-Viol.} fis16 gis a b c d
	\oneVoice e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <c,, e'>-. <f f'>-. <a fis'>-.
	<g g'>-. \once \voiceOne r <gis gis'>-. \once \voiceOne r
	s1*32
	% bar 89 - 97
	s2 s4 a(-\offset X-offset -1 ^\markup {\column \right-align {\lower #1.2 \line {Viol.I} \line {Fl.I}}}
	g8) r a4( e8) r f4(
	g2 c,8) r a'4(
	g8) r a4( e8) r f4(
	f'2 c4) d(
	dis)-. e4(~\sf e16 d c bes) d4(~
	d16 c bes a) bes4(~ bes16 a g fis) g4(~
	g8 fis) \voiceOne g4.(^\markup {Viol.I} bes,8) a16( bes c d
	ees d c b!) c( d ees f g f ees d) s4
	s1*45
	% bar 143 - 146
	g4.(^\markup {Ob.I} f8 d2)
	r4 r8 g( f4. d8)
	g4.( f8 d2)
	s1*31
	% bar 177 - 181
	\oneVoice r2 r4 a'4(~^\markup {Ob.I}
	a8 e) f4.( cis8) d4~
	d d2 c4(~
	c1~
	c2 b)
	s1*17
	% bar 199 - 200
	<d, d'>2^\markup {Trpt.} q
	q4 r r2
	s1*8
	% bar 209 - 213
	\voiceOne s2 s4 e'(^\markup {Ob.}
	g) f2-> f4~
	f f2 f4(~
	f8 e) f4.( cis'8) d4(~
	d16 c! bes a) bes4(~ bes16 a g fis) s4
	s1*28
	% bar 242 - 244
	fis2(^\markup {Klar.I} e
	ees d4) r8 eis-.^\markup {Ob.I}
	fis-.[ gis-. a-.] gis,-.\noBeam^\markup {Klar.I} a-.[ b-. c-.] r
	s1*29
	% bar 274 - 277
	e,8\(^\markup {Solo.Viol.} e4 e8( g) g4 g8(
	c) c4 c8( ees) ees4 ees8(
	\oneVoice aes) aes4 aes8( c) c4 c8(
	dis) dis4 dis8( gis) gis4 gis8\)
	s1*35
	% bar 313 - 315
	\voiceOne e,4.(^\markup {Ob.I} d8 b2)
	r4 r8 e( d4. b8
	e4. d8 b2)
	s1*28
	% bar 344 - 347
	s2 s4 d(^\markup {Ob.I II}
	dis) e4(~ e16 d! cis b) fis'4(\fp~^\markup {Klar.I} 
	fis8 cis) d4.( ais8) b4~
	b a2( gis4)
	s1*21
	% bar 369 - 375
	<d d'>2^\markup {Trpt.} q
	q4-. q-. r2
	q2 q
	<d' e>4-. <a e'>-. r2
	\oneVoice cis'4~\f^\markup {Viol.I} \tuplet 3/2 4 {cis8 ais-! b-! \stemUp eis,-! fis-! cis-! d-! ais-! b-!}
	\tuplet 3/2 4 {gis-! a!-! bis-! cis-! dis-! e-! \stemNeutral gis-! a!-! bis-! cis-! dis-! e-!}
	a16( e cis a) e'( cis a e) a( e cis a) <a, a'>4^\markup {Trpt.}\laissezVibrer
	s1*44
	% bar 420 - 426
	r2 r4 c''-.-\tweak X-offset #-3 ^\markup {Fl.}
	b-. c-. gis-. a-. 
	b-. b-. e,-. c'-. 
	b-. c-. gis-. a-. 
	<a a'>-. q-. e'-. a,-.
	<a a'>-. q-. e'-. a,-.
	a' s s2
}
cueVoicePaukenMvtIII = \relative {
	% bar 1 - 2
	a8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	s2*18
	% bar 21 - 25
	\voiceOne c'4(^\markup {Fag.I} bes
	a b!)
	c( cis
	d f8 e
	f4) r
	s2*9
	% bar 35 - 38
	\voiceTwo e8^\markup {Viol. pizz} d f d
	e d f d
	<d a'> <b g'> <d a'> <b g'>
	<a f' d'> r r4
	s2*38
	% bar 77 - 85
	\oneVoice s4 g'4(-\tweak X-offset #-5 ^\markup {Hr.III}
	fis f
	e a
	f) a,(
	c8[ e)] a(-. g-.)
	f([ d)] a(-. cis-.)
	d( f) a4(~
	a a,)
	d2 r4
	s2. s1*2 s2*18
	% bar 107 - 110
	\voiceOne c'8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis
	\oneVoice e'8->^\markup {Fl.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	s2*26
	% bar 137 - 139
	\tuplet 3/2 4 {a4^(-\tweak X-offset #-4 ^\markup {Viol.I} g8) f^( g a)}
	\tuplet 3/2 4 {a4^( g8) f^( g a)}
	a4 e
	s2*41
	% bar 181 - 184
	\voiceOne <a,, a'>2(^\markup {Trpt.} 
	<d d'>4) r
	<a a'>2( 
	<d d'>4) r
	s2*17
	% bar 202 - 209
	r8.^\markup {Trpt.I} a'16-. a8-.[ a16\rest a-.] 
	f'4 e
	e d 
	a d,
	d'4..\sf d16
	d4..\sf d16
	d4-> d->
	d8-.\noBeam-\tweak X-offset #-5 ^\markup {Solo-Viol.} \tupletDown \tuplet 3/2 8 {f16([ g f] d[ e d]) b'[( cis b])} \tupletNeutral
	s2*18
	% bar 228 - 230
	\oneVoice a8(-\tweak X-offset #-7 ^\markup {Solo-Viol.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	f8( e16-.) e-. a8 s
	s2*23
	% bar 254 - 256
	\voiceOne \tuplet 3/2 8 {gis,,16([^\markup {Solo-Viol.} b e] b[ e gis]) e[( gis b] gis[ b e])}
	\tuplet 3/2 8 {gis,[( b e] b[ e gis] e[ gis b] gis[ b e])}
	\oneVoice gis2\trill\laissezVibrer
	s2*32 s2.*2 s1*2 s2*4
	% bar 297 - 304
	\shape #'((0 . -0.5)(0 . 0)(0 . -0.5)(0 . -1)) Slur a,8(-\tweak X-offset #-3.0 ^\markup {Fl.I} e' dis d
	cis[ b a]) \voiceOne a,\noBeam^\markup {Trpt.I}~
	a2~
	a~
	a4. d8~
	d2~
	d~
	d4. r8
	s2*23
	% bar 328
	\oneVoice s4 s8 d'-.\sfp-\tweak X-offset #-5 ^\markup {Viol.I}
	cis-. b-. a-. e-.
	a-. r r d-.\sfp
	cis-. b-. a-. e-.
	\voiceOne a-. a,4 b8~
	b cis4 e8~
	e a4 b8~
	b cis4 e8-.
}
%###############################################################################
%#              C U E   V O I C E   F O R   S O L O   V I O L I N              #
%###############################################################################
cueVoiceSoloViolinMvtI = \relative c {
	% bar 1 - 4
	e'''4.-\tweak X-offset #-6 ^\markup {Viol.I} d8 b4 r
	c4. b8 e,4 r
	\tuplet 3/2 2 {fis-. gis-. a-. gis-. a-. b-.}
	\tuplet 3/2 2 {a-. b-. c-. d-. e-. f-.}
	s1*21
	% bar 26 - 30
	\voiceOne s2 s4^\markup {Klar.I} cis,4(_\pdolce
	b) cis( gis) a4(
	b2 e,4) \oneVoice cis''(-\tweak X-offset #-3 ^\markup {Fl.I}
	b) cis( gis) a(
	a'2 e4) s
	s1*81
	% bar 112 - 115
	\voiceOne a,,4.\f-\tweak X-offset #2 ^\markup {Solo-Vlc.} g8 e2~
	e4. c8( e4. d8)
	c( e d c) e( d b c)
	a( a' e c) e( d b c)
	s1*31
	% bar 147
	\tupletDown \tuplet 3/2 4 {c,,8(^\markup {Solo-Vlc.} g' bes c g' bes) c( bes g c, g' bes)} \tupletNeutral
	s1*13
	% bar 161 - 166
	\voiceTwo e2.^\markup {Solo-Vlc.} e4(
	\afterGrace f2.)( {g16[ f])} e8( f)
	g4 r8 g( gis4) r8 gis(
	a4 g! f e
	d) r r e(
	d) r s2
	s1*49
	% bar 216 - 217
	\oneVoice s2 s4 g->^\markup {Bass.}
	e-> cis-> ais-> g->
	s1*52
	% bar 270 - 273
	\voiceOne c,8\fp\(-\tweak X-offset #1 ^\markup {Solo-Vlc.} c4 c8( ees) ees4 ees8(
	aes) aes4 aes8( b!) b4 b8(
	e!) e4 e8( gis) gis4 gis8(
	b!) b4 b8( e) e4 e8\)
	s1*23
	% bar 297 - 299
	\oneVoice \tuplet 3/2 2 {g'2->-\tweak X-offset #-5 ^\markup {Viol.I} f4-. e( d) e-.
	c( a) f-. d( b) g-.
	\voiceTwo f( e) r e( d) r}
	s1*93
	% bar 393 - 395
	\oneVoice e8-\offset X-offset -2 ^\markup {Viol.I} e''([ d b]) c([ b e,]) a(
	g c,) \voiceTwo f( e a,) d( c f,)
	b( f) a( e) a( d,) gis( d)
}
cueVoiceSoloViolinMvtII = \relative c {
	% bar 1 - 2
	\voiceOne a''4(-\offset X-offset -2 ^\markup {Hr.I} d2)\fermata
	\oneVoice e'4(^\markup {Fl.I} a2)\fermata
	s2.*31
	% bar 34 - 38
	\voiceOne r4^\markup {Ob.I} r a,(~
	a g f
	e d) g(
	f e d
	b c) s
	s2.*69
	% bar 108 - 110
	g,4_(~-\tweak X-offset #-6 ^\markup {Solo-Vlc.} \tuplet 3/2 4 {g8 fis g)} ees'8 bes
	g ees bes4 g
	a8( d e! a) s4
}
cueVoiceSoloViolinMvtIII = \relative c {
	s2*6
	% bar 7 - 10
	c'8---\tweak X-offset #-7 ^\markup {Solo-Vlc.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	e8-- d16-. e-. d8-- e16-. d-.
	e8-- d16-. e-. d( f) d-. b-.
	s2*35
	% bar 46 - 49
	c''16-\tweak X-offset #-5 ^\markup {Viol.I} c e c a a c a
	f f a f d d f d 
	e8-. a-. a-. gis-.
	a-. r s4
	s2*25
	% bar 75 - 77
	<< {\InCueContext d,,8[(-\offset X-offset -6 ^\markup {Solo-Vlc.} a)]} \\ { \InCueContext f4 } >>  <f' a>8-.( <e g>-.)
	<a, f'>( <g e'> <f d'>) <d a'>(
	\voiceOne <e c'> <d b'>) s4
	s2*7 s2.*2 s1*2 s2*18
	% bar 107 - 108
	c''8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-.
	c8-> b16-. c-. b( a') g-. fis-.
	s2*29
	% bar 138 - 139
	\oneVoice \tuplet 3/2 4 {a4(-\tweak X-offset #-4 ^\markup {Viol.I} g8) f( g a)}
	a4 e
	s2*2
	% bar 142 - 145
	\voiceOne r8.-\tweak X-offset #-1 ^\markup {Viol.I} g16-. g8-.[ g16\rest g-.]
	\tuplet 3/2 4 {g4( f8) d( e f)}
	\tuplet 3/2 4 {f4( e8) c( d e)}
	b4 a
	s2*18
	% bar 164 - 166
	s4 s8 a,,(-\tweak X-offset #-2 ^\markup {Solo-Vlc.}
	a') a4 gis8(
	a) a4 s8
	s2*39
	% bar 206 - 208
	\oneVoice d''8(\sf-\tweak X-offset #-4 ^\markup {Ob.I} c bes a)
	bes( a g f)
	e( f e f)
	s2*15
	% bar 224 - 227
	c,8--^\markup {Solo-Vlc.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
	e8->^\markup {Fag.I} d16-. e-. d8-> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	s2*36
	% bar 264 - 267
	c''16^\markup {Viol.I} c e c a! a c a
	f f a f d d f d
	e8-. a-. a-.\sf g-.
	g-.\sf f-. f-.\sf e-.
	s2*3
	% bar 271 - 273
	b8(^\markup {Viol.I} gis) gis( e)
	e( d4 b8)
	\voiceOne r4 e,-\tweak X-offset #-2 ^\markup {Solo-Vlc.}
}
%###############################################################################
%#               C U E   V O I C E   F O R   S O L O   C E L L O               #
%###############################################################################
cueVoiceSoloCelloMvtI = \relative c {
	% bar 1 - 4
	e'''4.-\tweak X-offset #-5 ^\markup {Viol.I} d8 b4 r
	c4. b8 e,4 r
	\tuplet 3/2 2 {fis4-. gis-. a-. gis-. a-. b-.}
	\tuplet 3/2 2 {a-. b-. c-. d-. e-. f-.}
	s1*29
	% bar 34 - 35
	c2(~-\tweak X-offset #-7 ^\markup {Solo-Vln} \tuplet 3/2 2 {c4 a) fis}
	\tuplet 3/2 2 {c( a fis c) b a}
	s1*72
	% bar 108 - 111
	fis''8(-\tweak X-offset #-4 ^\markup {Viol.I} g) gis( a) d( f) e-. e,-.
	r4 d'8( f) e-. e,-. r4
	d'8( f) r4 dis8( fis) r4
	e4-. r e,,-. r
	s1*31
	% bar 143
	\tuplet 3/2 4 {g''8(^\markup {Solo-Vln.} f d g, f d) g( f d g, f d)}
	s1*7
	% bar 151 - 152
	g4.(^\markup {Klar.I} f8 d4. b8
	a2.) s4
	s1*62
	% bar 215 - 217
	r4^\markup {Viol.I} bes'16( e g a bes a g e) bes( e g a
	bes8-.) r r4 r g,->-\tweak X-offset #-5 ^\markup {Bass.} 
	e-> cis-> ais-> g->
	s1*41
	% bar 259 - 262
	s2 s8 ees'-.-\tweak X-offset #-3 ^\markup {Vlc.} des-. c-.
	bes4 ges2 bes4
	ges ees2 ges4
	bes,4-. s s2
	s1*5
	% bar 268 - 269
	\tuplet 3/2 2 {c4-.^\markup {Vlc.} d-. e!-. f-. g-. aes-.}
	\tuplet 3/2 2 {bes-. c-. des-. ees,-. f-. g-.}
	s1*24
	% bar 294 - 299
	d'2^\markup {Vlc.} dis
	\tuplet 3/2 2 {e2-> d!4 c( b) a-.}
	d2 dis
	\tuplet 3/2 2 {e2 d!4 c( g) c,-.}
	\tuplet 3/2 2 {f2 d4 g2 e4}
	a2 f,
	s1*31
	% bar 331 - 336
	s2 \voiceOne r4-\tweak X-offset #-3 ^\markup {Solo-Vln.} \oneVoice cis''''
	\afterGrace d2.( {e16[ d])} cis8( d)
	e4 r8 e( eis4) r8 eis(
	fis4 e d cis
	b) r r cis(
	b) \voiceOne r \oneVoice s2
	s1*56
	% bar 393 - 395
	r8-\tweak X-offset #-3 ^\markup {Viol.I} e( d b) c( b e,) a(
	g c,) f( e a,) d( c f,)
	b( f) a( e) a( d,) gis( d)
}
cueVoiceSoloCelloMvtII = \relative c {
	% bar 1 - 2
	\voiceOne a''4_(-\tweak X-offset #-2 ^\markup {Hr.I} d2)\fermata
	\oneVoice e'4(-\tweak X-offset #-3.5 ^\markup {Fl.I} a2)\fermata
	s2.*35
	% bar 38 - 40
	r4 r4 g,4(-\tweak X-offset #-6 ^\markup {Solo-Vln.}
	bes4~ \tuplet 3/2 4 {bes8 a bes c a bes~}
	\tuplet 3/2 4 {bes a bes d c bes a g f)}
	s2.*2
	% bar 43 - 44
	s4 \voiceOne \tupletDown \tuplet 3/2 4 {bes8(-\offset X-offset -3.5 ^\markup {\column {\lower #1.5 "Solo-" "Vln."}} a bes c a bes~}
	\tuplet 3/2 4 {bes a bes \tupletNeutral \oneVoice g' f e f c a)}
	s2.*23
	% bar 68 - 70
	s4^\markup {Fl.I} s4 fis(~
	fis g! a 
	g fis) b
	s2.*28
	% bar 99 - 101
	s2 a4(-\tweak X-offset #-6 ^\markup {Solo-Vln.}
	c!)(~ \tuplet 3/2 4 {c8 b c d b c~}
	\tuplet 3/2 4 {c b c d a c b a g)}
}
cueVoiceSoloCelloMvtIII = \relative c {
	s2*45
	% bar 46 - 49
	c'''16-\tweak X-offset #-5 ^\markup {Viol.I} c e c a a c a
	f f a f d d f d
	e8-. a-. a-. gis-.
	a-. r s4
	s2*35 s2.*2 s1*2 s2*16
	% bar 105 - 108
	s8 \voiceOne g,,16-.^\markup {Fag.I} g-. c8-> g16-. g-.
	aes8-> g16-. g-. c-. e-. g-. e-.
	c'8->^\markup {Ob.I} b16-. c-. b8-> c16-. b-. 
	c8-> b16-. c-. b( a') g-. fis-.
	s2*97
	% bar 206 - 209
	\oneVoice d'8(-\tweak X-offset #-4 ^\markup {Ob.I} c bes a)
	bes( a g f)
	e( f e f)
	e s s4
	% bar 210 - 213
	s8 g(-\tweak X-offset #-4 ^\markup {Ob.I} f e)
	f( e d c)
	b( c b c)
	b s s4
	% bar 214 - 217
	s8 d'(-\tweak X-offset #-4 ^\markup {Ob.I} c b
	c b a gis
	a g! fis f
	e d c b)
	s2*16
	% bar 234 - 238
	c'8--^\markup {Solo-Vln.} b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b^( a') g-. fis-.
	e8->^\markup {Fl.I} d16-. e-. d8^> e16-. d-.
	e8-> d16-. e-. d( f) d-. b-.
	g8-. r s4
	s2*25
	% bar 264 - 267
	c16-\tweak X-offset #-5 ^\markup {Viol.I} c e c a a c a
	f f a f d d f d
	e8-. a-. a-. g-.
	g-. f-. f-. e-.
	s2*2
	% bar 270 - 272
	s4 \stemUp d8(-\tweak X-offset #-4 ^\markup {Viol.I} b) \stemNeutral
	b( gis) gis( e)
	e( d4 b8)
}
%###############################################################################
%#                 C U E   V O I C E   F O R   V I O L I N   I                 #
%###############################################################################
cueVoiceViolinIMvtI = \relative c {
	s1*23
	% bar 24 - 30
	s2 s4 \voiceTwo d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 cis'''(_\markup {Klar.I}
	b) cis( gis) a(\<
	b2\> e,4)\! \oneVoice cis''^(^\markup {Fl.I}
	b) cis^( gis) a^(
	a'2 e4) r
	s1*21
	% bar 52 - 56
	\stemDown r2 e,,8(^\markup {Solo-Viol.} fis16 gis a b c d \stemNeutral
	e) a,( b c d e fis gis a) e^( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r
	s1*99
	% bar 156 -166
	s2 \voiceTwo r4 \oneVoice bes-._(-\tweak X-offset #-3 _\markup {Br.}
	f'\rest a,-. f'\rest cis-.)
	f\rest a,-._( f'\rest a,-.\<
	f'\rest c!-. f\rest a,-.)\!
	f'\rest << dis2. {\hairpinShorten #'(-0.3 . -2) s4\sf\> s s\!}>>
	b1_(~-\tweak X-offset #0 \pdimD
	b2 d!)
	e_( c)
	c2.\pp a4\>_(
	c2.) a4_(
	c2)\! e\rest
}
cueVoiceViolinIMvtII = \relative c {
	% bar 1 - 2
	\oneVoice a'4(-\tweak X-offset #-4 _\markup {Hr.I} d2)_\fermata
	\voiceOne e'4(-\offset X-offset -2 ^\markup {Klar.I} a2)\fermata 
	s2.*33
	% bar 36 - 38
	s2 g4(-\tweak X-offset #-3.5 ^\markup {Ob.I}
	f e d
	b) s2
}
cueVoiceViolinIMvtIII = \relative c {
	% bar 1 - 2
	a'8(-\tweak X-offset #-3.5 ^\markup {\column { \lower #1.5 "Solo-" "Vlc."}} e'16-.) e-. dis8( d16-.) d-.
	c8( b16)-. b-. a8( e16-.) e-.
	s2*6
	% bar 9 - 11
	\voiceOne b''4(-\tweak X-offset #-3 ^\markup {Klar.I} d
	b d8. f16
	e8) s s4
	s2*49
	% bar 61 - 64
	s4 \voiceOne <bes aes'>->~-\tweak X-offset #-8 ^\markup {Solo-Viol.}
	q8 <bes g'>16[-. g,-.] <bes' aes'>4->~
	q8 <bes g'>16 g, <bes' g'>8( <a! fis'>16-.) c,-.
	<a' fis'>-. ees( <fis ees'>) c_( <ees c'>[) a,]( <c a'>8-.)
	s2*19
	% bar 84 - 87
	s4 s8 \oneVoice a''(-\tweak X-offset #-4 ^\markup {\column {\lower #1.5 "Solo-" "Viol."}}
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 \voiceTwo g(
	<e c'> <d b'> <e c'> <d b'>) q4.\laissezVibrer s8
	s1 s2*27
	% bar 116 - 117
	\oneVoice e4\rest-\tweak X-offset #-2 _\markup {Hr.III} a,8-. e'\rest
	e4\rest a,8-. e'\rest
	s2*54
	% bar 172 - 180
	s4 s16 \voiceTwo a,(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d a) \oneVoice <c! a'>8(\noBeam
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f([ <f' a>]) <e c'>( <d bes'>
	<cis a'>8)\noBeam <cis e>8. <bes g'>16[( <a f'> <g e'>)]
	\stemDown <e cis'>( <f d'>) <e gis>( <f a>) s4 \stemNeutral
	s2*37
	% bar 218 - 219
	a,8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8\laissezVibrer s
	s2*34
	% bar 254 - 255
	\voiceTwo \tuplet 3/2 8 {gis16([^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	\oneVoice \tuplet 3/2 8 {gis,([ b e] b[ e gis] e[ gis b] gis[ b e])}
	gis2^\trill\laissezVibrer
	s2*31
	% bar 288 - 291
	s4 s8 fis,(-\tweak X-offset #-6 ^\markup {Solo-Viol.}
	<cis a'>8 <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e_(
	<cis a'> <b gis'> <cis a'> <b gis'>) q4.\laissezVibrer s8
	s1 s2*14
	% bar 307 - 312
	s4 s8 b''(^\markup {Ob.I}
	a gis) r e(
	gis fis) r d'(^\markup {Fl.I}
	cis b a gis
	eis fis) r fis'(
	e d cis b)
}
%###############################################################################
%#                C U E   V O I C E   F O R   V I O L I N   I I                #
%###############################################################################
cueVoiceViolinIIMvtI = \relative c {
	s1*23
	% bar 24 - 30
	s2^\markup {Solo-Vlc.} s4 d,(
	f1
	e2) r4 \voiceTwo cis'''(_\markup {Klar.I}
	b) cis( gis) a(\<
	b2\> e,4\!) \oneVoice cis''(^\markup {Fl.I}
	b) cis( gis) a(
	a'2 e4) \once \voiceOne r
	s1*21
	% bar 52 - 56
	r2^\markup {Solo-Viol.} \stemDown e,,8( fis16 gis a b c d \stemNeutral
	e) a,( b c d e fis gis a) e( fis gis a b c d
	e) a,( b c d e fis gis a) e fis gis a e f g
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r
	s1*103
	% bar 160 - 167
	r4-\tweak X-offset #-1.5 _\markup {Br.} << a,2. {\hairpinShorten #'(-0.3 . -1.5) s4-\tweak extra-offset #'(-1 . 0.7) \f -\tweak extra-offset #'(-1 . 0.7) \> s s\! }>>
	gis2(-\tweak X-offset #0 _\pdimD g)~
	g( b)
	bes1
	a\pp
	a~\>
	a2\! e'\rest
	s1*56
	% bar 223
	\voiceOne \tuplet 3/2 4 {g4-\tweak X-offset #-3 ^\markup {Solo-Viol.} b d} g8 b d g
	s1*16
	% bar 240 - 241
	gis,16(_\markup {Solo-Viol.} eis b cis dis b gis ais b gis eis fis gis eis b cis)
	dis(_\markup {Solo-Vlc.} b gis ais b gis eis fis gis eis cis bis b gis eis cis)
}
cueVoiceViolinIIMvtII = \relative c {
	% bar 1 - 2
	a'4(-\tweak X-offset #-3 _\markup {Hr.I} d2)_\fermata
	e'4(^\markup {Klar.I} a2)^\fermata
	s2.*33
	% bar 36 - 38
	s2 \voiceOne  g4(-\offset X-offset -2 ^\markup {Ob.}
	f e d
	b) s2
	s2.*68
	% bar 107 - 110
	s2 s8 fis,(-\offset X-offset -3 ^\markup {Solo-Vlc.}
	g4)(~ \once \tupletDown \tuplet 3/2 4 {g8 fis g)} ees' bes
	g ees bes4 g
	a8( d e! a)\laissezVibrer s4
}
cueVoiceViolinIIMvtIII = \relative c {
	% bar 1 - 2
	a'8-\tweak X-offset #-1 ^\p(-\tweak X-offset #-3 ^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	s2*6
	% bar 9 - 11
	\voiceOne b''4(^\markup {Klar.I} d
	b d8. f16
	e8) s s4
	s2*17
	% bar 29 - 30
	\voiceTwo r8 c,-\tweak X-offset #-5 _\markup {Viol.I} a' a,
	r c c' c,
	s2*30
	% bar 61 - 64
	\voiceOne s4 <bes' aes'>4->~^\markup {Solo-Viol.}
	q8 <bes g'>16-.[ g,-.] <bes' aes'>4->~
	q8 <bes g'>16-. g,-. <bes' g'>8( <a! fis'>16-.) c,
	<a' fis'>16-. ees( <fis ees'>) c( <ees a>)[ a,]( <c a'>8)\noBeam
	s2*19
	% bar 84 - 87
	s4 s8 a''(_\markup {Solo-Viol.} 
	<e c'> <d b'>) q4.( <c a'>8)
	<b g'>2 r8 g(
	<e c'> <d b'> <e c'> <d b'>) q4. s8
	s1 s2*27
	% bar 116 - 117
	d4\rest_\markup {Hr.III} a8-. d\rest
	d4\rest a8-. d\rest
	s2*54
	% bar 172 - 180
	s4 s16 a(^\markup {Solo-Viol.} a' f
	e d cis d f a d b
	d a f e d[ a]) <c! a'>8(
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f[( <f' a>]) <e c'>([ <d bes'>]
	<cis a'>8)\noBeam <cis e>8. <bes g'>16[( <a f'> <g e'>)]
	<e cis'>( <f d'>) <e gis>( <f a>) s4
	s2*37
	% bar 218 - 219
	\oneVoice a,8(^\markup {Solo-Vlc.} e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8\laissezVibrer s
	s2*26
	% bar 246 - 247
	\voiceOne aes''8(-\tweak X-offset #-3 ^\markup {Ob.} g16 aes) aes,4
	b!8(^\markup {Klar.} ais16 b) b'4
	s2*6
	% bar 254 - 255
	\tupletDown \tuplet 3/2 8 {gis,,16[(^\markup {Solo-Viol.} b e] b[ e gis]) e([ gis b] gis[ b e])}
	\tuplet 3/2 8 {gis,[( b e] b[ e gis] e[ gis b] gis[ b e])} \tupletNeutral
	s2*32
	% bar 288 - 291
	s4 s8 fis,(-\tweak X-offset #-7 ^\markup {Solo-Viol.}
	<cis a'> <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e_(
	<cis a'> <b gis'> <cis a'> <b gis'>) q4.\laissezVibrer s8
	s1 s2*14
	% bar 307
	s4 s8 \oneVoice b''(-\tweak X-offset #-4 ^\markup {Ob.I}
	a gis) r e( 
	gis fis) r d'(-\tweak X-offset #-3 ^\markup {Fl.I}
	cis b a gis
	eis fis) r fis'(
	e d cis b)
	\voiceTwo a,4.(^\markup {Viol.I} ais8)
	b4.( bis8)
}
%###############################################################################
%#                 C U E   V O I C E   F O R   B R A T S C H E                 #
%###############################################################################
cueVoiceBratscheMvtI = \relative c {
	s1*23
	% bar 24 - 30
	s2 s4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 \voiceOne cis'''(^\markup {Klar.I}
	b) cis( gis) a(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	s1*21
	% bar 52 - 56
	r2 e,8(-\tweak X-offset #-3 ^\markup {Solo-Viol.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d 
	\oneVoice e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. <a,, c e'>-. <d, f' f'>-. <d a'' fis'>-.
	<g, b' g' g'>-. r <e' b' gis' gis'>-. r
}
cueVoiceBratscheMvtII = \relative c {
	% bar 1 - 3
	\voiceOne a'4(-\tweak X-offset #-1 ^\markup {Hr.I} d2^\fermata)
	e'4(-\tweak X-offset #-2 ^\markup {Klar.I} a2)^\fermata
	\voiceTwo a,,8(^\markup {Solo-Viol.} d e a fis d)
	s2.*37
	% bar 41 - 44
	\voiceOne f'4.^\markup {Fl.I} f4 f8~
	f f4 f8( g) g~
	g4. bes,!8(^\markup {Klar.I} c) bes~
	bes  bes( g') e( f) c\laissezVibrer
}
cueVoiceBratscheMvtIII = \relative c {
	s2*60
	% bar 61 - 64
	s4 \voiceOne  <bes'' aes'>4->~-\offset X-offset -5 ^\markup {\column { \lower #1.5 "Solo-" "Viol."}}
	q8 <bes g'>16-.[ g,-.] <bes' aes'>4->~
	q8 <bes g'>16-. g,-. <bes' g'>8( <a! fis'>16-.) c,-.
	<a' fis'>-. ees( <fis ees'>) c( <ees c'>) a,( <c a'>8-.)\noBeam
	s2*12
	% bar 77 - 83
	\oneVoice r4^\markup {Solo-Viol.} g'(
	<c e> <d g>
	<e c'>) <a f'>8-.( <g e'>-.)
	<f d'>( a) <dis, b'>-.( a'-.)
	<e g>4 <a, a'>~
	q <a' f'>8-.( <g e'>-.)
	<f d'>( a) s4
	s2 s2.*2 s1*2 s2*27
	% bar 116 - 117
	\voiceTwo r4_\markup {Hr.III} a,,8-. r
	r4 a8-. r
	s2*54
	% bar 172 - 180
	s4 s16 \voiceOne a16(-\tweak X-offset #-5 ^\markup {Solo-Viol} a' f
	e d cis d f a d b
	d a f e d[ a]) <c! a'>8(
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>([ f]
	<c a'> f c a) f([ <f' a>]) <e c'>[( <d bes'>]
	<cis a'>8)\noBeam <cis e>8. <bes g'>16([ <a f'> <g e'>)]
	<e cis'>( <f d'>) <e gis>( <f a>) s4
	s2*100
	% bar 281 - 287
	s4 e(^\markup {Solo-Viol.}
	<a cis> <b e>
	<cis a'>) <fis d'>8-.( <e cis'>-.)
	<d b'>( fis) <bis, gis'>-.( fis'-.)
	<cis e>4 <fis, fis'>~
	q <fis' d'>8-.( <e cis'>)-.
	<d b'>( fis) s4
	s2 s2.*2 s1*2 s2*14
	% bar 307 - 312
	s4 s8 \oneVoice b(-\offset X-offset -3 ^\markup {Ob.I}
	a gis) r e(
	gis fis) r d'(-\tweak X-offset #-3 ^\markup {Fl.I}
	cis b a gis
	eis fis) r fis'(
	e d cis b)
}
%###############################################################################
%#               C U E   V O I C E   F O R   V I O L O N C E L L               #
%###############################################################################
cueVoiceVioloncellMvtI = \relative c {
	s1*23
	% bar 24 - 30
	s2 s4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 \voiceOne cis'''(^\markup {Klar.I}
	b) cis( gis) a(
	b2 e,4) cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	s1*21
	% bar 52 - 56
	r2 e,,,8(-\tweak X-offset #-3 ^\markup {Solo-Vlc.} fis16 gis a b c d
	e) a,( b c \oneVoice d e fis gis a) e( fis gis a b c d 
	e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. a,-. <d a'>-. <d, c'>-.
	<g, d' b'>-. r <e b' gis' d'>-. r
}
cueVoiceVioloncellMvtII = \relative c {
	% bar 1 - 2
	a'4(-\tweak X-offset #-3 ^\markup {Hr.I} d2^\fermata)
	e4( a2)^\fermata
	s2.*42
	% bar 45 - 49
	f4(~^\markup {Solo-Vlc.} \tuplet 3/2 4 {f8 e f g e f~}
	\tuplet 3/2 4 {f e f d' c b \voiceOne c) e,( g}
	\tuplet 3/2 4 {des' c b c) e,( g des' c b)}
	r8^\markup {Br.} ees,,-.( r ees-.) r e
	r f s2
}
cueVoiceVioloncellMvtIII = \relative c {
	s2*60
	% bar 61 - 64
	\voiceOne s4 s8 <g f'>16-.-\tweak X-offset #-3 ^\markup {Solo-Vlc.} c,-.
	<f' des'>4.-> <c e>16-. c,-.
	<e' c'>4.-> <ees c'>16-. c,-.
	<ees' c'>-.\noBeam c,( <c' a'>) c,( <a' fis'>)[ c,(] <fis ees'!>8-.)
	s2*20 s2.*2 s1*2 s2*27
	% bar 116 - 117
	\voiceTwo a8.\rest-\offset X-offset -2 ^\markup {Pk.} a16-. a8-. a\rest
	a8.\rest a16-. a8-. a\rest
	s2*56
	% bar 174 - 180
	s4 s8 \oneVoice <c'! a'>8(-\tweak X-offset #-6 ^\markup {Solo-Viol.}
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f[( <f' a>)] <e c'>( <d bes'>
	\voiceOne <cis a'>8)\noBeam <cis e>8. <bes g'>16( <a f'> <g e'>)
	<e cis'>( <f d'>) <e gis>( <f a>) s4
}
%###############################################################################
%#               C U E   V O I C E   F O R   K O N T R A B A S S               #
%###############################################################################
cueVoiceKontrabassMvtI = \relative c {
	s1*23
	% bar 24 - 30
	s2 s4 d,(^\markup {Solo-Vlc.}
	f1
	e2) r4 \voiceTwo cis'''_(^\markup {Klar.I}
	b) cis_( gis) a_(
	b2 e,4) \voiceOne cis'(^\markup {Ob.I}
	b) cis( gis) a(
	a'2 e4) r
	s1*21
	% bar 52 - 56
	r2 e,,,8(-\tweak X-offset #-3 ^\markup {Solo-Vlc.} fis16 gis a b c d
	e) a,( b c d e fis gis a) e( fis gis a b c d 
	e) a,( b c d e fis gis a) e fis gis a e f g 
	a4-. a,-. <d a'>-. <d, c'>-.
	<g, d' b'>-. r <e b' gis' d'>-. r
	s1*95
	%bar 152 - 156
	s2 s4 \oneVoice e''(-\tweak X-offset #-6 ^\markup {Solo-Vlc.}
	d8) r e4( b8) r c4(
	d2 g,4) e'(
	d8) r e4( b8) r c4(
	c'2 gis4) s
	s1*83
	% bar 240 - 244
	\voiceOne gis'16(-\offset X-offset -4.5 ^\markup {\column {\lower #1.5 "Solo-" "Viol." }} eis b cis dis b gis ais b gis eis fis gis eis b cis)
	dis(^\markup {Solo-Vlc.} b gis ais b gis eis fis gis eis cis bis b gis eis cis)
	\oneVoice a''''1\p~\startTrillSpan^\markup {Solo-Viol.}
	\afterGrace a2_( {gis16[\stopTrillSpan a])} c!4\trill fis,\trill
	a\trill c,!\trill ees\trill s
	s1*91
	% bar 336 - 342
	s2 s4 cis4(-\offset X-offset -4 ^\markup {\column { \lower #1.5 "Solo-" "Vlc." }}
	b8) r cis4( gis8) r a4(
	b2 e,4) cis'4(
	b8) r cis4( gis8) r a4(
	a'1
	e2.) <fis fis'>4(_\markup {Solo-Viol.}
	<fisis fisis'>-.) s4 s2
}
cueVoiceKontrabassMvtII = \relative c {
	% bar 1 - 3
	a'4^(-\tweak X-offset #-3 ^\markup {Hr.I} d2^\fermata)
	e4^( a2)^\fermata
	\voiceOne a,,8(^\markup {Solo-Vlc.} d e a fis d)
	s2.*45
	% bar 49 - 52
	\voiceTwo d4\rest_\markup {Vlc.} d8\rest bes d\rest b
	d\rest c d4\rest c_\pizz
	f, \voiceOne <g''' bes>(-\tweak X-offset #-2 ^\markup {Fl.} <a c>
	<g bes> <f a>) s
}
cueVoiceKontrabassMvtIII = \relative c {
	s2*32
	% bar 33 - 38
	\voiceOne c'''8(-\tweak X-offset #-7 ^\markup {Solo-Vlc.} a4 f8)
	d( b f d)
	e8-.\noBeam \tuplet 3/2 8 {d16( e d} f8-.)\noBeam  \tuplet 3/2 8 {d16( e d}
	e8-.)\noBeam  \tuplet 3/2 8 {d16( e d} a'8)-.\noBeam  \tuplet 3/2 8 {d,16( e d}
	d,8-.)\noBeam  \tuplet 3/2 8 {g,16( g' g,} d'8-.)\noBeam  \tuplet 3/2 8 {g,16( g' g,)}
	\tuplet 6/4 4 {d'16 f' d, f' d, f' d, f' d, f' d, f'}
	s2*22
	% bar 61 - 64
	<g, f'>4.->-\offset X-offset -4 ^\markup {\column {\lower #1.5 "Solo-" "Vlc." }} <g, f'>16-. c,-.
	<f' des'>4.-> <c e>16-. c,-.
	<e' c'>4.-> <ees c'>16-. c,-.
	<ees' c'>-.\noBeam c,( <c' a'>) c,( <a' fis'>) c,( <fis ees'>8-.)
	s2*20 s2.*2 s1*2 s2*24
	% bar 113 - 119
	a'16-.^\markup {Solo-Vlc.} e-. dis-. d-. cis-. c-. b-. bes-. 
	a8-. e-. dis-. d-.
	cis-. f\rest f8.\rest d16-.
	cis8-. f\rest f4\rest
	a8.\rest a16-._\markup {Pk.} a8-. a\rest
	a4\rest a8.\rest a'16-.-\tweak X-offset #-3 ^\markup {Vlc.}
	a8-.[ a16\rest f-.] d8-.[ d16\rest bes-.]
	s2*54
	% bar 174 - 180
	s4 s8 <c'! a'>8(^\markup {Solo-Viol.}
	<c' a'>) q4 <b gis'>8(
	<c a'>) q4 <f d'>16( a
	<e c'> a e c a[ c]) <d bes'>( f
	<c a'> f c a) f[( <f' a>]) <e c'>( <d bes'>
	<cis a'>8)\noBeam <cis e>8. <bes g'>16( <a f'> <g e'>)
	\voiceTwo <e cis'>( <f d'>) <e gis>( <f a>) s4
	s2*63
	% bar 244 - 245
	\stemUp f'8(^\markup {Klar.I} ees16 f) ees8( des16 ees) \stemNeutral
	\voiceOne des( c bes c) aes4 
	s2*10
	% bar 256
	\tuplet 3/2 8 {d,,,!16([-\tweak X-offset #-3 ^\markup {Vlc.} f b] f[ b d]) b([ d f] d[ f b])}
	s2*32 s2.*2 s1*2 s2*9
	% bar 302 - 304
	d,,2_(-\tweak X-offset #-3 _\markup {Vlc.}
	d)_(
	d)
}
