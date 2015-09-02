\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 4/4 \key a \minor \partial 8 s8 s1*80 \bar "||"}
incmidi = "midi1.ily"

tuttiI = \relative c'' {
	\partial 8 e8 |
	a a a a a c16 b a8 c16 b |
	a8 c16 b a8 g16 f e8 d16 c b8 e |
	c a a a' a a a a |
	a16 g f e f8 d g g g g |
	g16 f e d e8 c f f f f |
	f16 e d c d8 b e e e e |
	e16 d c b c8 a r16 a c e a8 a |
	a16 a, c e a8 a a16 a, c e bes'8 bes |
	bes a16 gis a8 b d,2 ~|
	d16 e, gis b d8 d d16 e, gis b d8 d |
%11
	d16 e, gis b d8 e c b16 a f'8 e16 d |
	e8 a e, gis' a4
}

tuttiII = \relative c'' {
	b8 e e e e |
	e g16 fis e8 g16 fis e8 g16 fis e8 d16 c |
	b8 a16 g fis8 b g e e b' |
	e e e e e16 d c b c8 a |
	d d d d d16 c b a b8 g |
	c c c c c16 b a g a8 fis |
%41
	b b b b b16 a g fis g8 e |
	a' fis16 g a8 a a fis16 g a8 a |
	a fis16 g a8 b g4. fis16 e |
	b'8 a16 g fis e dis fis e8 e,
}

tuttiIII = \relative c'' {
	c16 a c e a8 a a16 a, c e a8 a |
	a16 a, c e bes'8 bes bes a16 gis a8 b |
	d,2 ~ d16 e, gis b d8 d |
	d16 e, gis b d8 d d16 e, gis b d8 e |
	c b16 a f'8 e16 d e8 a e, gis' |
	a1\fermata |
}

violinI = \relative c'' {
	\tuttiI r8 e_"Solo" |
	a a a a a c16 b a8 c16 b |
	a8 c16 b a8 g16 f e8 d16 c b8 e |
	c a a e' e g16 f e8 e |
	a g16 f e8 e bes' g16 f e8 e |
	a( cis,) d( f,) g d' a, cis' |
	d4 r8 d d f16 e d8 d |
	g f16 e d8 d a' f16 e d8 d |
	g( b,) c( e,) f c' g, b' |
%21
	c4 r8 e_"Tutti e Piano" e c16 d e8 e |
	e c16 d e8 e e f16 g a8 g16 f |
	e8 d16 c b8 e c a a e' |
	e16(_"Solo e Forte" a, b a) e'( a, b a) a'( a, b a) e'( a, b a) |
	a'( a, b a) e'( a, b a) g'( a, b a) e'( a, b a) |
	g'( a, b a) e'( a, b a) f'( a, b a) d( a b a) |
	f'( a, b a) d( a b a) f'8 a16 g f8 f |
	d'8. c16 b a g f e8 c16( d e f g a) |
	d,8 b16( c d e f g) c,8 a16( b c d e f) |
	b,8 g16( a b c d e) c8 a16( b c d e f) |
%31
	d8 b16( c d e f g) e8 c16( d e f g a) |
	dis,8 b r e e g16 fis e8 e |
	a g16 fis e8 e b' g16 fis e8 e |
	c' dis, e g, a e' b, dis' |
	e4 r8 <<s_"Tutti" \tuttiII>> r e_"Solo" |
	b' a16 g fis e dis fis e8 e, r b''16 c |
	d8 d d d e, b'16 c d8 d |
	e, b'16 c d8 c16 b c8 a, a a'16 b |
	c8 c c c d,, a''16 b c8 c |
	d,, a''16 b c8 b16 a b8 g,, g g''16 a |
	bes8 bes bes bes e, g16 a bes8 bes |
%51
	cis,16( e) f g a g f e f8 d d, d'16 e |
	f( d c b) g'( f e d) e8 c c, c'16 d |
	e( c b a) f'( e d c) d8 b b, b'16 c |
	d( b a gis) e'( d c b) c8 a a, c'16 d |
	\repeat unfold 2 {e8 fis16 gis a8 gis16 fis e8 a,, a c'16 d} |
	e8 d16 c b( a) gis b a8 a, a e'' |
	a_"Tutti" a a a a c16 b a8 c16 b |
	a8 c16 b a8 g16 f e8 d16 c b8 gis' |
	a16(_"Solo" c, b a) e'( c b a) a'( c, b a) e'( c b a) |
%61
	a'( cis, b a) e'( cis b a) a'( cis, b a) a'( g fis e) |
	fis( fis, e d) a'( fis e d) d'( fis, e d) a'( fis e d) |
	d'( fis, e d) d'( c b a) b( b, a g) d'( b a g) |
	g'( b, a g) d'( b a g) g'( b, a g) g'( f e d) |
	e( g f e) c'( g f e) c'( a g f) d'( a g fis) |
	d'( b a g) e'( b a gis) e'( c b a) f'( c b a) |
	f'( d c b) g'( d c b) g'( e d c) a'( e d cis) |
	a'( fis e d) b'( a gis fis) gis e,_"Tutti" gis b d8 d |
	d16 e, gis b d8 d d16 e, gis b d8 e |
	c b16 a f'8 e16 d e8 a e, gis' |
%71
	a4 r8 e_"Solo" a16( g a) e a( g a) e |
	fis( e d) e fis g a fis g( fis g) d g( f g) d |
	e( d c) d e f g e f( e f) c f( e f) c |
	d( c b) c d e f d e( d e) b e( d e) b |
	<<s_"Tutti" \tuttiIII>> |
}

violinII = \relative c' {
	\tuttiI r4 |
	a4 r a r |
	a r a r |
	a r cis r |
	cis r cis r |
	cis r r2 |
	r b4 r |
	b r b r |
	b r r2 |
	r4 r8 e'\p e c16 d e8 e |
	e c16 d e8 e e f16 g a8 g16 f |
	e8 d16 c b8 e c a a4 |
	a,\f r a r |
	a r a r |
	a r d r |
	d r d r |
	b r c r |
	b r a r |
	d r a r |
	b r c r |
	b r g' r |
	fis r g r |
	a r r2 |
	r4 r8 \tuttiII r4 |
	R1 |
	b4 r gis r |
	gis r a r |
	a, r fis' r |
	fis r g r |
	g r g r |
	e r d r |
	d r c r |
	c r b r |
	b r a r |
	a r a r |
	a r a r |
	r2 r4 r8 e'' |
	a a a a a c16 b a8 c16 b |
	a8 c16 b a8 g16 f e8 d16 c b8 e |
	c a r4 a, r |
	a r a r |
	d r d r |
	d r g, r |
	g r g r |
	c r f r |
	g r a r |
	b r c r |
	d r r16 e, gis b d8 d |
	d16 e, gis b d8 d d16 e, gis b d8 e |
	c b16 a f'8 e16 d e8 a e, gis' |
	a4 r cis,, r |
	d r b r |
	c r a r |
	b r gis r |
	\tuttiIII |
}

violinIII = \violinII

violinIV = \violinII

violaI = \relative c'' {
	\partial 8 r8 |
	r4 r8 e c a r e' |
	c a r c a e r gis |
	e c r a' cis e r e, |
	f a r a b d r d, |
	e g r g a c r c, |
	d f r d gis b r b, |
	c e r a c a r a |
	c a r a c a r e |
	f e d d' gis,2 |
	b8 e, gis b b e, gis b |
%11
	b e, gis b e, a a d |
	a f e e c4 r |
	a r a r |
	a r a r |
	a r cis r |
	cis r cis r |
	cis r r2 |
	r2 b4 r |
	b r b r |
	b r r2 |
%21
	r4 r8 c'\p c a r c |
	c a r c c a r c |
	a e r gis e c c4 |
	a\f r a r |
	a r a r |
	a r d r |
	d r d r |
	b r c r |
	b r a r |
	g r a r |
%31
	b r c r |
	b r g' r |
	fis r g r |
	a r r2 |
	r4 r8 g g e r b' |
	g e r b' g e r g |
	e b r dis b g r e' |
	gis b r b, c e r e |
	fis a r a, b d r d |
	e g r g, a c r a' |
%41
	dis, fis r fis, g b r g' |
	fis r g r fis r e r |
	dis4. dis8 b4 b'8 c |
	fis, b dis, b' g4 r |
	R1 |
	b4 r gis r |
	gis r a r |
	a, r fis' r |
	fis r g r |
	g r g r |
%51
	e r d r |
	d r c r |
	c r b r |
	b r a r |
	a r a r |
	a r a r |
	r2 r4 r8 c' |
	c a r e' c a r e' |
	c a r c a e r gis |
	e4 r a, r |
%61
	a r a r |
	d r d r |
	d r g, r |
	g r g r |
	c r f r |
	g r a r |
	b r c r |
	d r d8 e, gis b |
	b e, gis b b e, gis b |
	e, a a d a f e e |
%71
	c4 r cis r |
	d r b r |
	c r a r |
	b r gis r |
	r r8 a' c a r a |
	c a r e f e d d' |
	gis,2 b8 e, gis b |
	b e, gis b b e, gis b |
	e, a a d a f e e |
	c1\fermata |
}

violaII = \violaI

cello = \relative c' {
	\partial 8 r8 |
	r a c a r a c a |
	r a c a r a gis e |
	a, a' c a r cis cis, a |
	r d' d, d' r b b, g |
	r c' c, c' r a a, f |
	r b' b, b' r gis gis, e |
	r a' a, a' r a c a |
	r a c a r a d cis |
	d e f d b a16 gis a8 b |
	e,4 ~ e16 e gis b e,4 ~ e16 e gis b |
%11
	e,4 ~ e16 b' gis e a8 c d b |
	c d e e, a, a' c a |
	r a c a r a c a |
	r a c a r a gis e |
	r a c a r e' cis a |
	r e' cis a r g cis, a |
	r a' f d e f16 g a8 a, |
	d d' f, d r d' b g |
	r d' b g r f b, g |
	r g' e c d e16 f g8 g, |
%21
	c e'\p c a r a c a |
	r a c a r a c a |
	r a gis e a, a' c a |
	r a\f c a r a c a |
	r a cis a r a cis a |
	r a cis a r d f, d |
	r d' f, d r d' d, c |
	r b' d b r e c c, |
	r d' b b, r c' a a, |
	r b' g g, r c' a a, |
%31
	r d' b b, r e' c c, |
	r b' g e r b' g e |
	r b' g e r b' g e |
	r b' g e fis g16 a b8 b, |
	e, e' g e r e g e |
	r e g e r e g e |
	r e dis b e, e' g e |
	r gis gis, e r a' a, a' |
	r fis fis, d r g' g, g' |
	r e e, c r fis' fis, fis' |
%41
	r dis' dis, b r e e, e' |
	fis r e r dis r cis r |
	b b' dis, b e fis g a |
	dis, e b' b, e, e' g e |
	dis e b' b, e, e' g e |
	r b' gis e r e b' e, |
	r e b' e, r a c a |
	r a fis d r d a' d, |
	r d a' d, r g b g |
	r g bes g r bes g e |
%51
	a, a' cis a r d, f d |
	r g b g r c, e c |
	r f a f r b, d b |
	r e gis e r a, c a |
	r a c a r a c a |
	r a c a r a c a |
	gis a e' e, a a' c a |
	r a c a r a c a |
	r a c a r a gis e |
	a, a' a, a' r a a, a' |
%61
	r a a, a' r a cis a |
	r d d, d' r d d, d' |
	r d, fis d r g g, g' |
	r g g, g' r g, b g |
	r c' e, c r a' fis d |
	r b' gis e r c' a f |
	r d' b g r e' cis a |
	r fis dis b e4 ~ e16 e gis b |
	e,4 ~ e16 e gis b e,4 ~ e16 b' gis e |
	a8 c d b c d e e, |
%71
	a, a' c a r cis cis, cis' |
	r d c! c, r b' b, b' |
	r c b b, r a' a, a' |
	r b a a, r gis' gis, gis' |
	a, a' c a r a c a |
	r a d cis d e f d |
	b a16 gis a8 b e,4 ~ e16 e gis b |
	e,4 ~ e16 e gis b e,4 ~ e16 b' gis e |
	a8 c d b c d e e, |
	a,1\fermata |
}

bass = <<

\cello

\figuremode {
	\partial 8 s8 |
	s1*3 |
	s2 s8 <6> s4 |
	s1 |
	s2 s8 <6> s4 |
	s1 |
	s2 s4 <6->8 <7-> |
	<6-> <_+> s <6!> <6\\> s s4 |
	<7 _+> s <7 _+> s |
%11
	<7 _+> s s s8 <6\\> |
	<6> s <5 4> <_+> s2 |
	s1*2 |
	s2 s8 <6\\> s4 |
	s8 <6\\> s4 s8 <6 4\+> s4 |
	s8 <_+> <6> s <7> s <5 4> <_+> |
	s2 s8 <6> s4 |
	s8 <6> s4 s8 <6 4> s4 |
	s2 <7>8 s <5 4> <3> |
%21
	s1*4 |
	s8 <_+> s4 s8 <7 _+> s4 |
	s8 <7 _+> s4 s2 |
	s1 |
	\repeat unfold 8 {s8 <6> s4} |
%32
	s8 <_+> <6> s s <6 4> <6> s |
	s <7 5> <6> s s <6 4> <6> s |
	s <7 _+> <6> s <7> s <5\\ 4> <_+> |
	s1*3 |
	s8 <6> s4 s2 |
	s8 <6> s4 s2 |
	s1 |
%41
	s8 <6> s4 s2 |
	<6\\>8 s s4 s2 |
	<7 _+>8 s <6 5> s s4 s8 <6\\ 5> |
	<6 5> s <5\\ 4> <_+> s2 |
	<6 5>8 s <5\\ 4> <_+> s2 |
	s4 <5>8 <7> s <7 _+> s4 |
	s1 |
	s4 <7>8 s s <7 _+> s4 |
	s1 |
	s8 <_-> s4 s8 <6> <_-> s |
%51
	<_+> s s4 s2 |
	\repeat unfold 3 {s8 <7> s4 s2} |
	s1*2 |
	<6 5>8 s <5 4> <_+> s2 |
	s1*3 |
%61
	\repeat unfold 3 {s8 <_+> s4 s2} |
	s1 |
	s2 s8 <6-> <6> s |
	s <6!> <6> s s <6> s4 |
	s8 <6> s4 s8 <6!> <6> s |
	s <6!> <6> s <_+>4 s4 |
	<7 _+>4 s <7 _+> s |
	s s8 <6\\> <6> s <5 4> <_+> |
%71
	s2 s8 <6> s4 |
	s8 <_+> <6 4\+> s s <6> s4 |
	s <6 4>8 s s <6> s4 |
	s <6 4>8 s s <6> s4 |
	s1 |
	s4 <6->8 <7-> <6-> <_+> s <6!> |
	<6\\> s s4 <7 _+> s |
	<7 _+> s <7 _+> s |
	s s8 <6\\> <6> s <5 4> <_+> |
}
>>
