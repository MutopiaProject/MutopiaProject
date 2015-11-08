\version "2.18.0"

pMarkings = {\tempo "Presto" \time 2/4 \key a \minor s2*145 \bar "|."}
incmidi = "midi3.ily"

tuttiI = \relative c'' {
	r8 e a b |
	c r b r |
	a4 r8 a |
	g f e d |
	c b a b |
	c r d r |
	e4 r |
	r8 e\p a b |
	c r b r |
	a4 r8 a |
%11
	g f e d |
	c b a b |
	c r d r |
	e4 r8 e\f |
	c' c c c |
	c16 d, d c' c d, d c' |
	b8 b b b |
	b16 c, c b' b c, c b' |
	a8 a a a |
	gis fis16 gis a8 b16 a |
%21
	gis8 fis16 gis a8 b16 a |
	gis8 fis16 e f8 e16 d |
	e4. f8 |
	e4. f8 |
	e d16 e f8 f |
	e d16 e f8 f |
	e fis16 gis a8 a16 b |
	c8 c16 b e4 |
	r8 a, e gis |
}

tuttiII = \relative c''' {
	gis fis16 gis a8 b16 a |
	gis8 fis16 gis a8 b16 a |
	gis8 fis16 e f8 e16 d |
	e4. f8 |
	e4. f8 |
	e d16 e f8 f |
	e d16 e f8 f |
	e fis16 gis a8 a16 b |
	c8 c16 d
}

tuttiIII = \relative c'' {
	g8 c d |
	e r d r |
	c g\p c d |
	e r d r |
	c4 r8 e\f |
	a a a a |
	a g16 fis b8 a |
	g fis16 e b8 dis |
	e b e fis |
	g r fis r |
%101
	e\p b e fis |
	g r fis r |
	e4 r8 e\f |
	c' c c c |
	c16 d, d c' c d, d c' |
	b8 b b b |
	b16 c, c b' b c, c b' |
	a8 a a a |
}

violinI = \relative c''' {
	\tuttiI |
	a8 e_"Solo" a16 c b d |
%31
	c8 r b r |
	a4 r8 a |
	g16 a f g e f d e |
	c d b d a8 a' |
	g16 a f g e f d e |
	c d b c a8 e' |
	e16 g f g e g f e |
	a( g f e) a( g f e) |
	f d cis d f d cis d |
	g( f e d) g( f e d) |
%41
	e c b c e c b c |
	f( e d c) f( e d c) |
	d b a b d b a b |
	e( d c b) e( d c b) |
	c a c e a b a b |
	c, a c e a b a b |
	dis, b dis fis a b a b |
	dis, b dis fis a b a b |
	g8 fis16 e dis8. e16 |
	e8 b_"Tutti" e fis |
%51
	g r fis r |
	e b\p e fis |
	g r fis r |
	e4 r8 b_"Solo e Forte" |
	g'16 a g a g a g a |
	g8 fis16( g) a( g) fis( e) |
	fis g fis g fis g fis g |
	fis8 e16( fis) g( fis) e( dis) |
	e fis e fis e fis e fis |
	e8 dis16( e) fis( e) dis( cis) |
%61
	dis8 cis16 dis b8 b'_"Tutti" |
	\tuttiII e8 e,_"Solo" |
%71
	a a16 b c8 c16 d |
	e8 e, e e |
	a a16 b c8 c16 d |
	e8 e, e e |
	\repeat unfold 4 {a16 a, cis e} |
	\repeat unfold 4 {g a, cis e} |
	f d, fis a d d, fis a |
	d d, fis a d d, fis a |
%81
	\repeat unfold 4 {c d, fis a} |
	b g a b c d e f |
	g c, d e f g a b |
	c g e g c g e g |
	c g e g c g e g |
	c g d g c g d g |
	c g d g c g d g |
	b g d g b g d g |
	b g d g b g d b' |
%91
	c8 <<s_"Tutti" \tuttiIII>>
	gis16_"Solo" e gis e b' e, gis e |
	b' e, gis e b' e, gis e |
%111
	a e e e a e e e |
	b' e, e e b' e, e e |
	c' e, e e c' e, e e |
	d' e, e e d' e, e e |
	e'8 e,_"Tutti" a b |
	c r b r |
	a4 r8 a |
	g f e d |
	c b a b |
	c r d r |
%121
	e4 r8 e_"Solo" |
	c'16 d c d c d c d |
	c8 b16( c) d( c) b( a) |
	b c b c b c b c |
	b8 a16( b) c( b) a( gis) |
	a b a b a b a b |
	gis8_"Tutti" fis16 gis a8 b16 a |
	gis8 fis16 gis a8 b16 a |
	gis8 fis16 e f8 e16 d |
	e a_"Solo" gis a e8 f |
%131
	e16 a gis a e8 f |
	e_"Tutti" d16 e f8 f |
	e d16 e f8 f |
	e fis16 g a8 a16 b |
	c8 c16 d e8 e, |
	f e a c, |
	b a' b, gis' |
	a e_"Solo" a a |
	gis16 fis e fis g8 a |
	fis16 e d e f8 g |
%141
	e16 d c d e8 f |
	d16 c b c d8 e |
	c16_"Tutti" a c e a8 c, |
	b a' b, gis' |
	a2\fermata |
}

violinII = \relative c''' {
	\tuttiI |
	a4 r |
%31
	R2*19 |
	r8 b, e fis |
%51
	g r fis r |
	e b\p e fis |
	g r fis r |
	e4 r |
	R2*6 |
%61
	r4 r8 b' |
	\tuttiII e4 |
%71
	R2*20 |
%91
	r8 \tuttiIII |
	gis,4 r |
%110
	R2*5 |
	r8 e a b |
	c r b r |
	a4 r8 a |
	g f e d |
	c b a b |
	c r d r |
%121
	e4 r |
	R2*5 |
	gis8 fis16 gis a8 b16 a |
	gis8 fis16 gis a8 b16 a |
	gis8 fis16 e f8 e16 d |
	e4 r |
%131
	R2 |
	e8 d16 e f8 f |
	e d16 e f8 f |
	e4 r |
	r r8 e |
	f e a c, |
	b a' b, gis' |
	a4 r |
	R2*4 |
	r16 a, c e a8 c, |
	b a' b, gis' |
	a2\fermata |
}

violinIII = \violinII

violinIV = \violinII

violaI = \relative c' {
	c4 r8 e |
	e r gis r |
	e d e c |
	d4 b' |
	e, r8 gis |
	e r a r |
	gis\p a b gis |
	e4 r8 e |
	e r gis r |
	e d e c |
%11
	d4 b' |
	e, r8 gis |
	e r a r |
	gis\f a b gis |
	e4 r8 a |
	a a f f |
	f16 g, g f' f g, g f' |
	e8 e e e |
	e16 f, f e' d f, f a' |
	b8 a16 b c8 d16 c |
%21
	b8 a16 b c8 d16 c |
	b8 c a b |
	c4. d8 |
	c4. d8 |
	c b16 c d8 d |
	c8 b16 c d8 d |
	c4 r |
	e, r8 d |
	e d16 c b8 b |
	c4 r |
%31
	R2*19 |
	g'4 r8 b |
%51
	b r dis, r |
	b4 r8 b' |
	b r dis, r |
	b4 r |
	R2*6 |
%61
	r4 r8 dis' |
	b a16 b c8 d16 c |
	b8 a16 b c8 d16 c |
	b8 c a b |
	c4. d8 |
	c4. d8 |
	c b16 c d8 d |
	c b16 c d8 d |
	c4 r |
	e, r |
%71
	R2*20 |
%91
	e4 r8 g |
	g r b, r |
	a4 r8 g'\p |
	g r b, r |
	e\f f g e |
	dis?4 r8 dis |
	dis e fis dis |
	b c b b |
	g4 r8 b' |
	b r dis, r |
%101
	b4 r8 b'\p |
	b r dis, r |
	g\f a b gis |
	e4 r8 a |
	a a f f |
	f16 g, g f' f g, g f' |
	e8 e e e |
	e16 f, f e' d f, f a |
	b4 r |
	R2*5 |
	c4 r8 e |
	e r gis r |
	e d e c |
	d4 b' |
	e, r8 gis |
	e r a r |
%121
	gis4 r |
	R2*5 |
	b8 a16 b c8 d16 c |
	b8 a16 b c8 d16 b |
	b8 c a b |
	c4 r |
%131
	R2 |
	c8 b16 c d8 d |
	c8 b16 c d8 d |
	c4 r |
	r r8 c |
	d c r e, |
	f4 e |
	c r |
	R2*4 |
	e4 r8 e |
	f4 e |
	c2\fermata |
}

violaII = \violaI

cello = \relative c {
	a4 r8 gis |
	a d e e, |
	a' b c a |
	b4 gis |
	a r8 e |
	a r f r |
	e\p fis gis e |
	a4 r8 gis |
	a c, e e, |
	a' b c a |
%11
	b4 gis |
	a r8 e |
	a r f r |
	e\f fis gis e |
	a a, r a' |
	d d d d |
	g, g, r g' |
	c c c c |
	f, f, r f' |
	e e a, a |
%21
	e' e a, a |
	e'4 d |
	a8 b c gis |
	a b c gis |
	a4 gis |
	a gis |
	a r |
	a r8 b |
	c d e e, |
	a' b c gis |
%31
	a d e e, |
	a b c a |
	b4 gis |
	a8 b c a |
	b4 gis |
	a8 b c a |
	e4 r |
	cis'8 a cis a |
	d d, r4 |
	b'8 g b g |
%41
	c c, r4 |
	a'8 f a f |
	b b, r4 |
	gis'8 e gis e |
	a a, r a' |
	a a, r a' |
	b b, r b' |
	b b, r b' |
	e a, b b, |
	e4 r8 dis |
%51
	e a b b, |
	e4 r8 dis\p |
	e a b b, |
	e fis\f g dis |
	e e, r e' |
	a a a a |
	d d, r d |
	g g g g |
	c c, r c' |
	fis, fis fis fis |
%61
	b, cis dis b |
	e e a, a |
	e' e a, a |
	e'4 d |
	a8 b c gis |
	a b c gis |
	a4 gis |
	a gis |
%69
	\repeat unfold 6 {a r} |
	\repeat unfold 2 {a'8 b cis a |
	a,4 r} |
	\repeat unfold 2 { d8 e fis d |
	d,4 r} |
%83
	e'8 d! c b |
	e c b g |
	c4 r |
	c r |
	g' r |
	g r |
	g, r |
	g r |
%91
	c r8 b |
	c f g g, |
	c4 r8 b\p |
	c f g g, |
	c'\f d e c |
	fis, e dis cis |
	b cis dis b |
	e a b b, |
	e4 r8 dis |
	e a b b, |
%101
	e4 r8 dis\p |
	e a b b, |
	e\f fis gis e |
	a a, r a' |
	d d d d |
	g, g, r g' |
	c c c c |
	f, f, r f' |
	e4 r |
	R2 |
%111
	a,4 r |
	R2 |
	a4 r |
	R2 |
	a4 r8 gis |
	a d e e, |
	a' b c a |
	b4 gis |
	a r8 d |
	a r f r |
%121
	e fis gis e |
	a a, r a' |
	d d d d |
	g, g, r g' |
	c c c c |
	f, f, r f' |
	e e a, a |
	e' e a, a |
	e'4 d |
	a8 b c gis |
%131
	a b c gis |
	a4 gis |
	a gis |
	a r |
	r r8 a |
	d a r a |
	d4 e |
	a,8 a'16 b c8 a |
	e' d cis a |
	d c! b g |
%141
	c b a f |
	b a gis e |
	a, b c a |
	d b e e, |
	a2\fermata |
}

bass = <<

\cello

\figuremode {
	s4 s8 <6> |
	s <7> <_+> s |
	s2 |
	<6>4 <6 5> |
	s s8 <_+> |
	s4 <6>8 s |
	<_+> s s4 |
	s s8 <6> |
	s <7 5> <_+> s |
	s2 |
%11
	<6>4 <6 5> |
	s s8 <_+> |
	s4 <6>8 s |
	<_+> s s4 |
	s2 |
	<7>8 s s4 |
	<7>8 s s4 |
	<7>8 s s4 |
	<7>8 s s <6> |
	<_+> s s4 |
%21
	<_+>8 s s4 |
	<56 _+> <56\\> |
	s s8 <7 5> |
	s4 s8 <7 5> |
	s4 <7 5> |
	s <7 5> |
	s2*2 |
	s4 <5 4>8 <_+> |
	s2 |
%31
	s8 <7 5> <5 4> <_+> |
	s2 |
	s4 <6 5> |
	s2 |
	s4 <6 5> |
	s2 |
	s4 <6 5> |
	s2 |
	<_!>4 s |
	<6>8 s s4 |
%41
	s2 |
	<6>8 s s4 |
	s2 |
	<6>8 s s4 |
	s2*2 |
	<_+>8 s s <7 _+> |
	<_+> s s <7 _+> |
	s4 <_+>8 s |
	s4 s8 <6> |
%51
	s <7 5> <5\\ 4> <_+> |
	s4 s8 <6> |
	s <7 5> <5\\ 4> <_+> |
	s4 s8 <6> |
	s2 |
	\repeat unfold 5 {<7>8 s s4} |
%61
	<_+>8 s s4 |
	<_+>8 s s4 |
	<_+>8 s s4 |
	<56 _+>4 <56 _-> |
	s s8 <7 5> |
	s4 s8 <7 5> |
	s4 <7 5> |
	s <7 5> |
%69
	s2*6 |
	<_+>8 s s4 |
	<_+> s |
	<7 _+>8 s s4 |
	<7 _+>4 s |
	<_+>8 s s4 |
	<_+> s |
%81
	<7 _+>8 s s4 |
	<7 _+> s |
	s <6>8 s |
	<6> s <6> s |
	s2*2 |
	<5 4>4 s |
	s2 |
	<3>4 s |
	s2 |
%91
	s4 s8 <6> |
	s <7 5> <5 4> <3> |
	s4 s8 <6> |
	s <7 5> <5 4> <3> |
	s2 |
	<6\\>8 s s4 |
	<7 _+>8 s <6> <7 _+> |
	s <7 5> <5\\ 4> <_+> |
	s2 |
	s8 <7 5> <5\\ 4> <_+> |
%101
	s2 |
	s8 <7 5> <5\\ 4> <_+> |
	s4 <6>8 s |
	s2 |
	<7>8 s s4 |
	<7>8 s s4 |
	<7>8 s s4 |
	<7>8 s s <6> |
	<_+>4 s |
%110
	s2*5 |
	s4 s8 <6> |
	s <7 5> <5 4> <_+> |
	s2 |
	<6>4 <6 5> |
	s s8 <_+> |
	s4 <6>8 s |
%121
	<_+> s s4 |
	s2 |
	<7>8 s s4 |
	<7>8 s s4 |
	<7>8 s s4 |
	<7>8 s s <6> |
	<_+> s s4 |
	<_+>8 s s4 |
	<56 _+>4 <56 _-> |
	s s8 <7> |
%131
	s4 s8 <7> |
	s4 <7 5> |
	s <7 5> |
	s2*3 |
	<6 5>4 <_+> |
	s2 |
	<_+>8 s <6 5-> <7 _+> |
	<_+> s <6 5-> <7> |
%141
	s4 s8 <7> |
	s4 <6 5>8 <7 _+> |
	s2 |
	<6 5>8 s <_+> s |
}
>>
