\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 3/8 \key e \minor s4.*131 \bar "|."}
incmidi = "midi4.ily"

tuttiAI = \relative c''' {
	g8 g16 fis g a |
	fis8 fis16 e fis g |
	a8 a16 g a b |
	g8 g16 fis g a |
	b8 a16 b a g |
	fis e fis g fis8 |
	g8\p g16 fis g a |
	fis8 fis16 e fis g |
	a8 a16 b a b |
	g8 g16 fis g a |
%11
	b8 a16 b a g |
	fis e fis g fis8 |
	b\f b, b' |
	\repeat unfold 4 {b b, b'} |
	g4 r8 |
	a a, a' |
	a a, a' |
%21
	a a, a' |
	a4 g8 ~|
	g fis8. fis16 |
}

tuttiBI = \relative c'' {
	e8 e16 dis e fis |
	dis8 dis16 cis dis e |
	fis8 fis16 e fis g |
	e8 e16 dis e fis |
	g8 fis16 g fis e |
	dis cis dis e dis8 |
	e\p e16 dis e fis |
	dis8 dis16 cis dis e |
	fis8 fis16 e fis g |
	e8 e16 dis e fis |
%11
	g8 fis16 g fis e |
	dis cis dis e dis8 |
	fis4\f r8 |
	g4 r8 |
	fis4 r8 |
	g4 r8 |
	fis4 r8 |
	\repeat unfold 4 {e4 r8} |
%22
	fis4 e8 ~|
	e e dis |
	e4 r8 |
	R4.*21 |
	b8 b16 cis b cis |
	d8 d16 e d e |
%51
	cis8 cis16 d cis d |
	e8 e16 fis e fis |
	d8 d16 e d e |
	cis8 cis16 d cis d |
	b8 b16 cis b cis |
	ais4. |
	b8( dis) fis |
	fis( dis) b |
	b( dis) fis |
	b,4. |
%61
	cis8( eis) gis |
	gis( eis) cis |
	cis( eis) gis |
	cis,4. |
	cis4 r8 |
	d4 r8 |
	cis4 r8 |
	d4 r8 |
	cis4 r8 |
%70
	\repeat unfold 4 {b4 r8} |
	cis4 b8 ~|
	b b ais |
}

tuttiAII = \relative c'' {
	d16 e d e |
	fis8 fis16 g fis g |
	e8 e16 fis e fis |
	g8 g16 a g a |
	fis8 fis16 g fis g |
%51
	e8 e16 fis e fis |
	d8 d16 e d e |
	cis8 fis, fis |
	fis' fis16 g fis g |
	a,8 fis'16 g fis g |
	a,8 fis'16 a g fis |
	g8 e e, |
	gis' gis16 a gis a |
	b,8 gis'16 a gis a |
	b,8 gis'16 b ais gis |
%61
	ais8 fis fis, |
	\repeat unfold 5 {fis' fis, fis'} |
	d4 r8 |
	e e, e' |
	e e, e' |
	e e, e' |
%71
	e4 d8 ~|
	d cis8. cis16 |
	b4 r8 |
	R4.*13 |
	g'8 g16 fis g a |
	fis8 fis16 e fis g |
	a8 a16 g a b |
	g8 g16 fis g a |
%91
	b8 a16 b a g |
	fis e fis g fis8 |
}

tuttiBII = \relative c'' {
	e8 e16 dis e fis |
%91
	dis8 dis16 cis dis e |
	fis8 fis16 e fis g |
	e8 e16 dis e fis |
	g8 fis16 g fis e |
	dis cis dis e dis8 |
}

tuttiAIII = \relative c''' {
	b8 b, b |
	a' b, b |
	g' b, b |
	fis' a, a |
	g'8. fis16 e8 |
%121
	e b dis |
	e4 r8 |
	\repeat unfold 6 {a a, a'} |
	a4 g8 ~|
	g fis8.\trill fis16 |
%131
	e4.\fermata
}

tuttiBIII = \relative c''' {
	g4 r8 |
	fis4 r8 |
%121
	e4 r8 |
	dis4 r8 |
	b8. a16 g8 |
	fis4 fis8 |
	g4 r8 |
	e'4 r8 |
	e4 r8 |
	e4 r8 |
	fis4 r8 |
	fis4 r8 |
%131
	fis4 r8 |
	fis4 e8 ~|
	e e8. dis16 |
	e4.\fermata |
}

violinI = \relative c'' {
	\tuttiAI |
	e16_"Solo" b e g fis e |
	fis b, fis' a g fis |
	g b, g' b a g |
	fis e dis cis b8 |
	R4.*4 |
%32
	r16 g'_"Solo" g a b g |
	c e, e fis g a |
	fis( g a) g a fis |
	b d, d e fis g |
	e( fis g) fis g e |
	a c, c d e fis |
	d g g( b,) b( c) |
	c a' a( c,) c( b) |
	b( g) g( b) b( e) |
%41
	e( b) b( g') g( ais,) |
	ais( fis) fis( cis') cis( ais) |
	e'( cis) cis( g') g( e) |
	ais( fis) fis( ais) ais( b) |
	b d, cis8.\trill b16 |
	b8_"Tutti" \tuttiAII |
	b'16_"Solo" a g fis e d |
	c8 a'4 ~|
	a16 g fis e d c |
	b8 g'4 ~|
	g16 fis e d c b |
	a8 fis'4 ~|
	fis16 e dis cis b a |
	g fis e8 r |
%101
	R4.*6 |
	g'8 g16 fis g a |
	fis4 r8 |
	a8 a16 g a b |
	g4 r8 |
%111
	c8 c16 b c d |
	b4 r8 |
	a a16 g a b |
	g4 r8 |
	R4. |
	\tuttiAIII |
}

violinII = \relative c'' {
	\tuttiBI |
	b16 b'_"Solo" a g fis e |
	d g fis e d cis |
	b fis b d cis b |
	cis fis, cis' e d cis |
	d b d e fis e |
%81
	dis b dis fis e dis |
	e b e g fis e |
	fis b, fis' a g fis |
	g b, g' b a g |
	fis e dis cis b8 |
	R4.*4 |
	\tuttiBII
	R4. |
	e16_"Solo" d c b a g |
	fis8 d'4 ~|
	d16 c b a g fis |
	e8 c'4 ~|
%101
	c16 b a g fis e |
	dis8 fis dis' |
	e e, r |
	R4.*6 |
	e'8 e16 dis e fis |
%111
	dis4 r8 |
	fis fis16 e fis g |
	e4 r8 |
	a8 a16 g a b |
	g4 r8 |
	fis fis16 e fis g |
	r4 r8 |
	R4. |
	\tuttiBIII |
}

violinIII = \relative c'' {
	\tuttiAI |
	e4 r8 |
	R4.*3 |
	e16_"Solo" b e g fis e |
	fis b, fis' a g fis |
	g b, g' b a g |
%31
	fis e dis cis b8 |
	R4.*14 |
	d8 \tuttiAII |
	R4.*7 |
	b'16_"Solo e Piano" a g fis e d |
%101
	c8 a'4 ~|
	a16 g fis e d c |
	b8 g'4 ~|
	g16 fis e d c b |
	a8 fis'4 ~|
	fis16 e dis cis b a |
	g fis e8 r |
	fis'8\f fis16 e fis g |
	a4 r8 |
	b8 b16 c a b |
%111
	c4 r8 |
	b8 b16 a b c |
	a4 r8 |
	g8 g16 fis g a |
	fis4 r8 |
	\tuttiAIII |
}

violinIV = \relative c'' {
	\tuttiBI |
	b4 r8 |
	R4.*9 |
	e16 b e g fis e |
	fis b, fis' a g fis |
	g b, g' b a g |
	fis e dis cis b8 |
	\tuttiBII |
	R4.*8 |
	e16_"Solo e Piano" d c b a g |
	fis8 d'4 ~|
	d16 c b a g fis |
	e8 c'4 ~|
	c16 b a g fis e |
	dis8 fis dis' |
	e4 r8 |
	dis8\f dis16 cis dis e |
	fis4 r8 |
	g g16 a fis g |
	a4 r8 |
	g8 g16 fis g a |
	fis4 r8 |
	e8 e16 dis e fis |
	d4 r8 |
	\tuttiBIII |
}

violaI = \relative c'' {
	b8 g e |
	fis b,4 |
	dis'8 b fis |
	g b,4 |
	b'8 g e |
	b4. |
	b'8\p g e |
	fis b,4 |
	dis'8 b fis |
	g b,4 |
%11
	b'8 g e |
	b4. |
	dis'4\f r8 |
	b4 r8 |
	dis4 r8 |
	b4 r8 |
	dis4 r8 |
	b4 r8 |
	c4 r8 |
	c4 r8 |
%21
	cis4 r8 |
	dis4 b8 |
	c fis, b |
	g4 r8 |
	R4.*21 |
	fis4 fis8 |
	fis4 fis8 |
	ais4 c8 |
	c4 c8 |
	d b d |
%51
	ais4 fis8 |
	fis4 g8 |
	cis,4. |
	b'4 r8 |
	b4 r8 |
	fis4 r8 |
	d4. |
	cis'4 r8 |
	cis4 r8 |
	gis4 r8 |
%61
	fis4. |
	\repeat unfold 3 {ais4 r8 |
	fis4 r8} |
	g4 r8 |
	g4 r8 |
	gis4 r8 |
%71
	ais4 fis8 |
	g cis, fis |
	d4 r8 |
	R4.*13 |
	b'8 g e |
	fis b,4 |
	dis'8 b fis |
	g b,4 |
%91
	b'8 g e |
	b4. |
	R4.*14 |
	b'4\f b8 |
	b fis b |
	dis,4 dis8 |
	e4 g8 |
%111
	fis a fis |
	d4 e8 |
	dis fis dis |
	b g' c |
	fis,4 r8 |
	e4 r8 |
	dis4 r8 |
	b4 r8 |
	fis'4 r8 |
	e4 b8 |
%121
	c b4 |
	b r8 |
	c'4 r8 |
	c4 r8 |
	cis4 r8 |
	dis4 r8 |
	dis4 r8 |
	dis4 r8 |
	dis4 b8 |
	c fis, b |
%131
	g4.\fermata |
}

violaII = \violaI

cello = \relative c' {
	e8 e, e' |
	b b, b' |
	b b, b' |
	e e, e' |
	e e, a |
	b b,4 |
	e'8\p e, e' |
	b b, b' |
	b b, b' |
	e e, e' |
%11
	e e, a |
	b b,4 |
	b'8\f b16 cis dis b |
	\repeat unfold 2 {e8 e,16 fis g e |
	b'8 b16 cis dis b} |
	e dis? cis? b a g |
	cis? b a g fis e |
	c' b a g fis e |
%21
	a g fis e dis cis |
	b4 e8 |
	a b b, |
	\repeat unfold 2 {e e'4 ~|
	e8 dis4 |
	e8 e, a |
	b8. a16 g fis} |
%32
	e8 e, e' |
	a,4 r8 |
	d'8 d, d' |
	g,4 r8 |
	c8 c, c' |
	fis,4 r8 |
	b8 b, g |
	a fis' d |
	g g, g' |
%41
	g g, g' |
	fis4 r8 |
	fis4 r8 |
	fis4 e8 |
	d16 e fis8 fis, |
	b' b, b' |
	b b, b' |
	cis cis, cis' |
	ais ais, ais' |
	b b, b' |
%51
	cis ais fis |
	b b, e |
	fis4. |
	dis4 r8 |
	dis4 r8 |
	dis4 r8 |
	e4. |
	eis4 r8 |
	eis4 r8 |
	eis4 r8 |
%61
	fis4. |
	\repeat unfold 2 {fis8 fis16 gis ais fis |
	b8 b,16 cis d b} |
	fis'8 fis16 gis ais fis |
	b a g fis e d |
	g fis e d cis b |
	g' fis e d cis b |
	e d cis b ais gis |
%71
	fis4 b8 |
	e fis fis, |
	b4 r8 |
	b4 r8 |
	b8 b'4 ~|
	b8 ais4 |
	b8 b, b' |
	a! a, a' |
%79
	g \repeat unfold 2 {e'4 ~|
	e8 dis4 |
	e8 e, a |
	b8. a16 g fis |
	e8} e' e, |
	b' b, b' |
	b b, b' |
	e e, e' |
%91
	e e, a |
	b4. |
	e,8 e, e' |
	a a, a' |
	d d, d' |
	g, g, g' |
	c c, c' |
	fis, fis, fis' |
	b b, b' |
	e,\p e, e' |
%101
	a a, a' |
	d d, d' |
	g, g, g' |
	c c, c' |
	fis, fis, fis' |
	b b, b' |
	e,\f e, e' |
	b' b, b' |
	b b, b' |
	e, e, e' |
%111
	a fis d |
	g g, e' |
	fis dis b |
	e e, a |
	b b16 cis dis b |
	e8 e16 fis g e |
	b8 b16 cis dis b |
	e8 e16 fis g e |
	b8 b16 cis dis b |
	e8. fis16 g8 |
%121
	a b b, |
	e e16 fis g e |
	c' b a g fis e |
	c' b a g fis e |
	a g fis e dis cis |
	\repeat unfold 3 {b8 dis fis} |
	b,4 e8 |
	a b b, |
%131
	e,4.\fermata |
}

bass = <<

\cello

\figuremode {
	s4. |
	<_+>8 s4 |
	<7 _+>8 s4 |
	s4. |
	s4 <7>8 |
	<_+> s4 |
	s4. |
	<_+>8 s4 |
	<7 _+>8 s4 |
	s4. |
%11
	s4 <7>8 |
	<_+> s4 |
	<_+>8 s4 |
	s4. |
	<_+>8 s4 |
	s4. |
	<_+>8 s4 |
	s4. |
	<6>16 s s4 |
	<6>16 s s4 |
%21
	<_+>16 s s4 |
	<7 5 _+>4 s8 |
	<7 5> <5 4> <_+> |
	\repeat unfold 2 {s4. |
	<4 2>8 <5 3>4 |
	s <7>8 |
	<_+>8. s16 <6> s} |
%32
	s4.*2 |
	<7>8 s4 |
	<7> s8 |
	<7> s4 |
	<7> s8 |
	s4. |
	s8 <6 5> <7> |
	s4. |
%41
	<6>8 s4 |
	<_+> s8 |
	<7 _+>4 s8 |
	<_+>4 <4\+ 2>8 |
	<6>16 s s4 |
	s4.*2 |
	<6 _+>8 s4 |
	<7 5>8 s4 |
	<5 3>8 s4 |
%51
	<6\\ 3>8 s <7 5> |
	<5 3> s <7 5> |
	<_+>4. |
	<6>4 s8 |
	<6 5>4 s8 |
	s4.*2 |
	<6>4 s8 |
	<6 5>4 s8 |
	s4. |
%61
	<_+> |
	<_+>8 s4 |
	s4. |
	<_+>8 s4 |
	s4. |
	<_+>8 s4 |
	s4. |
	<6>16 s s4 |
	<6>16 s s4 |
	<_+>16 s s4 |
%71
	<7 _+>4 s8 |
	<7 5> <5\\ 4> <_+> |
	s4.*3 |
	<4 2\+>8 <5 3>4 |
	s4. |
	<4\+ 2>8 s4 |
	<6>8 s4 |
	<4 2>8 <5 3>4 |
%81
	s4 <7>8 |
	<_+>8. s |
	s4. |
	<4 2>8 <5 3>4 |
	s4. |
	<_+>8. s |
	s4. |
	<_+>8 s4 |
	<7 _+>8 s4 |
	s4. |
%91
	s4 <7>8 |
	<_+>4. |
	s4.*2 |
	<7>8 s4 |
	<7>8 s4 |
	<7>8 s4 |
	<7>8 s4 |
	<7 _+>8 s4 |
	s4.*2 |
%102
	<7>8 s4 |
	<7>8 s4 |
	<7>8 s4 |
	<7>8 s4 |
	<7 _+>8 s4 |
	s4. |
	<_+>8 s4 |
	<7 _+>8 s4 |
	s4. |
%111
	<6>8 s <7> |
	s4. |
	<6\\>8 s <7 _+> |
	s4 <7>8 |
	<_+> s4 |
	s4. |
	<7 _+>8 s4 |
	s4. |
	<7 _+>8 s4 |
	s4. |
%121
	<6 5>8 <_+> s |
	s4. |
	<6>16 s s4 |
	<6>16 s s4 |
	<_+>16 s s4 |
	<7 _+>8 s4 |
	<7 _+>8 s4 |
	<7 _+>8 s4 |
	<7 _+>4 s8 |
	<6 5> <5 4> <_+> |
}
>>
