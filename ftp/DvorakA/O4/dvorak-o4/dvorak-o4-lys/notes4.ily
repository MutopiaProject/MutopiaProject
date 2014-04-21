\version "2.18.0"

\include "global.ily"

global = {\key bes \major \time 9/8 \tempo "Larghetto" s1*9/8*19 s2. s1*9/8*20 \bar "|."} 

violin = <<\global \relative c''' {
\repeat volta 2 {
	r16. g32\<_\pmoltoess g8(\> f)\! r16. es32\< es8(\> d)\! r16 c8(\< bes16-.\> a-. g-.)\! |
	r16. bes32\p bes8(\< a) r16. f'32 f8( es) r16 a8( g16-.\! f-. es-.) |
	r16. d32\mf d8( c) r16. es32\> es8( g,)\! r16 f8(\p a16--\> d-- c--)\! |
	r16. c32\pp c8( bes) r16 des(-.\> c bes) bes8\! ~ bes4 r8 |
	r16. <d bes'>32 q8( <f a>) r16. <bes, g'>32\< q8( <d f>) r16 <g, es'>8 <bes d>16(-. <a c>-. <g bes>)-.\! |
	r16. q32\ff q8(\< <e a>) r16.\! <a f'>32 q8( <g e'>) r16 <a a'>8-> g'16(-. f-. e-.) |
	r16. <bes g'>32\f q8(\dimin <bes d>) r16\! <g es'>8 <bes d>16(-. <a c>-. <g bes>-.) r16. <d bes'>32\p q8( <c a'>) |
	r16. q32\pp q8( <bes g'>) r16 <g' bes>16( <d a'> <bes g'>) q8 ~ q4. |
}
	r16. g''32\pp g8 f r16. es32 es8( d) r16 c8( b16-- a-- b--) |
	r16. d32 d8(\< c) r16. f32 f8( es)\! r16 a8(\f g16-- fis-- g--) |
%11
	r16. bes32\ff bes8( a) r16. g32 g8( fis) r16 es8( d16 cis d) |
	r16. f32 f8(\> es) r16. d32 d8( c)\! r16 bes8(\p as16-- c-- as--) |
	r16. as32\p as8( g) r16. bes32 a8(\dim g)\! r16 fis8(\> <es c'>16 <d bes'> <c a'>)\! |
	r16. <c a'>32\pp q8( <bes g'>) r16 <g' bes>( <d a'> <bes g'>) q8 ~ q4. |
	r16. as''32\pp as8( g)\< r16. f32 f8( es) r16 es8( d16--\! cis-- d--) |
	r16. f32\cresc f8( es)\! r16. d32 d8( c) r16 a'8(\f\< g16 fis g)\! |
	r16. bes32\ff bes8( a) r16. g32\> g8( fis) r16 es8( d16 cis d)\! |
	r16. f32 f8(\dimin es)\! r16. d32 d8( c) r16 bes8(\p\> as16-. c-. as-.)\! |
	r16. e32\pp\< e8( f) r16. as32\! as8( g) r8 e16( f as g) |
	\time 6/8 e8( f4 ~ f8 bes4) |
%21
	\time 9/8 r16. <es g>32\pp q8( <bes f'>) r16. <g es'>32\< q8( <f des'>) r16 <es c'>8( bes'16-. a-. bes-.)\! |
	r16. <bes des>32\mf q8( <as c>) r16. <a f'>32 q8( <c es>) r16 es(\f\< c' a-.) fis32( es\! d c) |
	r16. <a c>32\f q8( <g bes>) r16. <a f'>32\> q8( <g es'>) r <f d'>16(\dim <es c'>\! <g es'> <es c'>) |
	r16. <es c'>32\p q8( <d bes'>) r16. <g es'>32\< q8( <bes d>)\! r16 d8(\cresc c16 es c) |
	r16. <d bes'>32\f <<{bes'8( f)} \\ d4>> r16 <bes g'>8(\> f'16 <g, es'> <f d'>) r16. q32 q8(\! <es c'>) |
	r16. q32\p q8( <d bes'>)\> r16 <bes' d>16( <f c'> <d bes'>) q8 ~ q4\! r8 |
	r16. <es' g>32\pp q8( <bes f'>8) r16. <g es'>32\< q8( <f des'>) r16 <es c'>8( bes'16-. a-. bes-.)\! |
	r16. <bes des>32\mf q8( <as c>) r16. <a f'>32 q8( <c es>) r16 es(\f\< c' a-.) fis32( es\! d c) |
	r16. <a c>32\f q8( <g bes>) r16. <a f'>32\> q8( <g es'>) r <f d'>16(\dim <es c'>\! <g es'> <es c'>) |
	r16. <es c'>32 q8(\dim <d bes'>)\! r16. <g es'>32 q16( <bes d> <a c> <g bes>) r16. <d bes'>32\p q8( <c a'>) |
%31
	r16. q32\pp a8( <bes g'>) r16 <g' bes>(\> <d a'> <bes g'>) q8\! ~ q4. |
	r16. bes'32\ppp bes8( a) r16. a32 a8( g) r16 bes(-. a-. g-. g8) |
	r16. bes32 bes8( a) r16. a32 a8( g) r16 d'( bes a g8) ~|
	g4. ~ g8.\< a16( bes c cis8. d16 g a) |
	bes2.\startTrillSpan\fz\> ~ \afterGrace bes4.\stopTrillSpan a8 |
	bes32\p\< r r a a8( as)\! r16. as32 as8( g) r16 fis8.(\> g16 bes,)\! |
	d2.(\p\> es8)( fis,8. g16) |
	g\pp r32 es es8( d)^\morendo r16. cis32 cis8( d) r16 f( es d) d8 ~|
	 d4. d4.\pp d4. |
	\override TupletNumber.stencil = ##f
	\tuplet 4/3 {d1.} |
}>>

pianoUp = <<\global \relative c' {
	g16( d' bes g' d bes' g g' bes, bes' d, g bes, d g, bes d, g) |
	g,( es' c g' es c' g es' a, a' c, g' g, es' es, c' c, g') |
	f,( c' a f' c a' es c' g es' bes g' c, a' a, f' f, es) |
	f,( des' g, f' des bes' e, des' g, e' bes g' d f d, bes' bes, f') |
	\clef "bass" d,( bes' g d' bes g' \clef "treble" d bes' g d' bes g' g, bes d, g g, bes) |
	f( cis' g e' cis a' g f' a, a' g, e' e, a c, e g, bes) |
	g( d' bes g' d bes' g g' d bes' bes, g' d, d' c, d \change Staff = "down" d, \change Staff = "up" c') |
	g( d' bes g' d bes' g <bes d>-. <a c fis>-. <bes d g>-. <bes d> g' bes, d g, bes d, g) |
	\clef "bass" d,( b' f d' bes f' \clef "treble" d b' f es' bes f' f, as d, f f, d') |
	es,( c' as es' c as' es c' as es' es, c' \clef "bass" cis,, bes' g cis bes g') |
	fis,( d' c! fis \clef "treble" d c' a es' es, c' c, a' \clef "bass" a, c fis, a d, fis) |
	bes,( bes' \clef "treble" g g' bes, bes' g g' g, d' c, c' f,, es' c c' es, es') |
	e,,( e' bes bes' e, e' g, <bes g'> d, <bes' d> b, <d g> c es a, c fis, d') |
	g,( d' bes g' d bes' g <bes d>-. <a c fis>-. <bes d g>-. <bes d> g' bes, d g, bes d, g) |
	\clef "bass" d,( b' f d' bes f' \clef "treble" d as' f b a f' f, as as, f' f, as) |
	es( c' as es' c as' es c' as es' es, c' \clef "bass" cis,, bes' g cis bes g') |
	fis,( d' c fis \clef "treble" d c' a es' es, c' c, a' \clef "bass" a, c fis, a d, fis) |
	bes,( bes' \clef "treble" g g' bes, bes' g g' g, d' c, c' f,, es' c c' es, es') |
	\clef "bass" bes,,( bes' \clef "treble" as as' bes, bes' d, d' f, f' bes, bes' as, f' f, d' d, bes') |
	bes,( as' as, f' f, d' \clef "bass" d, bes' bes, as' f bes,) |
	des( bes' g es' \clef "treble" des bes' g es' bes g' des bes' bes, es des, bes' g, des') |
	es,( c' as es' c as' es c' as as' c, es a, c es, a c, es) |
	\change Staff = "down" d,( bes' g \change Staff = "up" d' bes g' g, es' c g' es c' c, g' g, c f, g) |
	\clef "bass" d( bes' g d' bes g' \clef "treble" d bes' bes, g' g, d' ges, c bes bes' ges es') |
	d( f f, d' d, bes' f d' d, bes' bes, f' a, f' es a f f') |
	f,,( f' bes, bes' f d' bes <d f>-. <es g>-. <c es a>-. <d f bes>-. f-. d-. bes-. f-. d-. bes-. f-.) |
	\clef "bass" des( bes' g es' \clef "treble" des bes' g es' bes g' des bes' bes, es des, bes' g, des') |
	f,( c' as es' c as' es c' as as' c, es as, c es, a c, es) |
	\change Staff = "down" d,( bes' g \change Staff = "up" d' bes g' g, es' c g' es c' c, g' g, c f, g) |
	g( d' bes g' d bes' g g' bes, bes' g, g' d, d' c, d \change Staff = "down" d, \change Staff = "up" c') |
	g( d' bes g' d bes' g <bes d>-. <a c fis>-. <bes d g>-. <bes d> g' bes, d g, bes d, g) |
	e,( cis' bes e c bes' es, cis' bes e c, bes' bes, g' d bes \change Staff = "down" d, \change Staff = "up" bes') |
	e,( cis' bes e c bes' es, cis' bes e c, bes' bes, g' \clef "bass" g, d' d, bes') |
	bes,( g' g, d' bes a) g2. |
	<<{
		g'2. ~ g4. |
		e2.( es4.)
	} \\ {
		cis( c bes) |
		bes2. ~ bes4.
	}>> |
	\clef "treble" r16. <g'' bes> q8( <d a'>) r16. q32 q8( <bes g'>) <<{c'16( bes a a8)} \\ {fis8. ~ fis8}>> |
	<g bes, g>2. q4. |
	r8 r16 <g bes>-.( <d a'> <bes g'>-.) r8 r16 q16-.( <a d>-. <g bes>-.) r8 r16 \clef "bass" <g bes>-.( <d a'>-. <bes g'>-.) |
	\override TupletNumber.stencil = ##f
	\tuplet 4/3 {<bes g'>1.} |
}>>

pianoDynamics = \new Dynamics {
	s8\pp s4 s2. |
	s2. s4. |
	s8\mf s4 s2. |
	s8\pp s4 s2. |
	s8\f s16 s\< s8 s4. s8 s16\! s s8 |
	s\ff s4 s2. |
	s8\f s-\dimin s s4. s8\p s4 |
	s8\pp s4 s2. |
	s8\pp s4 s2. |
	s8 s\cresc s s4. s8\f s4 |
	s8\ff s4 s2. |
	s8\dim s4 s4. s8\p s4 |
	s8\p s s\dim s2. |
	s8\pp s4 s2. |
	s8\pp s4 s2. |
	s8 s\cresc s s4. s8\f s4 |
	s8\ff s4 s4. s8\> s s\! |
	s4 s8\dim s2. |
	s8\pp s4 s2. |
	\time 6/8 s2. |
	\time 9/8 s8\pp s4 s8 s\< s s4. |
	s8\mf s\< s s4. s8\f\< s4 |
	s8\f s s\> s4. s8 s\dim s |
	s\p s4 s8\< s4 s4. |
	s8\f s4 s8\> s4 s4. |
	s8\p s4 s2. |
	s8\pp s4 s8\< s4 s4. |
	s8\mf\< s4 s4. s8\f\< s4 |
	s8\f s s\> s4. s8\dim s4 |
	s8 s\dim s s4. s8\p s4 |
	s8\pp s4 s2. |
	s8\ppp s4 s2. |
	s2. s4. s4. s2. |
	s4.\fz\> s2. |
	s2.\p\> s4.\dim |
	s8\pp s4 s2. |
	s8 s-\morendo s s2. |
	s8\ppp s4 s2. |
}

pianoDown = <<\global\clef "bass" \relative c {
	<<{
		r8 g4 ~ g2. |
		r8 c4 ~ c2. |
		r8 f,4 ~ f2. |
		r8 bes4 ~ bes4. r8 bes4 |
		r8 g4 ~ g2. |
		r8 cis4 ~ cis4. a4( bes8) |
		r8 d4 ~ d4. d,8 fis'4 |
		r8 g,4 ~ g2. |
		r8 g4 ~ g2. |
		r8 c4 ~ c4.
	} \\ {
		g,4.\sustainOn ~ g2. |
		c4.\sustainOn ~ c2. |
		f,4.\sustainOn ~ f2. |
		bes2.\sustainOn bes4.\sustainOn |
		g4.\sustainOn ~ g2. |
		cis2. <cis cis'>4. |
		<d bes'>2. d4. |
		g,4.\sustainOn ~ g2. |
		g4.\sustainOn ~ g2. |
		c2.\sustainOn
	}>>
	<es es,>4.\sustainOn |
	<d d,>2.\sustainOn
	<<{
		r8 fis4 |
		r8 g4
	} \\ {
		fis,4.\sustainOn |
		g4.\sustainOn
	}>>
	<es' es'>\sustainOn <c c'>\sustainOn |
	<cis cis'>\sustainOn
	<<{
		r8 d'4 ~ d4. |
		r8 g,4 ~ g2. |
		r8 g4 ~ g4. r8 b4 |
		r8 c4 ~ c4. r8 es,4 |
	} \\ {
		d2.\sustainOn |
		g,4.\sustainOn ~ g2. |
		g2.\sustainOn b4.\sustainOn |
		c2.\sustainOn f,4.\sustainOff |
	}>>
	<es d'>2.
	<<{
		r8 fis'4 |
		r8 g4
	} \\ {
		fis,4. |
		g4.
	}>>
	<es' es'> <c c'> |
	<d d'>2.\sustainOn ~ q4. |
	q2. |
	<<{r8 es4 ~ es4.} \\ {es,2.\sustainOn}>> <g g'>4\sustainOn es'8 |
	<<{
		r8 as4 ~ as4. r8 fis4 |
		s4. r8 c'4 ~ c4. |
		r8 d4 ~ d4.
	} \\ {
		as,2.\sustainOn fis4.\sustainOn |
		<g g'>4. c2. |
		d2.
	}>>
	<es es,>4.
	<<{
		r8 f4 ~ f4. r8 f4 |
		r8 bes4 ~ bes2. |
		r8 es,4 ~ es4.
	} \\ {
		f,2. f4. |
		bes4. ~ bes2. |
		es,2.\sustainOn
	}>>
	<g g'>4\sustainOn es'8 |
	<<{
		r8 as4 ~ as4. r8 fis4 |
		s4. r8 c'4 ~ c4. |
		r8 d4 ~ d4.
	} \\ {
		as,2.\sustainOn fis4.\sustainOn |
		<g g'>4. c2. |
		d\sustainOn
	}>>
	<d fis'>4.\arpeggio |
	<<{
		r8 g4 ~ g2. |
		r8 g4 ~ g4. r8 g4 |
		r8 g4 ~ g4. r8 g4 ~|
		g8
	} \\ {	
		g,4. ~ g2. |
		g2.\sustainOn g4.\sustainOff |
		g2.\sustainOn g4.\sustainOff\sustainOn ~|
		g8
	}>>
	r r\sustainOff r4 r8 f'4.\pp |
	e4.( es d) |
	cis2.\sustainOn ~ cis4.\sustainOff |
	<d bes' d>2.\sustainOn <<{r16 a''( d c c8)} \\ d,4.>> |
	g,,16( g' bes, g' g, g' bes, g' es g g, g' bes, g' g, g' bes, g') |
	<g, g'>2.\sustainOn ~ q4. |
	\override TupletNumber.stencil = ##f
	\tuplet 4/3 {g1.\sustainOff\sustainOn} |
}>>
