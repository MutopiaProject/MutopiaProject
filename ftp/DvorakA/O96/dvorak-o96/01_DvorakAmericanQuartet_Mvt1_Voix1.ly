%#######################################################################
%#               M O U V E M E N T   1   -   V O I X   1               #
%#######################################################################
MvtUnVoixUne = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	r8 f''16\pp( a \repeat tremolo 6 {f16 a)}
	\repeat tremolo 4 {f16( a} \repeat tremolo 4 {f16 a)} \repeat volta 2 {
		\repeat tremolo 4 {f16( a} \repeat tremolo 4 {f16 a)} 
		\repeat tremolo 4 {f16( a} \repeat tremolo 4 {f16 a)} 
		\repeat tremolo 4 {f16( a} \repeat tremolo 4 {f16 a)} 
% mesure 6 à 10
		f(_\cres a\! f a f a f a) f(\< a f c a f a c) 
		f8\mf\<( a4 c8) d8.( f16-. d4)\!
		c8.( a16 f8 g16 a) c2
		c,8.->\fz\< d16-. f-. d-. r8 c8.->\fz d16-. f-. d-. r8
		c16\<( f a c) c8.(\> a16-. f4.) r8\!
% mesure 11 à 15
		r2 c16\f( f a c) c8. g16-.
		f8 r8 r4 c16(\fz\< f a c) c8. g16-.\!
		f8 r8 r4 a,16(\fz\< d f a) a8.\! e16-.
		d8 r8 r4 a16(\fz\< d f a) a8.\! e16-.
		d\ff( f a) d-. d,( f a) d-. d,( f a)_\dimmarkup d-. d,( f a) d-. 
% mesure 16 à 20
		d,,1(->^^\fz \mark \default
		d4) r4 r2
		f2\p( bes,)
		d8-.( d-. d-. d-.) d-.( d-. d-. d-.)
		d'4\((\< d16) e f a\) a4\(( a16) g f d\)\!
% mesure 21 à 25
		<<{c8(\cresc f4\! a8 s4 s) }\\{s4 s\< c8.^( f16^. d4)\!}>>
		c8\f( a f g16 a) c2
		c8\>( aes ees aes16 bes) c2\!
		c8-. aes16( c) c8-. aes16_\dimmarkup( c) c8-. aes16( c) c8-. aes16( c)
		dis1\>\! \trill \mark \default
% mesure 26 à 30
		e16\fz-. e-. r d-.\p c-.\fz c-.\p r b( a8 g! e4)
		a8( g e4) a8( g e4)
		e8(\< g) g(\prall f) e(\prall d) c(\prall a)
		a16\fp-. a-. r c-. b-. b-. r e,-. a-.\fp a-. r c-. b!-. b-. r e,-.
		e'8(\fp gis a b) c( d g,16 e a g)
% mesure 31 à 35
		c8( d g,16 e a g) c8( d g,16 e a g)
		c8(\< d-> c d->) c( d-> c b->)\!
		a(_\crescmarkup b-> a b->) a( b-> a f->)
		e16\fp\> e r d c c r a e'2\fp 
		e16\fz e r d c c r a e'2\fz \mark \default
% mesure 36 à 40
		e4(\ff f) e( f)
		e(\< f) g8( f e d)\!
		a4( b\>) a( g!8 e)
		a4\p( b)\> a( g!8 e)
		a1\pp(
% mesure 41 à 45
		a4) bes!2\fz(\> f4)
		e1\p\>(^\dimmarkup
		e^\rit)\! \mark \default
		a4\ppp--(^\intempo b--) cis--( b8-. a-.)
		b( fis'16 b, a8-. fis-. fis2)
% mesure 46 à 50
		b8( a4\< fis8) e16-. e-. a-. cis-. e4->\!
		<d fis>4.\fz\>( <fis, d'>8)\! << {cis'16( e e4.)} \\ { e,2} >>
		a4--\pp( b--) cis8( d16 cis b8 a)
		\tuplet 5/4 {b16( fis' cis b a} fis8) fis-. fis2
		b8( a4\< f!8) e16-! e-! a-! cis-! e4->
% mesure 51 à 55
		<d fis>4.\f( <fis, d'>8\>) <eis cis'>2\!
		cis'4( d e!) d16( b) b8-.
		fis'1\dim \mark \default
		cis4\pp( d e) d16-! b-! b8-!
		g'1\<
% mesure 56 à 60
		gis4\<( b) \tuplet 3/2 {a8\f( fis e-.)} e4
		<fis, d'>4( <d' fis>) \grace cis8 \tuplet 3/2 {fis8( e cis-.)} <e, cis'>4
		<d b'>4( <g e'>)\dimmarkup <fis d'>8( <d b'!>4) <d b'>8
		a'8\>(^\moltorit f!4 f8 f e4 d16 b\p)
		a4^\intempo r r2
% mesure 61 à 65
		r1
		e''8.\pp([ c!16 a8. c16] e2)
		e8.\pp([ c16 a8. c16] e2) \mark \default
	} 
	\repeat tremolo 4 {ees16(\pp c} \repeat tremolo 4 {ees c)}
	\repeat tremolo 4 {ees16( c} \repeat tremolo 4 {ees c)}
% mesure 66 à 70
	\repeat tremolo 4 {ees16( c} \repeat tremolo 4 {ees c)}
	\repeat tremolo 4 {ees16(_\crescmarkup c} \repeat tremolo 4 {ees c)}
	cis8\<( e4 gis8) a8.( cis16) a4
	<cis, gis'>8\mf r <cis fis>\< r <cis e> r <gis dis'> r
	cis4.\f( dis16 cis) gis8(\< gis'4 gis,8)\!
% mesure 71 à 75
	<cis gis'>8 r <fis, cis' fis> r <e cis' e> r <gis dis'> r \mark \default
	cis8.->\ff dis16 e-> cis-. r8 r16 e8-> fis16 a-> gis-. r8
	gis8.-> a16 cis-> b r8 gis!16_\dimmarkup fis r8 e16 cis r8
	fis4.\mf( e8) dis4\>( \tuplet 3/2 {cis8 b gis)}
	cis4.\p\>( b8) gis4( \tuplet 3/2 {e8 fis fisis)}
% mesure 76 à 80
	gis8-.\pp(\moltocresc gis-. gis-.\! gis-.) gis-.( gis-. gis-. gis-.)
	gis4( b\f\> a gis)\!
	<<{\repeat tremolo 32 <a, fis'>32} \\ {s2\ff s4\dimi s\!}>>
	\repeat tremolo 32 <a fis'>32\p\> \mark \default
	<a fis'>8\! <fis' a>4--\pp <fis a>16-- <fis a>( <fis a>8) <fis a>4-- <fis a>16 <fis a>(
% mesure 81 à 85
	<fis a>8) <fis a>4-- <fis a>16-- <fis a>( <fis a>8) <fis a>4 <fis a>16 <fis a>( 
	<d a'>8) <d a'>4 <d a'>16 <d a'>( <d a'>8) <a a'>4 <a a'>16 <a a'>(
	<a a'>8) <a a'>4 <a a'>16 <a a'>( <a a'>8) <a a'>4 <fis' a>16 <fis a>(
	<fis a>4)\pp\<( <d' fis>2\> <fis, a>4\!)
	<fis a>2 r4 <fis a>
% mesure 86 à 90
	<fis a>4\<( <d' fis>2\> <fis, a>4\!)
	<fis a>2 r4 <fis a>(
	<fis a>8) <a fis'>4-> <fis a>8(\cres <g b>\!) <b g'>4-> <g b>8(
	<fis a>8) <a fis'>4->\< <fis a>8( <g b>) <b g'>4-> <g b>8 \mark \default
	<c g'>1->\ff
% mesure 91 à 95
	<c g'>\ffz
	c8.\f-> d16 f! e r8 e8.-> a16 g e r8
	e16\<( f g c)\! c8.-> e,16-. e16( f g c) c8.-> e,16-.
	e16( f g c) c8.->\fz e,16 g8.\fz c,16 e8.\fz g,16
	c8 r r4 r2 \mark \default
% mesure 96 à 100
	R1*2
	f4->\pp aes-> f-> ees->
	c-> f8-. ees-. c4-> aes8-. g-.
	aes16( bes c) c-. \repeat tremolo 4 c16 f(_\cres g\! aes) aes-. \repeat tremolo 4 aes16
% mesure 101 à 105
	aes\<( bes c) c-. \repeat tremolo 4 c16 f( g aes) aes-. \repeat tremolo 4 aes16 \mark \default
	f(\ff g aes) aes-. f8 r aes,16( bes c) c-. c8 r
	f,16( g aes) aes-. aes8 r aes16( bes c) c-. c8 r
	aes16( bes c) c-. c8 r f,16( g aes) aes-. aes8 r
	c,16( e! f) f-. f8 r c,16( e f) f-. f8 r
% mesure 106 à 110
	d'4\f( g8 f) <d, d'>2
	<<{c'4( bes8 aes)}\\{d,4. r8}>> f2
	<d bes'>4( aes'8 f_\dimi) <d bes'>4(\! aes'8 f)
	bes4\p( aes8 f) bes4\>( aes!8 f)
	bes2\pp( aes
% mesure 111 à 115
	f f') \mark \default
	f16\ppp( a! f a  f a f a  f a f a  f a f a)
	f( a f a  f a f a  f a f a  f a f a)
	f( a f a  f a f a  f a f a  f a f a)
	f( a f a f\< a f a) f( a f c a f a c) 
% mesure 116 à 120
	f8\mf( a4 c8)\< d8.( f16-. d4)
	c8(\mf a f8\< g16 a\>) c2
	c,8.->\fz d16-. f-. d-. r8 c8.->\fz d16-. f-. d-. r8
	c16\<( f a c) c8.(\> a16-. f4.)\! r8
	c16( f a c) c8.( a16-. f4.) r8 \mark \default
% mesure 121 à 125
	c16-.(_\pstaccato f-. a-. c-. c8. a16-. f8) r8 r4
	f,16-.( a-. c-. f-. f8.-> c16-. a8-.) r8 r4
	f16_\ppleggiero( aes des f f8.-> des16-.) aes( des f aes aes8.-> f16-.)
	bes,( des ges bes bes8.-> des,16) bes( des ees bes' bes8. des,16-.)
	aes( des f aes aes8.-> f16-.) aes,\<( des ees aes aes8.-> f16-.)
% mesure 126 à 130
	aes,(\mf c ees aes aes8.-> c,16) aes( c ees aes aes8.-> ees16-.)
	aes,4\dimi( des)\! ees( fes)
	e!2.\> fis8( g) \mark \default
	g4\p( d) r2
	g,4(\pp~ g16 bes d g) d4~( d16 c bes! ges)
% mesure 131 à 135
	f8 r r4 r2
	bes4(~ bes16\< des f bes) f4~( f16 ees des bes)
	aes8\<( des4 f8) aes8.( des16 aes4)
	aes8( f des ees16 f) aes2(\f
	gis8) e!( b\> e16 fis gis2)
% mesure 136 à 140
	aes16\p-. aes-. f!( aes) aes8 r aes16-.\> aes-. f( aes-.) aes8 r
	b1-+\pp \mark \default
	c16\fp c r bes aes( f) r f f8( ees c4)
	f8( ees16) ees-. c4 f8( ees16) ees-. c4
	c8( ees) ees\prall( des) c\prall\<( bes) aes\prall( f)
% mesure 141 à 145
	f16\fp f r aes g g r c, f\fp f r aes g g r c,
	c'8\fp( e!) f( aes) aes\(( bes->) ees,16( d! f ees)\)
	aes8\(( bes) ees,16( d f ees)\) aes8\(( bes->) ees,16( d f ees)\)
	aes8(\< bes->) aes( bes->) aes( bes->) aes( g->)
	f(\< g->) f( g->) f( g->) f( des->) 
% mesure 146 à 150
	\acciaccatura c8( \mark \default  c'16\fz) c r bes aes aes r f c'2\fz
	\acciaccatura c,8( c'16\fz) c r bes aes aes r f16 c'2\fz
	c4(_\piuf des) c( des)
	c\< des ees8( des c bes)\!
	f4( g f ees8 c)
% mesure 151 à 155
	f4\>( g f ees8 c)
	f1\p(
	f4)\< ges2->\>( des4)
	c1\>
	aes2.\!_\ritard( g4) \mark \default
% mesure 156 à 160
	f4\pp--^\intempo( g--) a!--( g8-. f-.) 
	g8( d'16 g, f8-. d-.) d2
	g4( f8 d) c8\<( f a c)
	d4.\mf( bes8) a16( c c4.->)
	r8 a16\p a r8 bes16 bes r8 c16 c r8 c16 c
% mesure 161 à 165
	r8 d16 d r8 e16 e r8 f16 f r8 d16 d
	r8 f16 f r8 f16\< f r8 f16 f r8 f16 f\!
	<d f>4(\< <d g>8 d) c( f a c)
	<d, bes'>2\f <c a'>
	<d f>4(\< <d g>8 d) c( f a c)\!
% mesure 166 à 170
	<d, bes'>2 <c a'>(
	<c a'>8)\ff^\moltoritard c'4 f8(~ f\> a, g4)\! \mark \default
	f2 a8\>(^\intempo_\dolce g f d\!)  
	c8( a~ a16\> c a f) d4(~ d16 c f g\!)
	a8( c f d) d4\p( a8) r
% mesure 171 à 175
	c4\>( f,8)\! r8^\pocoritard a2\pp~(
	a2 g)
	f2^\intempo_\cres a\!-+
	c->\<-+ f4->-+ a->-+
	\ottava #1 \set Staff.ottavation = #"8" c16(\ff\< f a c) c8.( a16)\! f8 \ottava #0 r r4
% mesure 176 à 180
	c,16\<( f a c) c8.->\fz( a16) f8 r r4
	c,16\<( f a c) c8.->\fz( a16) f8 r <a f'>\ff r
	<a f'>2.-> r4 \bar "|."
}
