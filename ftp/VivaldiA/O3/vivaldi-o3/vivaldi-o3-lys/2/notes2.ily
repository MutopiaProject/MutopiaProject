\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 4/4 \key d \minor s1*70 \bar "||"}
incmidi = "midi2.ily"

%1-8
tuttiI = \relative c''' {
	g8 f16 es d c bes a g a bes c d es fis g |
	fis8 d r16 g f g es d c bes a8 f' |
	d bes, r16 es' d es c bes a g fis8 d' |
	bes g'4 f8 e a4 g8 |
	fis bes4 a8 g c4 bes8 |
	a d4 c8 bes g4 fis8 |
	g16 bes, bes bes b b b b c c c c cis cis cis cis |
	d d d d d d d d es es es es e e e e |
}

%25-28
tuttiII = \relative c'' {
	e8 a4 g8 fis bes4 a8 |
	g8 c4 bes8 a d4 c8 |
	bes g4 fis8 g16 bes, bes bes b b b b |
	c c c c cis cis cis cis d d d d d d d d |
	es es es es e e e e f f f f fis fis fis fis |
}

%33-41
tuttiIII = \relative c' {
	d16 e f g a b cis d cis8 a r16 d c d |
	bes a g f e8 c' a f r16 bes a bes |
	g f e d cis8 a' f d'4 c8 |
	b e4 d8 cis f4 e8 |
	d g4 f8 e a4 g8 |
	f d4 cis8 d16 f f f fis fis fis fis |
	g g g g gis gis gis gis a a a a a a a a |
	bes bes bes bes b b b b c c c c cis cis cis cis |
}

violinI = \relative c'' {
	\tuttiI
	f16 f f f fis fis fis fis g8 bes, d, a'' |
	bes16(_"Soli" a bes) c bes c a c bes16( a bes) c bes c a c |
%11
	c( bes c) d c d bes d c( bes c) d c d bes c |
	d( c d) es d es c es d( c d) es d( c d) es |
	c( bes c) d c( bes c) d bes( a bes) c bes( a bes) c |
	a8 d4 c8 bes g4_"Tutti e Piano" f8 |
	\tuttiII
	g8 bes, d, a'' bes16(_"Soli e Piano" a bes) c bes c a c |
%21
	bes( a bes) c bes c a bes c( bes c) d c d bes d |
	c( bes c) d c d bes c d( c d) es d es c es |
	d( c d) es d( c d) es c( bes c) d c( bes c) d |
	bes( a bes) c bes( a bes) c a a fis\f a d,,8 a'' |
	bes g,, bes''16( a) bes( a) g( f) es( d) c8 g' |
	a f, a'16( g) a( g) f( es) d( c) bes8 f' |
	g es, g'16( f) g( f) es( d) c( bes) a8 es' |
	fis, d r8 a''16 g fis( g a) g fis a g fis |
	g( a bes) a g bes a g fis(\p g a) g fis a g fis |
	g( a bes) a g bes a g fis(\f g a) g fis a g fis |
%31
	g( a bes) a g f e d cis b a8 r a'16 g |
	f8 e16 d cis8.\trill d16 d8_"Tutti" c16 bes a g f e |
	\tuttiIII
%41
	d''8 f, a, cis' d16 d,_"Solo" d f f d d f |
	f d d f f d d f a8 a a a |
	a a a a f16 d d f f d d f |
	f d d f f d d f bes8 bes bes bes |
	bes bes bes bes e,16 c c e e c c e |
	e c c e e c c e a8 a a a |
	a a a a f16 c c f f c c f |
	f c c f f c c f as8 as as as |
	as? as as as d16 b b d, d b b d |
	d b b d d b b d g8 g g g |
%51
	g g g g e16 cis cis e e cis cis e |
	e cis cis e e cis cis e bes'8 bes bes bes |
	bes bes bes bes e,16 cis cis e e cis cis e |
	e cis cis e e cis cis e d8 d d d |
	d d d d d16 a a d d a a d |
	d a a d d a a d cis8 cis cis cis |
	cis? cis cis cis d d4_"Tutti" c8 |
	b e4 d8 cis f4 e8 |
	d g4 f8 e a4 g8 |
	fis d g4 ~ g8 bes, d, fis' |
%61
	g f!16_"Solo" es d c bes a g a bes c d es fis g |
	fis8 d r16 g16 f g es d c bes a8 f' |
	d bes, r16 es'16 d es c bes a g fis8 d' |
	bes g, d'''\p f, f\trill e c' es, |
	es?\trill d bes' d, d\trill c a' c, |
	c\trill bes g' bes, a\f g' d, fis' |
	g4_"Tutti Pianissimo" r8 g g4 r8 f |
	f4 r8 es es4 r8 d |
	d4 r8 g\f a, g' d, fis' |
	g1\fermata |
}

violinII = \relative c'' {
	\tuttiI
	f16 f f f fis fis fis fis g8 bes, d, fis' |
	g16(_"Soli" fis g) a g a fis a g( fis g) a g a fis g |
%11
	a( g a) bes a bes g bes a( g a) bes a bes g a |
	bes( a bes) c bes c a c bes( a bes) c bes( a bes) c |
	a( g a) bes a( g a) bes g( fis g) a g( fis g) a |
	fis( e fis) g fis g a fis g8 g4_"Tutti e Piano" f8 |
	\tuttiII
	g8 bes, d, fis' g16(_"Soli e Piano" fis g) a g a fis a |
%21
	g( fis g) a g a fis g a( g a) bes a bes g bes |
	a( g a) bes a bes g a bes( a bes) c bes c a c |
	bes( a bes) c bes( a bes) c a( g a) bes a( g a) bes |
	g( fis g) a g( fis g) a fis4 r |
	R1*7 |
%32
	r2 d8 c16 bes a g f e |
	\tuttiIII
%41
	d''8 f, a, cis' d4 r |
	r2 e,16_"Solo" cis cis e e cis cis e |
	e cis cis e e cis cis e a8 a a a |
	a a a a f16 d d f f d d f |
	f d d f f d d f bes8 bes bes bes |
	bes bes bes bes f16 c c f f c c f |
	f c c f f c c f as8 as as as |
	as? as as as d,16 b b d d b b d |
	d b b d d b b d g8 g g g |
	f f f f es16 c c es es c c es |
%51
	es c c es es c c g' a8 a a a |
	a a a a e16 cis cis e e cis cis e |
	e cis cis e e cis cis e a8 a a a |
	g g g g f16 a, a f' f a, a f' |
	f a, a f' f a, a f' e8 e e e |
	e e e e e16 a, a e' e a, a e' |
	e a, a e' e a, a e' f8 d4_"Tutti" c8 |
	b e4 d8 cis f4 e8 |
	d g4 f8 e a4 g8 |
	fis d g4 ~ g8 bes, d, fis' |
%61
	g4 r r2 |
	R1*2 |
	r4 r8 g\p g4 r8 f |
	f4 r8 es es4 r8 d |
	d4 r8 g\f a, g' d, fis' |
	g4 d'8_"Solo e Piano" f, f\trill e c' es, |
	es?\trill d bes' d, d\trill c a' c, |
	c\trill bes g' bes,\f a g' d, fis' |
	g1\fermata |
}

violinIII = \relative c'' {
	\tuttiI
	f16 f f f fis fis fis fis g8 bes, d, fis' |
	g4 r r2 |
%11
	R1*3 |
	r2 r8 g4\p f8 |
	\tuttiII
	g8 bes, d, fis' g4 r |
%21
	R1*11 |
	r2 d8 c16 bes a g f e |
	\tuttiIII
%41
	d''8 f, a, cis' d4 r |
	r2 a4 r |
	r2 a4 r |
	r2 bes4 r |
	r2 bes4 r |
	r2 a4 r |
	r2 as4 r |
	r2 as4 r |
	r2 g4 r |
	f r es r |
%51
	r2 a4 r |
	r2 bes4 r |
	r2 a4 r |
	g r f r |
	r2 e4 r |
	r2 e4 r |
	r2 f8 d4 c8 |
	b e4 d8 cis f4 e8 |
	d g4 f8 e a4 g8 |
	fis d g4 ~ g8 bes, d, fis' |
%61
	g4 r r2 |
	R1*2 |
	r4 r8 g\p g4 r8 f |
	f4 r8 es es4 r8 d |
	d4 r8 g\f a, g' d, fis' |
	g4 r8 g\pp g4 r8 f |
	f4 r8 es es4 r8 d |
	d4 r8 g\f a, g' d, fis' |
	g1\fermata |
}

violinIV = \relative c'' {
	\tuttiI
	f16 f f f fis fis fis fis g8 bes, d, fis' |
	g4 r r2 |
%11
	R1*3 |
	r2 r8 g4\p f8 |
	\tuttiII
	g8 bes, d, fis' g4 r |
%21
	R1*11 |
	r2 d8 c16 bes a g f e |
	\tuttiIII
%41
	d''8 f, a, cis' d4 r |
	r2 e,4 r |
	r2 f4 r |
	r2 f4 r |
	r2 e4 r |
	r2 f4 r |
	r2 f4 r |
	r2 f4 r |
	r2 d4 r |
	d r c r |
%51
	r2 e4 r |
	r2 e4 r |
	r2 e4 r |
	e r d r |
	r2 d4 r |
	r2 cis4 r |
	r2 d8 d4 c8 |
	b e4 d8 cis f4 e8 |
	d g4 f8 e a4 g8 |
	fis d g4 ~ g8 bes, d, fis' |
%61
	g4 r r2 |
	R1*2 |
	r4 r8 g\p g4 r8 f |
	f4 r8 es es4 r8 d |
	d4 r8 g\f a, g' d, fis' |
	g4 r8 g\pp g4 r8 f |
	f4 r8 es es4 r8 d |
	d4 r8 g\f a, g' d, fis' |
	g1\fermata |
}

violaI = \relative c'' {
	bes4 r bes r |
	a d8 b g4 c, |
	f bes8 g es4 a, |
	d16 d d d d d g g g g e e e e a a |
	a a fis fis fis fis bes bes bes bes g g g g c c |
	c c a a a a d d d d bes bes a a a a |
	bes bes d, d d d g g g g e e e e a a |
	a a f f f f bes bes bes bes g g g g c c |
	c c a a a a d d d d bes bes a a a a |
	bes4 r r2 |
%11
	R1*3 |
	r2 d,16\p d d d d d g g |
	g g e e e e a a a a fis fis fis fis bes bes |
	bes bes g g g g c c c c a a a a d d |
	d d bes bes a a a a bes bes d, d d d g g |
	g g e e e e a a a a f f f f bes bes |
	bes bes g g g g c c c c a a a a d d |
	d d bes bes a a a a bes4 r |
%21
	R1*11 |
	r2 f4 r |
	f r e a8 fis |
	d4 g, c f8 d |
	bes4 e a,16 a a a a a d d |
	d d b b b b e e e e cis cis cis cis f f |
	f f d d d d g g g g e e e e a a |
	a a a a a a a a a a a a a, a d d |
	d d b b b b e e e e c c c c f f |
	f f d d d d g g g g e e e e a a |
%41
	a a a a a a a a a4 r |
	r2 cis4 r |
	r2 d4 r |
	r2 d4 r |
	r2 g,4 r |
	r2 c4 r |
	r2 c4 r |
	r2 d4 r |
	r2 d4 r |
	b r g r |
%51
	r2 e4 r |
	r2 g4 r |
	r2 a4 r |
	a r a r |
	r2 a4 r |
	r2 a4 r |
	r2 as,16 as as as as as d d |
	d d b b b b e e e e cis cis cis cis f f |
	f f d d d d g g g g e e e e a a |
	a a a a bes bes bes bes bes bes bes bes a a a a |
%61
	bes4 r r2 |
	R1*2 |
	r4 r8 b\p c c, r a' |
	bes bes, r g' a a, r fis' |
	g g, r d'\f a'4 a |
	bes r8 b\pp c c, r a' |
	bes bes, r g' a a, r fis' |
	g g, r d'\f a'4 a |
	bes1\fermata |
}

violaII = \relative c' {
	d4 r d r |
	fis d'8 b g4 c, |
	f4 bes8 g es4 a, |
	\repeat unfold 8 {d16} \repeat unfold 8 {e} |
	\repeat unfold 8 {fis} \repeat unfold 8 {g} |
	\repeat unfold 8 {a} d, d d d es es d d |
	\repeat unfold 8 {d} \repeat unfold 8 {e} |
	\repeat unfold 8 {f} \repeat unfold 8 {g} |
	\repeat unfold 8 {a} \repeat unfold 8 {d,} |
	d4 r r2 |
%11
	R1*3 |
	r2 d16\p d d d d d d d |
	\repeat unfold 8 {e} \repeat unfold 8 {fis} |
	\repeat unfold 8 {g} \repeat unfold 8 {a} |
	d, d d d es es d d \repeat unfold 8 {d} |
	\repeat unfold 8 {e} \repeat unfold 8 {f} |
	\repeat unfold 8 {g} \repeat unfold 8 {a} |
	\repeat unfold 8 {d,} d4 r |
%21
	R1*11 |
	r2 a4 r |
	a r a a'8 fis |
	d4 g, c f8 d |
	bes4 e \repeat unfold 8 {a,16} |
	\repeat unfold 8 {b} \repeat unfold 8 {cis} |
	\repeat unfold 8 {d} \repeat unfold 8 {e} |
	d d d d e e e e f f f a, a a a a |
	\repeat unfold 8 {b} \repeat unfold 8 {cis} |
	\repeat unfold 8 {d} \repeat unfold 8 {e} |
%41
	fis fis fis fis e e e e fis4 r |
	r2 a4 r |
	r2 a4 r |
	r2 f4 r |
	r2 g4 r |
	r2 f4 r |
	r2 f4 r |
	r2 f4 r |
	r2 g4 r |
	g r g r |
%51
	r2 cis,4 r |
	r2 e4 r |
	r2 cis4 r |
	e r a, r |
	r2 a'4 r |
	r2 a4 r |
	r2 \repeat unfold 8 {a,16} |
	\repeat unfold 8 {b} \repeat unfold 8 {cis} |
	\repeat unfold 8 {d} \repeat unfold 8 {e} |
	fis fis fis fis d d d d es es es es d d d d |
%61
	d4 r r2 |
	R1*2 |
	r4 r8 b'\p c c, r a' |
	bes bes, r g' a a, r fis' |
	g g, r d'\f es4 d |
	d r8 b'\pp c c, r a' |
	bes bes, r g' a a, r fis' |
	g g, r d'\f es4 d |
	d1\fermata |
}

bassituttiI = \relative c {
	g4 r g r |
	d'8 c b g c es f a, |
	bes bes'16 a g8 es a, c d fis, |
	g16 bes bes bes b b b b c c c c cis cis cis cis |
	d d d d d d d d es es es es e e e e |
	f f f f fis fis fis fis g g bes, bes c c d d |
	g,8 g'4 f8 e a4 g8 |
	f bes4 a8 g c4 bes8 |
	a d4 c8 bes g d' d, |
	g,4 r r2 |
%11
	R1*3 |
	r2 bes16\p bes bes bes b b b b |
	c c c c cis cis cis cis d d d d d d d d |
	es es es es e e e e f f f f fis fis fis fis |
	g g bes, bes c c d d g,8 g'4 f8 |
	e a4 g8 f bes4 a8 |
	g c4 bes8 a d4 c8 |
	bes g d' d, g,4 r |
%21
	R1*3 |
}

bassituttiII = \relative c {
%33
	d4 r a'8 g fis d |
	g bes, c e, f f'16 e d8 b |
	e g a cis, d16 f f f fis fis fis fis |
	g g g g gis gis gis gis a a a a a a a a |
	bes bes bes bes b b b b c c c c cis cis cis cis |
	d d f, f g g a a d,8 d4 c8 |
	b e4 d8 c f4 e8 |
	d g4 f8 e a4 g8 |
%41
	f16 f d d a' a a, a d4 r |
	r2 a4 r |
	r2 d4 r |
	r2 d4 r |
	r2 c4 r |
	r2 f,4 r |
	r2 f'4 r |
	r2 b,4 r |
	r2 bes?4 r |
	bes r c r |
%51
	r2 cis4 r |
	r2 cis4 r |
	r2 c4 r |
	c r d r |
	r2 a'4 r |
	r2 a,4 r |
	r2 d16 f f f fis fis fis fis |
	g g g g gis gis gis gis a a a a a a a a |
	bes bes bes bes b b b b c c c c cis cis cis cis |
	d d c c bes bes g g c, c c c d d d d |
%61
	g,4 r g r |
	d'8 c b g c es f a, |
	bes bes'16 a g8 es a, c d fis |
	g g, r4 r2 |
	R1 |
	r4 r8 bes c4 d |
	g, r r2 |
	R1 |
	r4 r8 bes c4 d |
	g,1\fermata |
}

cello = \relative c' {
	\bassituttiI
%24
	R1 |
	r16 d_"Solo" bes d g,,8 d'' es c,, es''16( d) es( d) |
	c( bes) a( g) f8 c' d bes, d'16( c) d( c) |
	bes( a) g( f) es8 bes' c a, r c' |
	d16 d, d d' d d, d d' c d, d c' c d, d c' |
	bes d, d bes' bes d, d bes' a\p d, d a' a d, d a' |
	bes d, d bes' bes d, d bes' a\f d, d a' a d, d a' |
%31
	bes d, d bes' bes d, d bes' a8 a,16 b cis b cis a |
	d8_"Tutti" g a a, d4 r |
	\bassituttiII
}

bass = <<

\relative c {
	\bassituttiI
%24
	r2 d4 r8 d |
	g4 r8 g c,4 r8 c |
	f4 r8 f bes,4 r8 bes |
	es4 r8 es a,4 r8 a |
	d4 r d r |
	g, r d'\p r |
	g, r d'\f r |
%31
	g, r a8 a16 b cis8 a |
	d g a a, d4 r |
	\bassituttiII
}

\figuremode {
	s1 |
	<_+>8 s s <7 _!> <_->  s s4 |
	s s8 <7> <7 5-> <6 5> <_+> <6> |
	s <6>16 s <6 5> s s s <5> s <6> s <6 5> s s s |
	<_+> s <6- _+> s <6 5> s s s <5> s <6> s <6 5> s s s |
	<5> s <6> s <6 5> s s8 s4 <6 5 _->16 s <_+> s |
	s8 <_! _->4 <4\+ 2>8 <6> <_-+>4 <4\+ 2>8 |
	<6>8 s s <6// 4 2> <6-> <_-!>4 <4 2>8 |
	s <_-+>4 <4\+ 2>8 <6> s <5 4> <_+> |
%11
	s1*4 |
	s2 s8 <6>16 s <6 5> s s s |
	<5> s <6> s <6 5> s s s <_+> s <6 _+> s <6 5> s s s |
	<5> s <6> s <6 5> s s s <5> s <6> s <6 5> s s s |
	s4 <6 5>16 s <_+> s s8 <_-!>4 <4\+ 2>8 |
	<6> <_-+>4 <4\+ 2>8 <6> s4 <4 2>8 |
	<6-> <_-!>4 <4 2>8 <6> <_-+>4 <4\+ 2>8 |
%21
	<6> s <5 4> <_+> s2 |
	s1*3 |
	s2 <_+>4 s |
	s s <7 _-> s |
	<7-> s <7> s |
	<7> s <7 5-> s |
	<_+> s <7 _+> s |
	s s <_+> s |
	s s <_+> s |
	s s <_+>8 s <6> <7 _+> |
%31
	s s <_+> s s2 |
	s <_+>8 s <6> <7 _+> |
	s2 s4 s8 <7> |
	<7 5> <6 5> <_+> <6> s4 <6 5>16 s s s |
	<_!> s <6> s <6 5> s s s <_+> s <6 _+> s <6 5> s s s |
	<5> s <6> s <6 5> s s s <5> s <6> s <6 5> s s s |
	s4 s8 <_+>16 s s8 <_-+>4 <4\+ 2>8 |
	<6> <_!+>4 <4\+ 2>8 <6> s s <4 2> |
	<6> <_-!>4 <4\+ 2>8 <6> <_->4 <4\+ 2>8 |
	<6>16 s s s <5 4> s <_+> s s2 |
%41
	s <_+>4 s |
	s1 |
	s2 <6>4 s |
	s2 <7>4 s |
	s1 |
	s2 <_->4 s |
	s2 <7- 5>4 s |
	s2 <6>4 s |
	<6 5> s <_-> s |
	s2 <6>4 s |
%51
	s2 <7 5>4 s |
	s2 <6>4 s |
	<6 5> s <3> s |
	s2 <5 4>4 s |
	s2 <_+>4 s |
	s2. <6 5>16 s s s |
	<_!> s <6 _!> s <6 5> s s s <_+> s <6 _+> s <6 5> s s s |
	<5> s <6> s <6 5> s s s <5> s <6> s <6 5> s s s |
	<_+> s <4\+ 2> s <6> s s s <7 5 _-> s s s <5 _+> s s s |
	s1 |
%61
	<_+>8 s <6> <7> <_-> s s4 |
	s <6->8 s <7 5-> <6 5> <_+> <6> |
	s1*2 |
	s2 <6 5 _->4 <_+> |
	s1*2 |
	s2 <6 5 _->4 <_+> |
	s1 |
}
>>
