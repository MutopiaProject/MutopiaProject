\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 4/4 \key g \major s1*64 \bar "||"}
incmidi = "midi1.ily"

violinI = \relative c''' {
	g8 fis16 e d8 c b g b d |
	g4 a b8 a16 b g8 b |
	a16 d a d a d a d b8 d r b\p |
	a16 d a d a d a d b8 d r g,\f |
	fis16 e d fis g fis e g a g fis a b a g b |
	cis b a cis d8 g, fis4 e |
	d r16 d, e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
%11
	b\trill a r16 a b c d e fis g a8 c, |
	b16_"Solo" g' fis g d g fis g e g fis g e g fis g |
	d g\p fis g d g fis g e g fis g e g fis g |
	d g\f fis g d g fis g c, g' fis g c, g' fis g |
	b, g' fis g b, g' fis g a, g' fis g a, fis' e fis |
	g8_"Tutti" fis16 e d8 c b g b d |
	g4 a b8 a16 b g8 b |
	a16 d a d a d a d b8 d r b\p |
	a16 d a d a d a d b8 d r b\f |
	a16 g a b g fis g a fis a fis a fis a fis a |
%21
	e a e a e a e a fis\p a fis a fis a fis a |
	e a e a e a e a fis_"Solo e Forte" a g a fis e d cis |
	b b' a b g fis e d cis e d e cis d b cis |
	a cis b cis a cis b cis a d cis d a d cis d |
	b d cis d b d cis d b e d e b e d e |
	cis e d e cis e d e cis fis e fis cis fis e fis |
	d fis e fis d fis e fis d g fis g d g fis g |
	cis, a b cis d e fis g a d, e fis g a b cis |
	d4 r16 d, cis d fis, d' cis d e, cis' b cis |
	d8_"Tutti" cis16 b a8 g fis d fis a |
%31
	d4 e fis8 e16 fis d8 fis |
	e16 a e a e a e a fis8 a r fis\p |
	e16 a e a e a e a fis8 a r fis\f |
	g16 fis g e g fis g e gis fis gis e gis fis gis e |
	a gis a e a gis a e ais gis ais fis ais gis ais fis |
	b8 b, d fis b a16 g fis8 e |
	d4 cis b16 b'_"Solo" a b fis b a b |
	g b a b g b a b e, a g a e a g a |
	fis a g a fis a g a d, g fis g d g fis g |
	e g fis g e g fis g cis, fis e fis cis fis e fis |
%41
	d b d fis b b, d fis b b, d fis b b, d fis |
	b b, a b d, b' a b e, b' a b e, b' a b |
	fis b a b fis b a b g b a b g b a b |
	d, b' a b d, b' a b e, b' a b e, b' a b |
	fis b a b fis8 ais b_"Tutti" ais16 g fis8 e |
	d b d fis b4 cis |
	d8 cis16 d b4 d8 cis16 b a8 g |
	fis d fis a d4 e |
	fis8 e16 fis d4 g8 fis16 e d8 c |
	b g b d g4 a |
%51
	b8 a16 b g8 d e16_"Solo" g fis g e g fis g |
	d g fis g d g fis g e g fis g e g fis g |
	d g fis g d g fis g c, g' fis g c, g' fis g |
	b, g' fis g b, g' fis g a, g' fis g a, fis' e fis |
	g4 r16 d,_"Tutti" e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
	b\trill a r16 a b c d e fis g a8 c, |
	b g' a, fis' g fis16 e d8 c |
%61
	b g b d g4 a |
	b8 a16 b g4 g8 fis16 e d8 c |
	b d g b, a g' d, fis' |
	g1\fermata |
}

violinII = \relative c''' {
	g8 fis16 e d8 c b g b d |
	g4 fis g r8 g |
	fis16 a fis a fis a fis a g8 b r g\p |
	fis16 a fis a fis a fis a g8 b r g\f |
	fis16 e d fis g fis e g a g fis a b a g b |
	cis b a cis d8 g, fis4 e |
	d r16 d, e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
%11
	b\trill a r16 a b c d e fis g a8 c, |
	b d\p g d r e g e |
	r d g d r e g e |
	r d g d r c g' c, |
	r b g' b, r a fis' a, |
	g'\f fis16 e d8 c b g b d |
	g4 fis g r8 g |
	fis16 a fis a fis a fis a g8 b r g\p |
	fis16 a fis a fis a fis a g8 b r g\f |
	e e e e a,16 fis' d fis d fis d fis |
%21
	cis e cis e cis e cis e d\p fis d fis d fis d fis |
	cis e cis e cis e cis e d4 r |
	R1 |
	r8 a cis a r a d a |
	r b d b r b e b |
	r cis e cis r cis fis cis |
	r d fis d r d g d |
	e a, g g fis fis e e |
	d4 r d8 g a a, |
	d'\f cis16 b a8 g fis d fis a |
%31
	d4 cis d r8 d |
	cis16 e cis e cis e cis e d8 fis r d\p |
	cis16 e cis e cis e cis e d8 fis r fis\f |
	g16 fis g e g fis g e gis fis gis e gis fis gis e |
	a gis a e a gis a e ais gis ais fis ais gis ais fis |
	b8 b, d fis b a16 g fis8 e |
	d4 cis b8 fis' b fis |
	r g b g r e a e |
	r fis a fis r d g d |
	r e g e r cis fis cis |
%41
	d fis d b r fis' d b |
	r d, b' d, r e b' e, |
	r fis b fis r g b g |
	r d b' d, r e b' e, |
	r fis ais fis b\f ais16 g fis8 e |
	d b d fis b4 cis |
	d8 cis16 d b4 d8 cis16 b a8 g |
	fis d fis a d4 e |
	fis8 e16 fis d4 g8 fis16 e d8 c |
	b g b d g4 a |
%51
	b8 a16 b g4 r8 e g e |
	r d g d r e g e |
	r d g d r c g' c, |
	r b g' b, r a fis' a, |
	g4 r16 d e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
	b\trill a r16 a b c d e fis g a8 c, |
	b g' a, fis' g fis16 e d8 c |
%61
	b g b d g4 fis |
	g r g8 fis16 e d8 c |
	b d g b, a g' d, fis' |
	g1\fermata |
}

violinIII = \relative c''' {
	g8 fis16 e d8 c b g b d |
	g4 a b8 a16 b g8 b |
	a16 d a d a d a d b8 d r b\p |
	a16 d a d a d a d b8 d r g,\f |
	fis16 e d fis g fis e g a g fis a b a g b |
	cis b a cis d8 g, fis4 e |
	d r16 d, e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
%11
	b\trill a r16 a b c d e fis g a8 c, |
	b8 b,\p b b c c c c |
	b b b b  c c c c |
	b b b b a a a a |
	g g g g c c d d |
	g'\f fis16 e d8 c b g b d |
	g4 a b8 a16 b g8 g, |
	d' d d d, g g g g,\p |
	d'' d d d, g g g g,\f |
	cis cis cis cis d16 a'' fis a fis a fis a |
%21
	e a e a e a e a fis\p a fis a fis a fis a |
	e a e a e a e a fis8 d,\p d d |
	g, g g g a a a a |
	a' a g g fis fis fis fis |
	g g g g gis gis gis gis |
	a a a a ais ais ais ais |
	b b b b b b b b |
	a a g g fis fis e e |
	d4 r d8 g a a, |
	d'\f cis16 b a8 g fis d fis a |
%31
	d4 e fis8 e16 fis d8 fis |
	e16 a e a e a e a fis8 a r fis\p |
	e16 a e a e a e a fis8 a r fis\f |
	g16 fis g e g fis g e gis fis gis e gis fis gis e |
	a gis a e a gis a e ais gis ais fis ais gis ais fis |
	b8 b, d fis b a16 g fis8 e |
	d4 cis b8 dis\p dis dis |
	e e e e cis cis cis cis |
	d d d d b b b b |
	cis cis cis cis ais ais ais ais |
%41
	b4 r b, r |
	b b cis cis |
	d d e e |
	b b cis cis |
	fis fis b8\f ais16 g fis8 e |
	d b d fis b4 ais |
	b r d8 cis16 b a8 g |
	fis d fis a d4 cis |
	d r g8 fis16 e d8 c |
	b g b d g4 fis |
%51
	g r8 b,\p c c c c |
	b b b b c c c c |
	b b b b a a a a |
	g g g g c, c d d |
	g,4\f r16 d' e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis16 g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
	b\trill a r16 a b c d e fis g a8 c, |
	b g' a, fis' g fis16 e d8 c |
%61
	b g b d g4 a |
	b8 a16 b g4 g8 fis16 e d8 c |
	b d g b, a g' d, fis' |
	g1\fermata |
}

violinIV = \relative c''' {
	g8 fis16 e d8 c b g b d |
	g4 fis g r8 g |
	fis16 a fis a fis a fis a g8 b r g\p |
	fis16 a fis a fis a fis a g8 b r g\f |
	fis16 e d fis g fis e g a g fis a b a g b |
	cis b a cis d8 g, fis4 e |
	d r16 d, e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
%11
	b\trill a r16 a b c d e fis g a8 c, |
	b b,\p b b c c c c |
	b b b b c c c c |
	b b b b a a a a |
	g g g g c c d d |
	g'\f fis16 e d8 c b g b d |
	g4 fis g r8 g, |
	d' d d d, g g g g,\p |
	d'' d d d, g g g g,\f |
	cis cis cis cis d16 fis' d fis d fis d fis |
%21
	cis e cis e cis e cis e d\f fis d fis d fis d fis |
	cis e cis e cis e cis e d8 d,\p d d |
	g, g g g a a a a |
	a' a g g fis fis fis fis |
	g g g g gis gis gis gis |
	a a a a ais ais ais ais |
	b b b b b b b b |
	a a g g fis fis e e |
	d4 r d8 g a a, |
	d'\f cis16 b a8 b fis d fis a |
%31
	d4 cis d r8 d |
	cis16 e cis e cis e cis e d8 fis r d\p |
	cis16 e cis e cis e cis e d8 fis r fis\f |
	g16 fis g e g fis g e gis fis gis e gis fis gis e |
	a gis a e a gis a e ais gis ais fis ais gis ais fis |
	b8 b, d fis b a16 g fis8 e |
	d4 cis b8 dis\p dis dis |
	e e e e cis cis cis cis |
	d d d d b b b b |
	cis cis cis cis ais ais ais ais |
%41
	b4 r b, r |
	b b cis cis |
	d d e e |
	b b cis cis |
	fis fis b8\f ais16 g fis8 e |
	d b d fis b4 ais |
	b r d8 cis16 b a8 g |
	fis d fis a d4 cis |
	d r g8 fis16 e d8 c |
	b g b d g4 fis |
%51
	g r8 b,\p c c c c |
	b b b b c c c c |
	b b b b a a a a |
	g g g g c, c d d |
	g,4\f r16 d' e fis g a b c d8 f, |
	f\trill e r16 e fis g a b cis d e8 g, |
	g\trill fis r16 fis16 g a b c d e fis8 a, |
	a\trill g r16 g a b c d e fis g8 b, |
	b\trill a r16 a b c d e fis g a8 c, |
	b g' a, fis' g fis16 e d8 c |
%61
	b g b d g4 a |
	b8 a16 b g4 g8 fis16 e d8 c |
	b d g b, a g' d, fis' |
	g1\fermata |
}

violi = \relative c' {
	R1 |
	d4 d d r8 d |
	d d d d d d d d\p |
	d d d d d d d b'\f |
	a d b4 a g8 b |
	a4. d8 d4 cis |
	d8 d, d d d d d d |
	g, g g g e' e e e |
	a, a a a fis' fis fis fis |
	b, b b b g' g g g |
%11
	c, c c c a a a a |
	d b\p b b c c c c |
	b b b b c c c c |
	b b b b a a a a |
	g g g g  c c d d |
	\tag #'violaI {d4\f}
	\tag #'violaII {b4\f}
	r d r |
	d d d r8 g |
	d' d d d, g g g g, |
	d'' d d d, g g g g, |
	cis cis cis cis d a' a a |
%21
	a a a a a a\p a a |
	a a a a a d,\p d d |
	g, g g g a a a a |
	a' a g g fis fis fis fis |
	g g g g gis gis gis gis |
	a a a a ais ais ais ais |
	b b b b b b b b |
	a a g g fis fis e e |
	d4 r d8 g a a, |
	\tag #'violaI {a4\f}
	\tag #'violaII {fis4\f}
	r a r |
%31
	a' a a r8 a |
	a a a a a a a a\p |
	a a a a a a a a\f |
	b, b b' b b b b b |
	cis cis cis cis cis cis cis cis |
	b4 r fis4. b8 |
	b4 ais b8 dis\p dis dis |
	e e e e cis cis cis cis |
	d d d d b b b b |
	cis cis cis cis ais ais ais ais |
%41
	b4 r b, r |
	b b cis cis |
	d d e e |
	b b cis cis |
	fis fis fis r |
	fis\f r fis fis |
	fis r d r |
	fis r a a |
	a r g r |
	d r d d |
%51
	d r8 b'\p c c c c |
	b b b b c c c c |
	b b b b a a a a |
	g g g g c, c d d |
	d\f d d d d d d d |
	g, g g g e' e e e |
	a, a a a fis' fis fis fis |
	b, b b b g' g g g |
	c, c c c a a a a |
\tag #'violaI {
	d4 a' b r |
%61
	d, r d d |
	d r d r |
	d r8 g a4 a |
	b1\fermata |
}
\tag #'violaII {
	d,4 d d r |
%61
	d r d d |
	d r b r |
	d r8 d e4 d |
	d1\fermata |
}
}

violaI = {\keepWithTag #'violaI \violi}

violaII = {\keepWithTag #'violaII \violi}

cello = \relative c' {
	R1 |
	g4 d g r8 g |
	d' d d d, g g g g,\p |
	d'' d d d, g g g g,\f |
	d'4 e fis g ~|
	g fis8 g a4 a, |
	d8 d c c b b b b |
	c c c c cis cis cis cis |
	d d d d d d d d |
	e e e e e e e e |
%11
	fis fis fis fis fis fis fis fis |
	g4 r r2 |
	R1*3 |
	g,4 r g r |
	g' d g g, |
	R1*2 |
	r2 d''8 d d d, |
%21
	a' a a a, d'\p d d d, |
	a' a a a, d4 r |
	R1*7 |
	d4 r d r |
%31
	d a d r8 d |
	a' a a a, d d d d,\p |
	a'' a a a, d d d d,\f |
	e' e e e d d d d |
	cis cis cis cis fis fis e e |
	d4 r b8 cis d e |
	fis4 fis, b r |
	R1*7 |
	r2 b4 r |
	b r b fis |
	b8 a g4 fis r |
	d r d' a |
	d4. c!8 b4 r |
	g' r g d |
%51
	g g, r2 |
	R1*3 |
	g8 g g g b b b b |
	c c c c cis cis cis cis |
	d d d d d d d d |
	e e e e e e e e |
	fis fis fis fis fis fis fis fis |
	g b,16 c d8 d, g4 r |
%61
	g r g' d |
	g r g r |
	g r8 b, c4 d |
	g,1\fermata |
}

bass = <<

\cello

\figuremode {
	s1*4 |
	s2 <6>4 s |
	<6 4\+ 2> <6>8 s <6 4>4 <5 _+> |
	s <4 2>8 s <6> s <6 5-> s |
	<5 4-> <3> s s <6 5> s s4 |
	<5 4>8 <3> s s <6 5> s s4 |
	<5 4>8 <3> s s <6 5> s s4 |
%11
	<5 4>8 <3> s s <6 5> s s4 |
	s1*9 |
%21
	<_+>8 s s4 s2 |
	<_+>8 s s4 s2 |
	s1*9 |
%32
	<_+>8 s s4 s2 |
	<_+>8 s s4 s2 |
	s <6 4\+ 2>8 s s4 |
	<6>8 s s4 <_+>8 s <4\+ 2> s |
	<6>4 s s2 |
	<6 4>4 <5 _+> s2 |
	s1*8 |
	s2 s4 <_+> |
	s <6> <6 4> s |
	s2 s4 <_+> |
	s4. <4 2>8 <6>4 s |
%50
	s1*5 |
	s2 <6>8 s <6 5-> s |
	<5 4-> <3> s s <6 5> s s4 |
	<5 4>8 <3> s s <6 5> s s4 |
	<5 4>8 <3> s s <6 5> s s4 |
	<5 4>8 <3> s s <6 5> s s4 |
	s8 <6>16 s <5 4>8 <3> s2 |
%61
	s1*2 |
	s2 <6 5>4 s |
}
>>
