\version "2.18.0"

pPiece = "No. 6. Quintett."

Markings = {\time 4/4 \tempo "Allegro moderato" \partial 2 s2 s1*128 s2 \tempo "poco ritard." s2 s1 \tempo "a tempo" s1*7\bar "||"}
incmidi = "midi6.ily"

flautoI = \relative c''' {\key bes \major
	\partial 2 r2 |
	R1*23 |
	bes1\p ~|
	bes |
	d, ~|
	d2 c4( g) |
	a2 r |
%29
	R1*7 |
	g'1( |
	f4) r r2 |
	R1*4 |
%42
	r2 g2(\p |
	f2. e4) |
	d2 r |
	R1*10 |
	c1 ~|
	c4 r r2 |
	f1 ~|
	f4 r f2( |
	es4) r r2 |
%60
	R1*20 |
	es1\p ~|
%81
	es ~|
	es2 r4 c' |
	c( f es d) |
	c2 g4.( f8) |
	es4( g c es) |
	d2 r |
	R1*2 |
	f,1(\p |
	g) ~|
%91
	g2 a4( bes) |
	f1 ~|
	f2 r |
	R1*3 |
	r2 bes4\p bes |
	es( d) c( bes) |
	a2( bes4) d |
	d( c8 bes) a4( bes8 g) |
%101
	g2( fis) |
	R1*15 |
	bes2.\f f4 |
	f'2( es) |
	d( c4)\p g |
	bes2( a4.) bes8 |
%121
	bes2\f r4 f |
	f'2( es) |
	d1\p ~|
	d4 r r2 |
	R1*6 |
%131
	d1\p ~|
	d |
	d |
	d4 r d_"dim." r |
	d2 r |
	f,\p r |
	bes1\fermata |
}

flautoII = \relative c'' {\key bes \major
	\partial 2 r2 |
	R1*23 |
	d1\p ~|
	d |
	bes |
	g1 |
	fis2 r |
%29
	R1*7 |
	e'1( |
	d4) r r2 |
	R1*4 |
%42
	r2 e2(\p |
	d2. cis4) |
	d2 r |
	R1*10 |
	a2.(\p f4) |
	f r r2 |
	d'1 ~|
	d4 r d2( |
	c4) r r2 |
%60
	R1*20 |
	es1\p( |
%81
	des) |
	c2 r |
	R1*6 |
	f1\p ~|
	f |
%91
	es ~|
	es |
	d2 r |
	R1*23 |
	d2.\f d4 |
	d2( c) |
	a r |
	R1 |
%121
	d2.\f d4 |
	d2 r |
	R1*8 |
%131
	bes'1\p ~|
	bes |
	bes |
	bes4 r bes_"dim." r |
	bes2 r |
	d,\p r |
	bes1\fermata |
}

violinI = \relative c' {\key bes \major
	\partial 2 r2 |
	R1*23 |
	r8 bes\pp bes( d) d( f) f( bes) |
	bes( d,) d( f) f( bes) bes( d) |
	d( d,) d( g) g( bes) bes( d) |
	d2(\sf c) |
	r8 d,\p\< d( fis) fis( a) a( d) |
	d2\sf r2 |
	r8 d,\p\< d( fis) fis( a) a( c) |
%31
	c2\sf r |
	r8 d,\p\< d( g) g( bes) bes( d) |
	d2\sf r |
	r8 g, g( a) r bes bes(\cresc e) |
	r a, a( e') r d d( g) |
	r a,\f a( cis) cis( e) e( g) |
	r4 a,8(\p f') r4 bes,8( cis) |
	r4 a8( d) r4 bes8( d) |
	r4 cis8( a) r4 e'8( gis,) |
	r a a( cis) cis(\cresc e) e( g) |
%41
	r4 a,8(\f f') r4 g,8( cis) |
	r4 f,8( d') r4 d,8(\p e) |
	f4 r r a,8( cis) |
	d4 r r2 |
	R1*10 |
	r8 c\p c( f) f( a) a( c) |
	c( f,) f( as) as( c) c( f) |
	r f, f( g) g( b) b( d) |
	r f, f( as) r g g( d') |
	r c, c( es) es( g) g( bes) |
	bes2( as) |
%61
	r8 bes,\< bes( es) es( g) g( c) |
	c2\sf r |
	r8 c,\< c( es) es( g) g(\! c) |
	c2\sf r2 |
	r8 es,\< es( g) g( c) c( es)\! |
	r4 g,8(\p es') r4 f,8( b) |
	r4 es,8( c') r4 d,8( as') |
	r4 d,8( g) r4 d8( fis) |
	r f!\sf f( g) g( d') d( f) |
	r4 d8(\f g) r4 b,8( d) |
%71
	r4 g,8( es') r4 f,8( c') |
	c4 r <b d,> r |
	<c es,> r r2 |
	R1*6 |
	r8 bes,\p bes( es) es( g) g( bes) |
%81
	bes2 r |
	r8 c, c( es) es( as) as( c) |
	c2 r |
	r8 g g( c) r b b( f') |
	r g,\< g( c) c( es) es( d)\! |
	d2\sf r |
	r8 d,\p\< d( g) g( bes) bes( d) |
	e2\sf r |
	r8 f,\p f( a) a( c) c( f) |
	f( g,) g( bes) bes(\cresc d) d( g)\! |
%91
	r8 g,\p g( c) r g g( es') |
	r c,\cresc c( f) f( a) a( c) |
	d,( f) f( bes) r d d( g) |
	r d d( g,) r c c( g) |
	c2\sf r |
	r8 f,\mf f( bes) bes( d) d( c) |
	r bes\p bes( d) r bes bes( f) |
	r es es( g) a( c) c( es) |
	es(\< a,) a( bes) bes( d) d( f) |
	g,2\sf r |
%101
	r8 a\p a( c) c( d) d( fis) |
	r bes, bes( c) r a a( c) |
	r f,\< f( bes) bes( d) d( f) |
	f2\sf r |
	r8 f,\p f( g) g( b) b( c) |
	c4 r r2 |
	R1*3 |
	r8 f, f(\< as) as( d) d( f) |
%111
	f2\sf r |
	r8 d,\p d( f) f( g) g( b) |
	c4 r r2 |
	R1*3 |
	d,8(\f f) f( bes) bes( d) d( f) |
	f2( es) |
	d r4 g,4\p |
	r bes r a |
%121
	bes8( f) f( bes) bes( d) d( f) |
	f2( es) |
	d d,4\p r |
	d r r2 |
	R1*2 |
	r8 bes\p bes( d) d(_"dim." f) f( bes) |
	bes2 r |
	r8 bes, bes( d) d( f) f( bes) |
	bes2 r |
%131
	r8 bes,\p bes( d) d( f) f( bes) |
	bes(\< d,) d( f) f( bes) bes( d) |
	d(\f\> bes) bes( f) f( d) d( bes)\! |
	bes4 r bes_"dim." r |
	bes2 r |
	bes\p r |
	bes1\fermata |
}

violinII = \relative c' {\key bes \major
	\partial 2 r2 |
	R1*23 |
	r4 bes4\pp bes( d) |
	f( bes,) d( f) |
	bes bes,( d g) |
	g1(\sf |
	fis4) a,(\p\< d fis) |
	g2\sf r |
	r4 c,(\p\< d es) |
%31
	d2\sf r |
	r4 bes(\p\< d g) |
	g2\sf r |
	r4 g r g\cresc |
	r g r g |
	r e(\f a cis) |
	r f,8(\p d') r4 g,8( bes) |
	r4 f8( a) r4 e8( bes') |
	r4 e,8( a) r4 gis8( e) |
	r4 e4(\cresc a) a |
%41
	r4 f8(\f a) r4 e8( g) |
	r4 d8( f) r4 bes,8(\p d) |
	d4 r r a |
	a r r2 |
	R1*10 |
	r4 a(\p c f) |
	r c( f as) |
	r d,( f g) |
	r d r d |
	r g,( c es) |
	g2( f) |
%61
	g4 g,(\< bes es) |
	f2\sf r |
	r4 g,4(\< c es)\! |
	f2\sf r |
	r4 c(\< es g)\! |
	r es8(\p c') r4 d,8( f) |
	r4 c8( es) r4 c8( d) |
	r4 b8( d) r4 c8( d) |
	r4 d(\< f g) |
	r g8(\f d') r4 f,8( b) |
%71
	r4 es,8( c') r4 c,8( f) |
	<es g,>4 r <g g,> r |
	<es c> r r2 |
	R1*6 |
	r4 g,(\p bes es) |
%81
	<es g,>2 r |
	r4 as,( c es) |
	as2 r |
	r4 es r d |
	r c(\< es g)\! |
	fis2\sf r |
	r4 bes,(\p\< d g) |
	bes2\sf r |
	r4 c,(\p f a) |
	r d,( g bes) |
%91
	r es, r es |
	r a,(\cresc c f) |
	r4 d r bes' |
	r g r g |
	a2\sf r |
	r8 d,\mf d( f) f( bes) bes( a) |
	bes4 r r2 |
	r8 g,\p g( c) c( es) es( c') |
	c( c,)\< c( d) d( f) f( bes) |
	g2\sf r |
%101
	r4 d(\p a' c) |
	bes bes r f |
	r d(\< f bes) |
	d2\sf r |
	r4 f,\p r f |
	e r r2 |
	R1*3 |
	r4 d(\< f as)\! |
%111
	d2\sf r |
	r4 g,,(\p d' f |
	e) r r2 |
	R1*3 |
	bes8(\f d) d( f) f( bes) bes( d) |
	d2( c) |
	a r4 es |
	r d r es |
%121
	d\f d8( f) f( bes) bes( d) |
	d2( c) |
	a c,4\p r |
	bes r r2 |
	R1*2 |
	r4 bes(\p a_"dim." as) |
	g2 r |
	r4 bes( a as) |
	g2 r |
%131
	r4 bes\p bes( d |
	f)\< bes( d f |
	bes)\f\> f( d bes)\! |
	bes r bes_"dim." r |
	bes2 r |
	bes\p r |
	bes1\fermata |
}

viola = \relative c {\key bes \major \clef "alto"
	\partial 2 d4(\mf es) |
	f2 f4( es) |
	d2(\< es4 f)\! |
	g(\> bes a g)\! |
	f2( bes) |
	<<{
		bes a |
		fis1
	} \\ {
		g2\p\< g |
		a1\sf
	}>> |
	bes2\p f! |
	f( d4) bes' |
	a2( as) |
	g( <f as>) |
%11
	<es g>( <g b>) |
	<<{
		b( c) ~|
		 c4
	} \\ {
		g1 ~|
		 g4
	}>> r r2 |
	R1*2 |
	r2 d4(\mf es) |
	f2 f4( es) |
	d2\< es4( f)\! |
	g( bes\> a g)\! |
	f2( bes) |
%21
	<g bes>\< <g a> |
	<fis a>1\sf |
	bes2(\p f!) |
	f1 ~|
	f2 r |
	R1 |
	g1(\sf |
	a4) fis(\p\< a d) |
	d2\sf r |
	r4 a(\p\< c) c |
%31
	a2\sf r |
	r4 g(\p\< bes d) |
	d2\sf r |
	r4 e r e\cresc |
	r e r e |
	r cis(\f f a) |
	R1*3 |
	r4 a,4(\cresc e' g) |
%41
	R1*2 |
	r2 f4(\mf g) |
	<<{
		a2 d,4( e) |
		f1 |
		e2 f4( g) |
		g2( f)
	} \\ {
		f d |
		d1 |
		e2 c |
		c( f)
	}>> |
	R1*4 |
%52
	<<{
		c2( bes) |
		a a4 bes |
		a2( g)
	} \\ {
		a(\p g) |
		e f4 f |
		f2( e)
	}>> |
	f1 |
	r4 as( c f) |
	r g,( d' f) |
	r g r g |
	r2 c,2 ~|
	c2 d |
%61
	es4 es,(\< g bes)\! |
	c2\sf r |
	r4 es,(\< g c)\! |
	c2\sf r |
	r4 g(\< c es)\! |
	R1*3 |
	r4 g(\< d f)\! |
	R1*2 |
%72
	r2 r4 g,\f |
	<<{
		es'2 es4 d |
		c2 c ~|
		c4^"dim." c( bes as) |
		as2( g) |
		c2\p\< d2 |
		d1\sf
	} \\ {
		c2 g4 g |
		as2 as ~|
		as4 as g f |
		f2( es) |
		as as |
		g1
	}>> |
	es'2\p bes |
	bes1( |
%81
	des) |
	r4 es,( as c) |
	c2 r |
	r4 c r d |
	r es(\< a a)\! |
	a2\sf r |
	r4 g,(\p\< bes d) |
	bes2\sf r |
	r4 a(\p c f) |
	r bes,( d g) |
%91
	r bes, r bes |
	r f(\cresc a c) |
	r4 bes r g' |
	r bes, r c |
	r2 f,\f |
	f f4( es) |
	d2 es4( f) |
	g( bes) a( g) |
	f2( bes) |
	<<{
		g\< a\! |
		a1 |
	} \\ {
		s2 g |
		d1\sf |
	}>>
%102
	d4(\p e) f2 |
	r4 bes(\< d f) |
	as2\sf r |
	r4 d, r g |
	g r r2 |
	R1*3 |
	r4 as,(\< d f)\! |
%111
	as2\sf r |
	R1*5 |
	f,8(\f bes) bes( d) d( f) f( bes,) |
	bes2( a4 g) |
	fis2 r4 c'\p |
	r f r f |
%121
	f8(\f bes,) bes( d) d( f) f( bes,) |
	bes2( a4 g) |
	fis2 a4\p r |
	g r r2 |
	R1*6 |
%131
	r4 d(\p f bes |
	d)\< f,( bes d |
	f)\f\> d( bes f)\! |
	d r d_"dim." r |
	d2 r |
	<<{
		bes'1(\> |
		f)\!\fermata |
	} \\ {
		d\p ~|
		d |
	}>>
}

sopranosolo = \relative c'' {\key bes \major \clef "soprano"
	\partial 2 r2 |
	R1*23 |
	r2 d |
	f2. d4 |
	bes bes d d |
	d2 c4 g |
	a2 r4 d |
	d c8 bes a4 bes8 g |
	g4 fis r es' |
%31
	d a bes c |
	c4. bes8 bes4 r8 d |
	d4 c8 bes a4 bes8 g |
	d'4 cis r bes |
	a2 r4 d4 |
	cis2 r |
	f cis4.( d8) |
	d2 bes4. a8 |
	a2( gis4.) e'8 |
	e2\sf r |
%41
	f2 cis4.( d8) |
	d2 bes4. a8 |
	a2. a4 |
	a1 |
	R1*9 |
%54
	r2 c2 |
	f2. c4 |
	f es d c |
	c2 b4 d |
	g2 r4 g |
	es d c bes! |
	bes2 as4. g8 |
%61
	g2 r4 g |
	c es8 d c4 b8 c |
	c4 g r g |
	c es d c |
	c4. g8 g2 |
	es' b4.( c8) |
	c2 as4. g8 |
	g2( fis4.) d'8 |
	d2\sf r |
	g\f d4.( es8) |
%71
	es2 d4. c8 |
	c2( b4.) c8 |
	c2 r2 |
	R1*5 |
	r2 bes |
	es2. bes4 |
%81
	des des c bes |
	as2 bes4 c |
	c f es d! |
	c2 g4. f8 |
	es2 r4 es' |
	d4 a8 bes c4 bes8 a |
	a4 bes r d^"cresc." |
	g e d c |
	c4. f8 f2 ~|
	f es!4 d |
%91
	es1 ~|
	es2 d4( c) |
	d2 bes4 c |
	d2( c4) bes |
	a( c f2)\f ~|
	f1 ~|
	f4 r bes, bes |
	es( d) c( bes) |
	a2 r4 d |
	d c8 bes a4 bes8 g |
%101
	g2 fis4 r |
	r2 r4 f! |
	f'2. f4 |
	f es d c |
	c2 b4. c8 |
	c2 r |
	R1*2 |
	r2 f,2 |
	f'1 ~|
%111
	f4 es d c |
	c2 b4. c8 |
	c1 ~|
	c4 f, d' c |
	bes a g es' |
	d2 c4. bes8 |
	bes2 r4 f |
	f'2 es |
	d( c4) g |
	bes2 a4. bes8 |
%121
	bes2 r4 f |
	f'2 es |
	d1 ~|
	d2( c4) g |
	bes1 ~|
	bes2 a4. bes8 |
	bes2 r |
	R1*2 |
	es1 |
%131
	d1 ~|
	d |
	d |
	d2 r |
	R1*3 |
}

sopranosoloLyrics = \lyricmode {
	Mein Gott! be -- trübt ist mei -- ne See -- le in mir, war -- um hast
	du mei -- ner ver -- ges -- sen? war -- um muss ich so trau -- rig gehn?
	war -- um hast du mei -- ner ver -- ges -- sen? war -- um? war -- um?
	wenn mein Feind, wenn mein Feind mich drängt, wenn mein Feind, wenn
	mein Feind mich drängt? Mein Gott! be -- trübt ist mei -- ne See -- le
	in mir, be -- trübt ist mei -- ne See -- le in mir, war -- um hast du
	mei -- ner ver -- ges -- sen? war -- um muss ich so trau -- rig gehn,
	wenn mein Feind, wenn mein Feind mich drängt, wenn mein Feind, wenn
	mein Feind mich drängt. Mein Gott! be -- trübt ist mei -- ne
	See -- le, be -- trübt ist mei -- ne See -- le in mir war -- um hast
	du mei -- ner ver -- gess -- en? war -- um muss ich so trau -- rig gehn,
	wenn mein Feind mich drängt, wenn mein Feind mich drängt, wenn mein
	Feind mich drängt? War -- um hast du mei -- ner ver -- ges -- sen?
	Mein Gott! be -- trübt ist mei -- ne See -- le in mir, be -- trübt ist
	mei -- ne See -- le in mir, ist mei -- ne See -- le, mei -- ne See -- le
	in mir, be -- trübt ist mei -- ne See -- le in mir, be -- trübt ist
	mei -- ne See -- le in mir, mein Gott!
}

tenorsoloI = \relative c' {\key bes \major \clef "tenor"
	\partial 2 bes4(\mf c) |
	d2 d4 c |
	bes2 c4 d |
	es es es es |
	es2 d |
	bes\< c |
	d1\sf |
	d4 c a4. bes8 |
	bes2 r4 d |
	f c c d |
	es2. d4 |
%11
	c2 d |
	d es ~|
	es es4 es |
	es2 d |
	c bes |
	f'1\< ~|
	f\! |
	bes,2 r |
	R1*2 |
%21
	bes2\< c |
	d1\sf |
	d4 c a4. bes8 |
	bes1 ~|
	bes2 r |
	R1*17 |
%43
	r2 d4( e) |
	f2 f4 e |
	d2 d4 d |
	c g a bes |
	bes2 a |
	c c |
	f1 |
	f4 f e d |
%51
	c1 |
	c2 bes |
	a a4 bes |
	a2( g4.) a8 |
	a2 r |
	R1*16 |
%72
	r2 r4 g\f |
	g'2 g4 f |
	es2 d4 es |
	f d es f |
	bes,2 es |
	es2 f |
	g1 |
	g4 f d4. es8 |
	es2 bes |
%81
	es1 ~|
	es4 es des c |
	c2 f, |
	c'2. d4 |
	es1 |
	a,!2 r4 d |
	d d^"cresc." d d |
	e2 e |
	f f |
	g1 ~|
%91
	g2 f4( es) |
	f2. f4 |
	f2 bes, |
	R1 |
	r2 bes4(\f c) |
	d2 d4 c |
	bes2 c4 d |
	es es es es |
	es2 d |
	bes c |
%101
	d1 |
	d4 c a4. bes8 |
	bes2 r |
	R1 |
	r2 f' |
	e c4( d) |
	es!2 d |
	d4 c bes c |
	bes2( a) |
	bes r |
%111
	R1 |
	r2 f' |
	e c4( d) |
	es2 d |
	d4 c bes c |
	bes2( a) |
	bes r |
	d2\f c |
	a c4 es |
	d2 c4( f) |
%121
	f2 r |
	d c |
	a d ~|
	d( e |
	f) g4( f) |
	es2. es4 |
	d2 r |
	bes2( c) |
	d r |
	bes( c) |
%131
	d1 ~|
	d ~|
	d ~|
	d2 r |
	R1*3 |
}

tenorsoloILyrics = \lyricmode {
	Der Herr hat des Ta -- ges ver -- heis -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Got -- te
	mei -- nes Le -- bens, zu dem Got -- te mei -- nes Le -- bens, und des
	Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und des Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Got -- te
	mei -- nes Le -- bens, und be -- te zu dem Got -- te mei -- nes
	Le -- bens, mei -- nes Le -- bens. Der Herr hat des Ta -- ges
	ver -- hei -- sen sei -- ne Gü -- te, und des Nachts sin -- ge ich
	zu ihm und be -- te zu dem Got -- te mei -- nes Le -- bens und
	be -- te zu dem Got -- te mei -- nes Le -- bens, und des Nachts
	sin -- ge ich zu ihm, und des Nachts sin -- ge ich zu ihm, zu ihm,
	zu ihm.
}

tenorsoloII = \relative c' {\key bes \major \clef "tenor"
	\partial 2 bes2\mf |
	bes bes4 a |
	bes2 bes4 bes |
	es d c bes |
	a2 bes |
	bes\< a |
	a1\sf |
	bes4 bes a4. f8 |
	f2 r4 d' |
	c c c bes |
	bes2 as |
%11
	g b |
	b c ~|
	c c4 c |
	c2 bes |
	g4( a) bes2 |
	a bes4 c |
	d2 d4 c |
	bes2 c4 d |
	es es es es |
	es2 d |
%21
	bes2\< a |
	a1\sf |
	d4 bes a f |
	f1 ~|
	f2 r |
	R1*17 |
%43
	r2 a2 |
	d a4 a |
	bes2 bes4 a |
	g g f g |
	g2 f |
	R1 |
	a2 a |
	bes1 |
%51
	bes4 bes a bes |
	a2 g |
	e f4 f |
	f2( e4.) f8 |
	f2 r |
	R1*16 |
%72
	r2 r4 g\f |
	es'2 es4 d |
	c2 c4 c |
	c c bes as |
	as2 g |
	c2 d |
	d1 |
	es4 es d bes |
	bes2 r |
%81
	r g |
	c1 ~|
	c4 c bes as |
	g2. b4 |
	c1 |
	a!2 r4 c4 |
	bes bes_"cresc." bes bes |
	bes2 bes |
	c c |
	d1( |
%91
	c2) c |
	es2. es4 |
	d1( |
	g,2) c ~|
	c4 r bes2\f |
	bes bes4 a |
	bes2 bes4 bes |
	bes g a bes |
	c2 bes |
	g c |
%101
	c1 |
	bes4 bes a f |
	f2 r |
	R1 |
	r2 d' |
	c c |
	c bes |
	bes4 a g es' |
	d2( c) |
	d r |
%111
	R1 |
	r2 d |
	c1 ~|
	c2 bes ~|
	bes es4 c |
	d2( es) |
	d r |
	d2\f a |
	a g4 c |
	bes2 es |
%121
	d r |
	f, c' |
	c1 |
	bes2( c |
	d) es4( d) |
	c2. c4 |
	bes2 r |
	g2( a) |
	bes r |
	g( a) |
%131
	bes1 ~|
	bes ~|
	bes ~|
	bes2 r |
	R1*3 |
}

tenorsoloIILyrics = \lyricmode {
	Der Herr hat des Ta -- ges ver -- heis -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Got -- te
	mei -- nes Le -- bens, zu dem Got -- te mei -- nes Le -- bens, der Herr
	hat des Ta -- ges ver heis -- sen sei -- ne Gü -- te, und des Nachts
	sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, des Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Gott des
	Le -- bens, und be -- te zu dem Got -- te mei -- nes
	Le -- bens, mei -- nes Le -- bens. Der Herr hat des Ta -- ges
	ver -- hei -- sen sei -- ne Gü -- te, und des Nachts sin -- ge ich
	zu ihm und be -- te zu dem Got -- te mei -- nes Le -- bens und
	be -- te zu dem Got -- te mei -- nes Le -- bens, und des Nachts
	sin -- ge ich zu ihm, und des Nachts sin -- ge ich zu ihm, zu ihm,
	zu ihm.
}

bassosoloI = \relative c' {\key bes \major \clef "bass"
	\partial 2 bes2\mf |
	bes2 f4 f |
	f2 es4 d |
	g bes a g |
	f2 bes |
	g\< g |
	fis1\sf |
	g4 e f es |
	d2 r4 bes' |
	a a as as |
	g2 f |
%11
	es g |
	g c,4 g' |
	c bes a! g |
	f2. f4 |
	es2 f4( g) |
	f2 f4 f |
	bes2 bes4 a |
	bes2 bes4 bes |
	bes d c bes |
	a2 bes |
%21
	g\< g |
	fis1\sf |
	g4 e f es |
	d1 ~|
	d2 r |
	R1*17 |
%43
	r2 f4( g) |
	a2 d,4 e |
	f2 f4 f |
	e e f e |
	e2 f |
	R1 |
	f2 f |
	g1 |
%51
	g4 g f e |
	f2 d |
	cis d4 d |
	c!2 c |
	f r |
	R1*16 |
%72
	r2 r4 g\f |
	c2 g4 g |
	as2 as4 as |
	as as g f |
	f2 es |
	c'2 c |
	b1 |
	g4 a! bes! bes |
	bes2 r |
%81
	r es, |
	as1 ~|
	as4 as g f |
	g2 g |
	g4( bes a! g) |
	fis2 r4 fis4 |
	g g^"cresc." g d' |
	c2 c |
	c f, |
	bes1 ~|
%91
	bes2 a4( g) |
	a2. a4 |
	bes2.( a4 |
	g1) |
	f2 f\f |
	bes f4 f |
	f2 g4 f |
	g bes a g |
	f2 f |
	g a |
%101
	a1 |
	g4 e f es |
	d2 r |
	R1 |
	r2 g |
	g4( bes a) g |
	f2. fis4 |
	g a bes g |
	f1 |
	f2 r |
%111
	R1 |
	r2 g |
	g4( bes a) g |
	f2. fis4 |
	g a bes g |
	f1 |
	f2 r |
	f2\f a4( g) |
	fis2 g |
	f! f |
%121
	f r |
	f a4( g) |
	fis2( a) |
	bes1 ~|
	bes2 f |
	f2. f4 |
	f2 r |
	g1 |
	f2 r |
	g1 |
%131
	f ~|
	f |
	f ~|
	f2 r |
	R1*3 |
}

bassosoloILyrics = \lyricmode {
	Der Herr hat des Ta -- ges ver -- heis -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Got -- te
	mei -- nes Le -- bens, und be -- te zu dem Got -- te mei -- nes
	Le -- bens, der Herr hat des Ta -- ges ver heis -- sen sei -- ne
	Gü -- te, und des Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, des Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Gott des
	Le -- bens, und be -- te zu dem Got -- te mei -- nes
	Le -- bens, mei -- nes Le -- bens. Der Herr hat des Ta -- ges
	ver -- hei -- sen sei -- ne Gü -- te, und des Nachts sin -- ge ich
	zu ihm und be -- te zu dem Got -- te mei -- nes Le -- bens und
	be -- te zu dem Got -- te mei -- nes Le -- bens, und des Nachts
	sin -- ge ich zu ihm, und des Nachts sin -- ge ich zu ihm, zu ihm,
	zu ihm.
}

bassosoloII = \relative c {\key bes \major \clef "bass"
	\partial 2 d4(\mf es) |
	f2 f4 es |
	d2 es4 f |
	bes, bes bes bes |
	bes2 bes |
	es\< es |
	d1\sf |
	g4 g f f |
	bes,2 r |
	R1 |
	r2 f'2 |
%11
	g1 |
	c,2. r4 |
	r2 c4 bes |
	a2 bes |
	c d4( es) |
	f( es) d es |
	f2 f4 es |
	d2 es4 f |
	g bes a g |
	f2 bes, |
%21
	es\< es |
	d1\sf |
	g4 g f f |
	bes,1 ~|
	bes2 r |
	R1*17 |
%43
	r2 a2 |
	d d4 d |
	d2 d4 d |
	e e c c |
	c2 f, |
	R1 |
	d'2 d |
	g1 |
%51
	e4 e f g |
	f2 g, |
	a d4 d |
	c2 c |
	f r |
	R1*16 |
%72
	r2 r4 g\f |
	c,2 c4 c |
	c2 c4 c |
	d bes c d |
	es2 es |
	as2 as |
	g1 |
	c,4 c bes as |
	g2 r |
%81
	R1 |
	r2 c |
	f1( |
	es4) f es d |
	c1 |
	d2 r4 d |
	g g_"cresc." g g |
	g2 g |
	a a |
	bes1 |
%91
	c, |
	f2. f4 |
	bes4( a g f |
	e1) |
	es!2 d4(\f es) |
	f2 f4 es |
	d2 es4 f |
	bes, bes bes bes |
	bes2 bes |
	es es |
%101
	d1 |
	g4 g f f |
	f2 r |
	R1 |
	r2 g |
	c,2. bes4 |
	a2 bes |
	d1( |
	f2 es) |
	d2 r |
%111
	R1 |
	r2  g |
	c,2. bes4 |
	a2 bes |
	es2. es4 |
	f1 |
	bes,2 r |
	bes\f c |
	d es |
	f f, |
%121
	bes r |
	bes c |
	d( fis) |
	g g |
	f1 |
	f, |
	bes2 r |
	es1 |
	bes2 r |
	es1 |
%131
	bes ~|
	bes |
	bes |
	bes2 r |
	R1*3 |
}

bassosoloIILyrics = \lyricmode {
	Der Herr hat des Ta -- ges ver -- heis -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Got -- te
	mei --nes Le -- bens, der Herr hat des Ta -- ges ver -- heis -- sen
	sei -- ne Gü -- te, und des Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, des Nachts sin -- ge ich zu ihm.
	Der Herr hat des Ta -- ges ver -- hei -- sen sei -- ne Gü -- te, und
	des Nachts sin -- ge ich zu ihm, und be -- te zu dem Got -- te
	und be -- te zu dem Got -- te mei -- nes
	Le -- bens, mei -- nes Le -- bens. Der Herr hat des Ta -- ges
	ver -- hei -- sen sei -- ne Gü -- te, und des Nachts sin -- ge ich
	zu ihm und be -- te zu dem Got -- te mei -- nes Le -- bens und
	be -- te zu dem Got -- te mei -- nes Le -- bens, und des Nachts
	sin -- ge ich zu ihm, und des Nachts sin -- ge ich zu ihm, zu ihm,
	zu ihm.
}

cello = \relative c' {\key bes \major \clef "bass"
	\partial 2
	<<{
		bes4( c) |
		d2 d4( c) |
		bes2( c4 d) |
		es es es es |
		es2( d) |
		bes c |
		d1 ~|
		d4( c) a4.( bes8) |
		bes2.( d4)
	} \\ {
		bes2\mf |
		bes bes4( a) |
		bes2.\< d4 |
		es(\> d c bes)\> |
		a2( bes) |
		es,\p\< es |
		d1\sf ~|
		d4(\p e) f( es) |
		d2( f4 bes) |
	}>>
	c2.(\p bes4) |
	bes(^"unis." es2) d4 |
%11
	c2( d) |
	d( es) ~|
	es4 r c,( bes) |
	a2 bes |
	c d4( es) |
	<<{
		f2 bes4(\mf c) |
		d2 d4( c) |
		bes2 c4( d) |
		es es es es |
		es2( d) |
%21
		bes c |
		d1 ~|
		d4( c) a4.( bes8) |
		bes1 ~|
		bes2
	} \\ {
		f2. f4 |
		bes2 bes4( a) |
		bes2.\< bes4\! |
		es\> d c bes\! |
		a2( bes) |
%21
		es,\< es |
		d1\sf ~|
		d4(\p e) f( es) |
		d1 ~|
		d2
	}>> r |
	g,1\p |
	es'1\sf |
	d4 r d r |
	bes2\sf r |
	a4\p r a r |
%31
	fis2\sf r |
	g4 r g r |
	bes2\sf r |
	a'4 r d\cresc r |
	cis r bes r |
	a1\f |
	d,4\p r e r |
	f r g r |
	a r bes r |
	cis,2\sf r |
%41
	d4\f r a r |
	bes r g\p r |
	a r
	<<{
		d'( e) |
		f2 f4( e) |
		d2 d4 d |
		c( g) a( bes) |
		bes2( a)
	} \\ {
		a4(\mf cis) |
		d2 d4( c!) |
		bes2 bes4 bes |
		bes( g) f( e) |
		e2( f)
	}>> |
	R1*2 |
	g,2\p g |
%51
	<<{
		c1 |
		f2( d) |
		cis d4 d |
		c!1 ~|
		c
	} \\ {
		c,1 |
		f2( g) |
		a d4 d |
		s1 |
		a( |
		as4)
	}>> r as r |
	g2 r |
	b4 r b r |
	c2 r |
	f2( bes,) |
%61
	es4 r r2 |
	as2\sf r |
	g4\p r g r |
	as2\sf r |
	g2\p r |
	g4 r g r |
	as r f r |
	g4 r as r |
	b,2 r |
	b'4\f r g r |
%71
	c r as r |
	g r r g\f |
	<<{
		g'2 g4( f) |
		es2 d4( es) |
		f( d) es( f) |
		bes,2( es) |
		es f |
		g1 ~|
		g4( f) d4.( es8) |
		es1 ~|
%81
		es ~|
		es2
	} \\ {
		c,2. c4 |
		c2. c4 |
		d( bes)_"dim." c( d) |
		es2 es |
		c'2\p\< c |
		b1\sf |
		c4(\p a) bes( as) |
		g1 ~|
%81
		g |
		as2
	}>> r |
	f2 r |
	g4 r g r |
	c,2 r |
	d2\sf r |
	g4\p r4\< g r\! |
	g2\sf r |
	a\p r |
	bes r |
%91
	c,4 r c r |
	f2_"cresc." r |
	f4( a g f) |
	e r e r |
	es! r
	<<{
		bes'4( c) |
		d2 d4( c) |
		bes2 c4( d) |
		es es es es |
		es2( d) |
		bes c |
%101
		d1 ~|
		d4( c) a4.( bes8) |
		bes2 r |
	} \\ {
		bes\f |
		bes bes4( a) |
		bes2 ~ bes4 bes |
		bes( g) a( bes) |
		c2( bes) |
		g\< c\! |
%101
		c1\sf |
		bes2\p f4( es) |
		d2 r |
	}>>
	f,2\sf r |
	g4\p r g r |
	c r r2 |
	R1*3 |
	d4 d\< d d |
%111
	f,2\sf r |
	g'4\p r g r |
	c, r r2 |
	R1*3 |
	bes4\f bes bes f' |
	<<{
		f'2( es) |
		d c4( es) |
		d2 c4( f) |
%121
		f f,8( bes) bes( d) d( f) |
		f2( es) |
		d1 ~|
		d4
	} \\ {
		d2( c) |
		a c\p |
		bes( es) |
%121
		d4\f d,8( f) f( bes) bes( d) |
		d2( c) |
		c1(\p |
		bes4)
	}>> r r2 |
	R1*2 |
	bes,4\p r bes r |
	bes2 r |
	bes4 r bes r |
	bes2 r |
%131
	<<{
		f''1 ~|
		f ~|
		f ~|
		f4( d bes f) |
		d2 r |
		d'1\p |
		bes1\fermata |
	} \\ {
		d1 ~|
		d\< ~|
		d\f\> ~|
		d4(\! bes f_"dim." d) |
		bes2 r |
		f'1(\p\> |
		d)\! |
	}>>
}

bass = \relative c {\key bes \major \clef "bass"
	\partial 2 g2\p |
	f f |
	bes1\< ~|
	bes\> ~|
	bes\! |
	R1*2 |
	g2\p f |
	bes1 ~|
	bes1 |
	es2 f |
%11
	g g, |
	c1 ~|
	c2 r |
	R1*3 |
	f,1\p |
	<<{
	bes1 ~|
	bes ~|
	bes
	}\\{s1\<|s1\>|s8\!}>> |
%21
	R1*2 |
	g2\p f |
	bes1 ~|
	bes |
	g\p |
	es'1\sf |
	d4 r d r |
	bes2\sf r |
	a4\p r a r |
%31
	fis2\sf r |
	g4 r g r |
	bes2\sf r |
	a'4 r d\cresc r |
	cis r bes r |
	a1\f |
	d,4\p r e r |
	f r g r |
	a r bes r |
	cis,2\sf r |
%41
	d4\f r a r |
	bes r g\p r |
	a r a r |
	d r r2 |
	R1*10 |
	f,1(\p |
	as4) r as r |
	g2 r |
	b4 r b r |
	c2 r |
	f2( bes,) |
%61
	es4 r r2 |
	as2\sf r |
	g4\p r g r |
	as2\sf r |
	g2\p r |
	g4 r g r |
	as r f r |
	g4 r as r |
	b,2 r |
	b'4\f r g r |
%71
	c r as r |
	g r g, r |
	c4 r r2 |
	R1*6 |
	g4\p r g r |
%81
	es'2 r |
	c4 r c r |
	f2 r |
	g4 r g r |
	c,2 r |
	d2\sf r |
	g4\p r4\< g r\! |
	g2\sf r |
	a\p r |
	bes r |
%91
	c,4 r c r |
	f2_"cresc." r |
	f4( a g f) |
	e r e r |
	es! r d( es) |
	f r f r |
	bes,1 ~|
	bes |
	bes2 r |
	<<es1 \\ {s2\< s2\!}>> |
%101
	d1\sf |
	g4\p r f r |
	d_"cresc." r d r |
	f,2\sf r |
	g4\p r g r |
	c r r2 |
	R1*3 |
	d4 d\< d d |
%111
	f,2\sf r |
	g'4\p r g r |
	c, r r2 |
	R1*3 |
	bes4\f bes bes f' |
	bes,2( c |
	d) es4\p r |
	f r f, r |
%121
	bes\f bes bes bes |
	bes2( c |
	d4) r fis\p r |
	g r r2 |
	R1*2 |
	bes,4\p r bes r |
	bes2 r |
	bes4 r bes r |
	bes2 r |
%131
	bes r |
	bes\< r\! |
	bes\f\> r\! |
	bes4 r bes_"dim." r |
	bes2 r |
	bes\p r |
	bes1\fermata |
}
