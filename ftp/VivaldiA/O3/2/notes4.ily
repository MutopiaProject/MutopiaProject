\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 12/8 \key d \minor s1.*71 \bar "|."}
incmidi = "midi4.ily"

tuttiI = \relative c''' {
	g8( f) es d4 c8 bes a g r r bes' |
	a4 d8 bes( a) g fis e d r r d |
	f4 b,8 d4 f,8 as'4. ~ as8 g f |
	es d c g,4 b'8 c,4. r8 r c' |
	es4 a,8 c4 es,8 g'4. ~ g8 f es |
	d c bes f4 a8 bes,4. r8 d' c |
	bes( a g) b4. c4. cis4. |
	d4 d,8 r g' f es( d c) e4. |
	f4. fis4. g4 d8 es( d cis) |
	d4. es8( d cis) d( c bes) a( bes g) |
%11
	d4. bes'8( a g) d4. bes'8( a g) |
	c,4. bes'8( a g) cis4. ~ cis8 d e |
}

violinI = \relative c'' {
	\tuttiI
%13
	a4 d8 bes8. c16 a8 bes'(_"Soli" c) a bes( d) c |
	d( c) d bes4 d8 bes4 a8 bes( c) bes |
	a( g) a fis4. f8. g16 f8 f4 f8 |
	as4. ~ as8( g f) g( f es) es4(\trill d8) |
	c2. es8. f16 es8 es4 es8 |
	g4. ~ g8( f es) f( es d) d4(\trill c8) |
	bes4. r8 d_"Tutti" c bes a g b4. |
	c cis d4 d,8 r g' f |
%21
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) fis e d r a''_"Solo" g |
	\repeat unfold 4 {fis( a g)} |
	a4. ~ a8( g fis) bes4. ~ bes8( a g) |
	c( bes c) a( bes c) bes( a bes) g( a bes) |
	c(\p bes c) a( bes c) bes( a bes) g( a bes) |
	c(\f bes c) a( bes c) bes( a bes) a( g a) |
	g( f g) f( e f) e( d e) e( f g) |
	a( g a) g( fis g) fis( e fis) fis( g a) |
%31
	bes( a bes) a( g a) g( fis g) g( a bes) |
	c( bes c) bes( a bes) a( g a) a( bes c) |
	d( c d) c( bes c) bes( a) bes es4 bes8 |
	a( g) a d4 a8 g( fis g) c4 g8 |
	f( e) f bes4 f8 es( d es) d( cis d) |
	cis( a b) cis( b a) e'( a, b) cis( b a) |
	g'4. ~ g4 a,8 f'( e) d( a c) cis |
	d(_"Tutti" c) bes a4 g8 f e d r r f' |
	e4 d8 f( e) d cis b a r g'_"Soli" f |
	e( g f) e( g f) e( g f) e( f g) |
%41
	f( e f) r r f bes4 bes8 bes4 bes8 |
	bes( a) bes g4 e8 a4 a8 a4 a8 |
	a( g) a f4 d8 g4 g8 g4 g8 |
	g( f) g e( f) g f( a g) f( e d) |
	a( a' g) f( e d) a4 r8 a'4 r8 |
	a4 r8 a4 r8 a a( g fis e d) |
	bes'2. ~ bes8 g( f es d c) |
	a'2. ~ a8 f( es d c bes) |
	g'2. ~ g8 es( d c bes a) |
	fis'( e) d g( fis) g r4 r8 g( fis) g |
%51
	r4 r8 g( fis) g g( fis) g fis( e) fis? |
	g(_"Tutti" f) es d4 c8 bes a g r r bes' |
	a4 d8 bes( a) g fis e d r r fis |
	g( fis) g g,4 g'8 g4.\trill fis |
	f8( e) f f,4 f'8 f4.\trill e |
	es8( d) es es,4 es'8 es4.\trill d |
	d8( c) d d,4 d'8 d4.\trill c |
	c8( bes) c c,4 c'8 bes a g bes'(_"Soli" c) bes |
	a( bes) a bes(\p c) bes a( bes) a bes(\f c) bes |
	a( c bes) a(\p c bes) a( c bes) a(\f c bes) |
%61
	c4. ~ c8( bes a) d4. ~ d8( c bes) |
	c4. ~ c8( bes a) d( c bes) d( c bes) |
	d(\p c bes) d( c bes) d(\f c bes) bes4\trill a8 |
	g4. r8 d c bes( a g) b4. |
	c cis d4 d,8 r g' f |
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) d4. bes'8( a g) |
	d4. bes'8( a g) c,4. bes'8( a g) |
	cis4. ~ cis8 d e a,4 d8 bes8. c16 a8 |
%71
	g4 g'8 a,4 fis'8 g2.\fermata |
}

violinII = \relative c'' {
	\tuttiI
%13
	a4 bes8 g8. a16 fis8 g'(_"Soli" a) fis g( bes) a |
	bes( a) bes g4 bes8 g4 fis8 g( a) g |
	fis( e) fis d4. d8. es16 d8 d4 d8 |
	f4. ~ f8( es d) es( d c) c4(\trill b8) |
	c2. c8. d16 c8 c4 c8 |
	es4. ~ es8( d c) d( c bes) bes4(\trill a8) |
	bes4. r8 d_"Tutti" c bes a g b4. |
	c cis d4 d,8 r g' f |
%21
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) fis e d r4 r8 |
	R1.*2 |
	r2. d'4. r4 r8 |
	es4.\p r4 r8 d4. r4 r8 |
	es4.\f r4 r8 d4. r4 r8 |
	R1.*9 |
	d8( c) bes a4 g8 f e d r r f' |
	e4 d8 f( e) d cis b a r e'_"Soli" d |
	cis( e d) cis( e d) cis( e d) cis( d e) |
%41
	d( cis d) r r d f( e) f d4 f8 |
	g( f) g e4 cis8 e( d) e c4 e8 |
	f( e) f d4 b8 d( c) d bes4 d8 |
	e( d) e cis( d) e d4. a'4 r8 |
	a4 r8 a4 r8 a a( g) f( e d) |
	a( a' g) f( e d) a4. r4 r8 |
	r d( c bes a g) es'2. ~
	es8 c( bes a g f) d'2. ~
	d8 bes( a g f es) c'2. ~
	c4. bes g'8( fis) g r4 r8 |
%51
	g( fis) g r4 r8 bes,( a) bes a4 a8 |
	g'(_"Tutti" f) es d4 c8 bes a g r r bes' |
	a4 d8 bes( a) g fis e d r4 r8 |
	r2. d8( cis) d d,4 d'8 |
	d( c) d d,4 d'8 d4.\trill c |
	c8( bes) c c,4 c'8 c4.\trill bes |
	bes8( a) bes bes,4 bes'8 bes4.\trill a |
	a8( g) a a,4 a'8 g4. g'8(_"Soli" a) g |
	fis( g) fis g(\p a) g fis( g) fis g(\f a) g |
	fis( a g) fis(\p a g) fis( a g) fis(\f a g) |
%61
	a4. ~ a8( g fis) bes4. ~ bes8( a g) |
	a4. ~ a8( g fis) bes( a g) bes( a g) |
	bes(\p a g) bes( a g) bes(\f a g) g4\trill fis8 |
	g4. r8 d c bes( a g) b4. |
	c cis d4 d,8 r g' f |
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) d4. bes'8( a g) |
	d4. bes'8( a g) c,4. bes'8( a g) |
	cis4. ~ cis8 d e a,4 bes8 g8. a16 fis8 |
%71
	g4 g'8 a,4 fis'8 g2.\fermata |
}

violinIII = \relative c'' {
	\tuttiI
%13
	a4 d8 bes8. c16 a8 g4. r4 r8 |
	R1.*5 |
	r4 r8 r d' c bes( a g) b4. |
	c cis d4 d,8 r g' f |
%21
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) fis e d r4 r8 |
	R1.*2 |
	r2. d'4. r4 r8 |
	es4.\p r4 r8 d4. r4 r8 |
	es4.\f r4 r8 d4. r4 r8 |
	R1.*9 |
	d8( c) bes a4 g8 f e d r r f' |
	e4 d8 f( e) d cis b a r4 r8  |
	R1. |
%41
	r4 r8 d4.\p d d |
	cis cis c c |
	b b bes bes |
	a a d, r4 r8 |
	e4. f e f |
	e f e r4 r8 |
	R1.*5 |
%52
	g'8 f es d4 c8 bes a g r r bes' |
	a4 d8 bes( a) g fis e d r8 r8 fis |
	g( fis) g g,4 g'8 g4.\trill fis |
	f8( e) f f,4 f'8 f4.\trill e |
	es8( d) es es,4 es'8 es4.\trill d |
	d8( c) d d,4 d'8 d4.\trill c |
	c8( bes) c c,4 c'8 bes a g r4 r8 |
	R1.*5 |
	r4 r8 r d' c bes( a g) b4. |
	c cis d4 d,8 r g' f |
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) d4. bes'8( a g) |
	d4. bes'8( a g) c,4. bes'8( a g) |
	cis4. ~ cis8 d e a,4 d8 bes8. c16 a8 |
%71
	g4 g'8 a,4 fis'8 g2.\fermata |
}

violinIV = \relative c'' {
	\tuttiI
%13
	a4 bes8 g8. a16 fis8 g4. r4 r8 |
	R1.*5 |
	r4 r8 r d' c bes( a g) b4. |
	c cis d4 d,8 r g' f |
%21
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) fis e d r4 r8 |
	R1.*2 |
	r2. bes'4. r4 r8 |
	a4.\p r4 r8 bes4. r4 r8 |
	a4.\f r4 r8 bes4. r4 r8 |
	R1.*9 |
	d8( c) bes a4 g8 f e d r r f' |
	e4 d8 f( e) d cis b a r4 r8  |
	R1. |
%41
	r4 r8 d4.\p d d |
	cis cis c c |
	b b bes bes |
	a a d, r4 r8 |
	e4. f e f |
	e f e r4 r8 |
	R1.*5 |
%52
	g'8 f es d4 c8 bes a g r r bes' |
	a4 d8 bes( a) g fis e d r4 r8 |
	r2. d8( cis) d d,4 d'8 |
	d( c) d d,4 d'8 d4.\trill c |
	c8( bes) c c,4 c'8 c4.\trill bes |
	bes8( a) bes bes,4 bes'8 bes4.\trill a |
	a8( g) a a,4 a'8 g4. r4 r8 |
	R1.*5
	r4 r8 r d' c bes( a g) b4. |
	c cis d4 d,8 r g' f |
	es( d c) e4. f fis |
	g4 d8 es( d cis) d4. es8( d cis) |
	d( c bes) a( bes g) d4. bes'8( a g) |
	d4. bes'8( a g) c,4. bes'8( a g) |
	cis4. ~ cis8 d e a,4 bes8 g8. a16 fis8 |
%71
	g4 g'8 a,4 fis'8 g2.\fermata |
}

violaI = \relative c'' {
	bes4. a g r8 r d' |
	d4. ~ d4 e8 a,4. r4 r8 |
	r4 r8 r r d, c4 c'8 d4. |
	g,4 as8 d,4 g8 es4. r4 r8 |
	r4 r8 r r c bes4 bes'8 c4. |
	f,4 g8 c,4 f8 d4. r8 a' fis |
	d2. g |
	a4. r8 b d g,2. |
	c, d4 a'8 bes4 e,8 |
	a4. bes4 e,8 a4 d,8 e4. |
%11
	fis4 d8 d c bes a4 d8 d c bes |
	a4 d8 d c bes e4. ~ e4 cis8 |
	d4 d8 es a, d bes4. r4 r8 |
	R1.*5 |
	r4 r8 r a' fis d2. |
	g a4. r8 b d |
%21
	g,2. c, |
	d4 a'8 bes4 e,8 a4. bes4 e,8 |
	a4 d,8 e4. a, r4 r8 |
	R1.*2 |
	r2. bes'4. r4 r8 |
	a4.\p r4 r8 bes4. r4 r8 |
	a4.\f r4 r8 bes4. r4 r8 |
	R1.*9 |
	f4. e d r8 r a' |
	a4. ~ a4 b8 e,4. r4 r8 |
	R1. |
%41
	r4 r8 d'4.\p d d |
	cis cis c c |
	b b bes bes |
	a a d, r4 r8 |
	cis4. d cis d |
	cis d cis r4 r8 |
	R1.*5 |
%52
	bes'4. a g r8 r d' |
	d4. ~ d4 e8 a,4. r8 r a |
	d4. bes a2. |
	g1. |
	f1. |
	es1. |
	d2. ~ d4. r4 r8 |
	R1.*5 |
%64
	r4 r8 r a' fis d2. |
	g a4. r8 b d |
	g,2. c, |
	d4 a'8 bes4 e,8 a4. bes4 e,8 |
	a4 d,8 e4. fis4 d8 d c bes |
	a4 d8 d c bes a4 d8 d c bes |
	e4. ~ e4 cis8 d4 d8 es a, d |
%71
	d4 bes'8 a4 a8 bes2.\fermata |
}

violaII = \relative c' {
	d4. fis d r8 r d |
	fis4. d4 a'8 a4. r4 r8 |
	r4 r8 r r d, c4 c'8 d4. |
	g,4 as8 d,4 g8 es4. r4 r8 |
	r4 r8 r r c bes4 bes'8 c4. |
	f,4 g8 c,4 f8 d4. r8 a' fis |
	d2. g |
	a4. r8 b d g,2. |
	c, d4 a'8 bes4 e,8 |
	a4. bes4 e,8 a4 d,8 e!4. |
%11
	a,4 d8 d c bes a4 d8 d c bes |
	a4 d8 d c bes e4. ~ e4 cis8 |
	d4 d8 es a, d d4. r4 r8 |
	R1.*5 |
	r4 r8 r8 a' fis d2. |
	g a4. r8 b d |
%21
	g,2. c, |
	d4 a'8 bes4 e,8 a4. bes4 e,8 |
	a4 d,8 e4. a, r4 r8 |
	R1.*2 |
	r2. g'4. r4 r8 |
	c,4.\p r4 r8 g'4. r4 r8 |
	c,4.\f r4 r8 g'4. r4 r8 |
	R1.*9 |
	a,4. cis a r8 r a |
	cis4. a4 e'8 e4. r4 r8 |
	R1. |
%41
	r4 r8 d'4.\p d d |
	cis cis c c |
	b b bes bes |
	a a d, r4 r8 |
	cis4. d cis d |
	cis d cis r4 r8 |
	R1.*5 |
%52
	d4. fis d r8 r d |
	fis4. d4 a'8 a4. r8 r a |
	d4. bes a2. |
	g1. |
	f1. |
	es1. |
	d2. ~ d4. r4 r8 |
	R1.*5 |
%64
	r4 r8 r8 a' fis d2. |
	g a4. r8 b d |
	g,2. c, |
	d4 a'8 bes4 e,8 a4. bes4 e,8 |
	a4 d,8 e4. fis4 d8 d c bes |
	a4 d8 d c bes a4 d8 d c bes |
	e4. ~ e4 cis8 d4 d8 es a, d |
%71
	bes4 d8 es4 d8 d2.\fermata |
}

bassiI = \relative c' {
	g4. fis g r8 r g |
	fis4. g4 cis,8 d4 d'8 f4 b,8 |
	d4 g,8 b( c) d f,( g) as b,4 b8 |
	c4 f8 g4 g,8 c4 c'8 es4 a,8 |
	c4 f,8 a( bes) c es,( f) g a,4 a8 |
	bes4 es8 f4 f,8 bes d' c bes fis a |
	g4 g,8 r g' f es d c e4. |
	fis8 d' c b g b c4 c,8 r c' b |
	a! g f a4. bes4 fis8 g4 a8 |
	fis e d g4 a8 fis4 g8 cis,4. |
%11
	d8 e fis g4. fis8 e d g4. |
	fis8 e d g4. a4 bes8 a4 g8 |
	fis4 g8 c4 d8 g,,4. r4 r8 |
	g4. r4 r8 g4. r4 r8 |
	d'4. d'4 c8 b2. |
	b?8( c) d d4 g,8 c4 f,8 g4 g,8 |
	c'( d) es es4 c8 a2. |
	a8( bes) c c4 f,8 bes4 es,8 f4 f,8 |
	bes d' c bes fis a g4 g,8 r g' f |
	es d c e4. fis8 d' c b g b |
%21
	c4 c,8 r c' bes as g f a4. |
	bes4 fis8 g4 a8 fis e d g4 a8 |
}

bassiII = \relative c' {
%29
	bes4. b c r4 r8 |
	cis4. cis, d r4 r8 |
%31
	d'4. d, es r4 r8 |
	e'4. e, f r4 r8 |
	fis4. fis, g c |
	f bes, es a, |
	d g2. g4. |
	a r4 r8 a4. r4 r8 |
	a a, b cis b a d4 g8 a4 a,8 |
	d4. cis d r8 r d |
	cis4. d4 gis,8 a4. a |
	a a a a |
%41
	d r4 r8 r2. |
	R1.*4 |
	r2. r4 r8 d4. |
	g g, c' c, |
	f f, bes' bes, |
	es es' a, a, |
	d es c d |
%51
	es bes c d |
	g fis g r8 r g |
	fis4. g4 cis,8 d4. d'4 c8 |
	bes4. g d r8 r d' |
	b4. g c8 b c c,4 c'8 |
	a4. f bes8 a bes bes,4 bes'8 |
	g4. es a8 g a a,4 a'8 |
	fis4. d g g, |
	d' g, d' g, |
	d' d d d |
%61
	d r4 r8 g,4. r4 r8 |
	d'4. r4 r8 g,4. g |
	g g g4 c8 d4 d,8 |
	g g' a bes fis a g4 g,8 r g' f |
	es d c e4. fis8 d' c b g b |
	c4 c,8 r c' bes as g f a4. |
	bes4 fis8 g4 a8 fis e d g4 a8 |
	fis4 g8 cis,4. d8 e fis g4. |
	fis8 e d g4. fis8 e d g4. |
	a4 bes8 a4 g8 fis4 g8 c4 d8 |
%71
	g,4 bes,8 c4 d8 g,2.\fermata |
}

cello = \relative c {
	\bassiI
%23
	fis4 g8 cis,4. d r8 c'_"Solo" bes |
	\repeat unfold 4 {a( c bes)} |
	c4. ~ c8( bes a) d4. d8( c bes) |
	es( d es) c( d es) d( c d) bes( c d) |
	es(\p d es) c( d es) d( c d) bes( c d) |
	es(\f d es) c( d es) d4. a4._"Tutti" |
	\bassiII
}

bass = <<

\relative c {
	\bassiI
%23
	fis4 g8 cis,4. d d |
	d d d d |
	d4. r4 r8 g,4. r4 r8 |
	es''4. fis, g r4 r8 |
	fis4.\p r4 r8 g4. r4 r8 |
	fis4.\f r4 r8 g4. a |
	\bassiII
}

\figuremode {
	s4. <6> s s |
	<6> s4 <7 5>8 <_+>4 <_->8 s4. |
	s4 <_!>8 s4. <_->8 s s <7- 5>4 s8 |
	<_->4 s8 <5 4>4 <_!>8 <_->4 s8 s4. |
	<_->4 s8 s4. s <7 5->4 s8 |
	s4. <5 4>4 <3>8 s2. |
	s4. s8 <_!> s <6> s s <6\\>4. |
	<6>8 s s <6> s s <_->4 s8 s <_!> s |
	<6> s s <6\\>4. <6>4 s8 <6- 5>4 <_+>8 |
	<6> s s <6- 5>4 <_+>8 <6 5>4 s8 <6 5>4. |
%11
	<_+>8 s s s4. <6>8 s s s4. |
	<6 5>8 s s s4. <_+>4 s8 <_+>4 s8 |
	<6>4 s8 <7 5>4 <_+>8 s2. |
	s1. |
	<_+>4. s4 <4\+ 2>8 <6 5->2. |
	<_! 5>8 s s s4 <7 _!>8 <_->4 <7->8 <6- 4>4 <5 _!>8 |
	<_-> s s s4. <6 5->2. |
	<7 5->8 s s <_->4 <7->8 s4 <7>8 <6 4>4 <5 3>8 |
	s2. s4. s8 <_!> s |
	<6> s s <6\\>4. s <6>8 s s |
%21
	<_->4 s8 s <_!> s <6> s s <6\\>4. |
	<6>4 s8 <6- 5>4 <_+>8 <6> s s <6- 5>4 <_+>8 |
	<6 5>4 s8 <6 5>4. <_+> <7 _+> |
	s1.*2 |
	<6>4. <7- 5> s2. |
	<7- 5>4. s s2. |
	<7- 5>4. s s2. |
	<6>4. <6 5> s2. |
	<6>4. <6 5> s2. |
%31
	<6>4. <6 5> s2. |
	<6>4. <6 5> s2. |
	<6>4. <6 5> s <7 _-> |
	<7-> <7> <7> <7> |
	s <76->2. <6! 5>4. |
	<_+> s s2. |
	<7>8 s s s2. <5 4>4 <_+>8 |
	s4. <65> s2. |
	<6>4. s4 <7 5>8 <_+>4. <7 _+> |
%40
	s1.*6 |
	s2. s4. <_+> |
	s2. <7 _->4. s |
	<7-> s <7> s |
	<7> s <7 5-> s |
	<7 _+> <5> <5 _-> <4> |
%51
	<3> <6> <7 5> <_+> |
	s <6> s2. |
	<6>4. s4 <7 5>8 <_+>4. s4 <4\+ 2>8 |
	<6>4. s <5 4> s8 s <_+> |
	<6 5->4. <7 _!> <9 4>8 s s <8 _!>4 s8 |
	<6 5->4. <7-> <9 4->8 s s <8 3>4 s8 |
	<6- 5>4. <7> <9 4>8 s s <8 3>4 s8 |
	<6 5>4. <7 _+> s2. |
	<_+>4. s <_+> s |
	<7 _+> s s2. |
%61
	s1. |
	<7 _+>4. s s2. |
	s s4 <7 5>8 <6 4>4 <5 _+>8 |
	s2. s4. s8 <_!> s |
	<6> s s <6\\>4. <6>8 s s <6> s s |
	<_->4 s8 s <_!> s <6> s s <6\\>4. |
	<6>4 <6>8 <6->4 <_+>8 <6> s s <6->4 <_+>8 |
	<6>4 s8 <65>4. <_+>8 s s s4. |
	<6>8 s s s4. <6 5>8 s s s4. |
	<_+>4 s8 <_+>4 s8 <6>4 s8 <7 5 _->4 s8 |
%71
	s4 <6>8 <6 5 _->4 <_+>8 s2. |
}
>>
