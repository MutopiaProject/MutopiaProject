\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 3/8 \key g \major s4.*152 \bar "|."}
incmidi = "midi3.ily"

tuttiAI = \relative c''' {
\repeat volta 2 {
	g8 d g |
	a d, a' |
	b d, b' |
	a16( g) a8 r |
	g\p d g |
	a d, a' |
	b d, b' |
	cis, a a'\f ~|
	a g4 ~|
	g8 fis4 ~|
%11
	fis8 e4 ~|
	e8 d4 ~|
	d8 cis4 |
	d4. |
}
}

tuttiBI = \relative c''' {
\repeat volta 2 {
	g8 d g |
	fis d fis |
	g d g |
	fis16( e) fis8 r |
	g\p d g |
	fis d fis |
	g d g |
	e\f r e |
	d b' d, |
	cis a' cis, |
%11
	b g' b, |
	a fis' a, |
	g e' g, |
	fis4. |
}
}

tuttiAII = \relative c'' {
	e8 b e |
	fis b, fis' |
	g b, g' |
	fis16( e) fis8 r |
	e\p b e |
	fis b, fis' |
	g b, g' |
	ais, fis\f fis' ~|
%51
	fis e4 ~|
	e8 d4 ~|
	d8 cis4 ~|
	cis8 b4 ~|
	b8 ais4 |
}

tuttiBII = \relative c'' {
	e8\f b e |
	dis b dis |
	e b e |
	dis16( cis) dis8 r |
	e\p b e |
	dis b dis |
	e b e |
	cis\f r cis |
%51
	b g' b, |
	a fis' a, |
	g e' g, |
	fis d' fis, |
	e cis' e, |
	d4 r8 |
}

tuttiAIII = \relative c'' {
	b8 fis b |
	cis fis, cis' |
	d fis, d' |
%91
	cis16( b) cis8 r |
	b\p fis b |
	cis fis, cis' |
	d fis, d' |
	cis16( b) cis8 r |
	d\f a d |
	e a, e' |
	fis a, fis' |
	e16( d) e8 r |
	d\p a d |
%101
	e a, e' |
	fis a, fis' |
	e a,\f a' ~|
	a8 g4 ~|
	g8 fis4 ~|
	fis8 e4 ~|
	e8 d4 ~|
	d8 c4 |
}

tuttiBIII = \relative c'' {
	b8 fis b |
	ais fis ais |
	b fis b |
%91
	ais4 r8 |
	b\p fis b |
	ais fis ais |
	b fis b |
	ais4 r8 |
	d8\f a d |
	cis a cis |
	d a d |
	cis16( b) cis8 r |
	d\p a d |
%101
	cis a cis |
	d a d |
	cis r e\f |
	d b' d, |
	cis a' cis, |
	b g' b, |
	a fis' a, |
	g e' g, |
}

tuttiAIV = \relative c''' {
	b16( c d) c d b |
	a( b c) b c a |
%121
	b( c d) c d b |
	a8 d, r |
	b'16(\p c d) c d b |
	a( b c) b c a |
	b( c d) c d b |
	a8 d, r |
}

tuttiBIV = \relative c''' {
	g16( a b) a b g |
	fis( g a) g a fis |
%121
	g( a b) a b g |
	fis4 r8 |
	g16(\p a b) a b g |
	fis( g a) g a fis |
	g( a b) a b g |
	fis4 r8 |
}

tuttiAV = \relative c''' {
	g8 fis r |
	fis e r |
	e d r |
	d c r |
%141
	c b g' |
	r a, fis' |
	g4 r8 |
	g\p fis r |
	fis e r |
	e d r |
	d c r |
	c b g' |
	r a, fis' |
	g r g\f |
%151
	g fis fis |
	g4.\fermata |
}

tuttiBV = \relative c'' {
	d8 d r |
	d c r |
	c b r |
	b a r |
%141
	a g g' |
	r a, d |
	b4 r8 |
	d\p d r |
	d c r |
	c b r |
	b a r |
	a g g' |
	r a,d |
	b r b\f |
%151
	a a a |
	b4.\fermata |
}

violinI = \relative c''' {
	\tuttiAI
\repeat volta 2 {
	r16 g16_"Solo Forte" fis e d c |
	b( a g) a b c |
	d( c b) c d e |
	f( e d) e f g |
	e8 c c, |
	r16 a'' g fis e d |
%21
	cis( b a) b cis d |
	e( d cis) d e fis |
	g( fis e) fis g a |
	fis8 a, d, |
	r16 b'' a g fis e |
	dis( cis b) cis dis e |
	fis( e dis) e fis g |
	a( g fis) g a b |
	g8.\trill fis16 e8 |
	b16 e b e b e |
%31
	cis e cis e cis e |
	cis fis cis fis cis fis |
	dis fis dis fis dis fis |
	dis g dis g dis g |
	e g e g e g |
	e a e a e a |
	dis,( cis b) cis dis e |
	fis( e dis) e fis g |
	a( g fis) g a b |
	a( g fis) g a b |
%41
	g8. fis16 e8 |
	fis b, dis |
	<<\tuttiAII s8_"Tutti">>
	b16 b'_"Solo" b b b b |
	b, b' b b b b |
	b, a' a a a a |
	b, a' a a a a |
	gis e e e e e |
%61
	e, e' e e e e |
	e, d' d d d d |
	e, d' d d d d |
	cis a' a a a a |
	a, a' a a a a |
	a, g' g g g g |
	a, g' g g g g |
	fis d d d d d |
	d, d' d d d d |
	d, c'! c c c c |
%71
	d, c' c c c c |
	b g' g( f) f( e) |
	e a a( g) g( fis) |
	fis b b( a) a( g) |
	g c c( b) b( ais) |
	ais?( b cis) b cis ais |
	b( cis d) cis d b |
	c!( b c) d c b |
	ais( d cis) b cis ais |
	b( cis d) cis d b |
%81
	c!( b c) d c b |
	ais gis fis8 b |
	g16( fis e) g fis e |
	d cis b8 b'\p |
	g16( fis e) g fis e |
	d cis b8 b'\f |
	d, cis4\trill |
	<<\tuttiAIII s8_"Tutti">>
	c16(_"Solo" b c) fis g a |
	c,( b c) fis g a |
%111
	c,( b c) fis g a |
	b,8( d) g |
	g( e) g |
	b,( d) g |
	g( e) g |
	b,( d) g |
	a,( d) g |
	a,( d) fis |
	<<\tuttiAIV s16_"Tutti">>
	r16 g_"Solo e Forte" fis g d g |
	e g fis e a8 |
	r16 a g a e a |
	fis a g fis b8 |
%131
	r16 b a b fis b |
	g b a g c8 |
	r16 c b c g c |
	a c b a d8 |
	r16 d c d a d |
	b4 r8 |
	<<\tuttiAV s8_"Tutti">>
}
}

tuttiI = \relative c'' {
	\repeat unfold 4 {b8\p b, b'} |
	g4 r8 |
%20
	\repeat unfold 4 {cis cis, cis'} |
	a4 r8 |
	\repeat unfold 4 {dis dis, dis'} |
	b4 r8 |
	b b b |
%31
	cis cis cis |
	cis cis cis |
	dis dis dis |
	dis? dis dis |
	e e e |
	e e e, |
}

violinII = \relative c' {
	\tuttiBI

\repeat volta 2 {
	\tuttiI
	\repeat unfold 4 {fis4 r8} |
%41
	e8. fis16 g8 |
	a b b, |
	\tuttiBII
	b''4 r8 |
	a4 r8 |
	a4 r8 |
	gis4 r8 |
%61
	e4 r8 |
	d4 r8 |
	d4 r8 |
	cis4 r8 |
	a'4 r8 |
	g4 r8 |
	g4 r8 |
	fis4 r8 |
	d4 r8 |
	c!4 r8 |
%71
	c4 r8 |
	b4 r8 |
	R4.*15 |
	\tuttiBIII
	a8 r r |
	a r r |
%111
	a r r |
	b r r |
	\repeat unfold 5 {g' r r} |
	fis r r |
	\tuttiBIV
	g4\f r8 |
	g4 r8 |
	a4 r8 |
	a4 r8 |
%131
	b4 r8 |
	b4 r8 |
	c4 r8 |
	c4 r8 |
	d4 r8 |
	d4 r8 |
	\tuttiBV
}
}

tuttiCI = \relative c'' {
	fis4 r8 |
	fis4 r8 |
	fis4 r8 |
	e4 r8 |
	b4 r8 |
%61
	b4 r8 |
	b4 r8 |
	a4 r8 |
	e'4 r8 |
	e4 r8 |
	e4 r8 |
	d4 r8 |
	a4 r8 |
	a4 r8 |
	a4 r8 |
%71
	g4 r8 |
}

tuttiCII = \relative c'' {
	d4\f r8 |
	e4 r8 |
	e4 r8 |
	fis4 r8 |
%131
	fis4 r8 |
	g4 r8 |
	g4 r8 |
	a4 r8 |
	a4 r8 |
	b4 r8 |
}

violinIII = \relative c' {
	\tuttiAI

\repeat volta 2 {
	\tuttiI
	\repeat unfold 4 {dis4 r8} |
%41
	e8. fis16 g8 |
	a b b, |
	\tuttiAII
	ais'4 r8 |
	\tuttiCI
	R4.*15 |
	\tuttiAIII
	c8 r r |
	c r r |
%111
	c r r |
	b r r |
	g' r r |
	g r r |
	g r r |
	g r r |
	a r r |
	a r r |
	\tuttiAIV
	\tuttiCII
	\tuttiAV
}
}

violinIV = \relative c' {
	\tuttiBI

\repeat volta 2 {
	\tuttiI
	\repeat unfold 4 {dis4 r8} |
%41
	e8. fis16 g8 |
	a b b, |
	\tuttiBII
	\tuttiCI
	R4.*15 |
	\tuttiBIII
	fis'8 r r |
	fis r r |
%111
	fis r r |
	g r r |
	g' r r |
	g r r |
	g r r |
	g r r |
	a r r |
	a r r |
	\tuttiBIV
	\tuttiCII
	\tuttiBV
}
}

violaI = \relative c'' {
\repeat volta 2 {
	b8 r b |
	a r a |
	g r g |
	a4 r8 |
	b8\p r b |
	a r a |
	g r d |
	a' r r |
	b\f d b |
	a cis a |
%11
	g b g |
	fis a fis |
	e g e |
	d4. |
}
\repeat volta 2 {
	\repeat unfold 4 {g8\p g, g'} |
	b,4 r8 |
%20
	\repeat unfold 4 {a'8 a, a'} |
	d,4 r8 |
	\repeat unfold 4 {b' b, b'} |
	e,4 r8 |
	g8 g g |
%31
	a a a |
	ais ais ais |
	b b b |
	b b b |
	c c c |
	c c c, |
	\repeat unfold 4 {b4 r8} |
%41
	e8. fis16 g8 |
	a b b, |
	g'\f r g |
	fis r fis |
	e r e |
	fis4 r8 |
	g8\p r g |
	fis r fis |
	e r b |
	fis'\f r r |
%51
	g b g |
	fis a fis |
	e g e |
	d fis d |
	cis e cis |
	b4 r8 |
	dis'4 r8 |
	dis4 r8 |
	dis4 r8 |
	b4 r8 |
%61
	gis4 r8 |
	gis4 r8 |
	gis4 r8 |
	e4 r8 |
	cis'4 r8 |
	cis4 r8 |
	cis4 r8 |
	a4 r8 |
	fis4 r8 |
	fis4 r8 |
%71
	fis4 r8 |
	d4 r8 |
	R4.*15 |
	fis8 r fis |
	fis r fis |
	fis r fis |
%91
	fis4 r8 |
	fis\p r fis |
	fis r fis |
	fis r fis |
	fis4 r8 |
	a\f r a |
	a r a |
	a r a |
	a4 r8 |
	a\p r a |
%101
	a r a |
	a r a |
	a\f r r |
	b d b |
	a cis a |
	g b g |
	fis a fis |
	e g e |
	d r r |
	d r r |
%111
	d r r |
	d r r |
	e r r |
	d r r |
	e r r |
	d r r |
	d r r |
	d r r |
	d r g |
	a r r |
%121
	g r r |
	a4 r8 |
	g8\p r r |
	a r r |
	g r r |
	a4 r8 |
	b4\f r8 |
	g4 r8 |
	cis4 r8 |
	a4 r8 |
%131
	dis4 r8 |
	b4 r8 |
	e4 r8 |
	c4 r8 |
	a4 r8 |
	g4 r8 |
	b a r |
	b g r |
	a fis r |
	g e r |
%141
	fis d d |
	e d4 |
	d r8 |
	b'8\p a r |
	b g r |
	a fis r |
	g e r |
	fis d d |
	e d4 |
	d8 r d\f |
%151
	e d d |
	d4.\fermata |
}
}

violaII = \relative c' {
\repeat volta 2 {
	d8 r d |
	d r d |
	d r d |
	d4 r8 |
	d8\p r d |
	d r d |
	d r d |
	cis r a'\f |
	fis d r |
	e cis r |
%11
	d b r |
	cis a r |
	b r a |
	a4. |
}
\repeat volta 2 {
	\repeat unfold 4 {g'8\p g, g'} |
	c,4 r8 |
%20
	\repeat unfold 4 {a'8 a, a'} |
	d,4 r8 |
	\repeat unfold 4 {b'8 b, b'} |
	e,4 r8 |
	g8 g g |
%31
	a a a |
	ais ais ais |
	b b b |
	b b b |
	c c c |
	c c c, |
	b4 r8 |
	b4 r8 |
	b4 r8 |
	b4 r8 |
%41
	e8. fis16 g8 |
	a b b, |
	b\f r b |
	b r b |
	b r b |
	b4 r8 |
	b8 r b |
	b r b |
	b r b |
	gis\f r fis' |
%51
	d b r |
	cis a r |
	b g r |
	a fis r |
	g r fis |
	fis4 r8 |
	b'4 r8 |
	b4 r8 |
	b4 r8 |
	b4 r8 |
%61
	e,4 r8 |
	e4 r8 |
	e4 r8 |
	e4 r8 |
	a4 r8 |
	a4 r8 |
	a4 r8 |
	a4 r8 |
	d,4 r8 |
	d4 r8 |
%71
	d4 r8 |
	d4 r8 |
	R4.*15 |
	d8 r d |
	cis r cis |
	b r b |
%91
	cis4 r8 |
	d\p r d |
	cis r cis |
	b r b |
	cis4 r8 |
	fis\f r fis |
	e r e |
	d r d |
	e4 r8 |
	fis\p r fis |
%101
	e r e |
	d r d |
	e r a\f |
	fis d r |
	e cis r |
	d b r |
	cis a r |
	b g r |
	a r r |
	a r r |
%111
	d r r |
	d r r |
	c r r |
	b r r |
	c r r |
	b r r |
	a r r |
	d r r |
	b r d |
	d r r |
%121
	d r r |
	d4 r8 |
	d\p r r |
	d r r |
	d r r |
	d4 r8 |
	g4\f r8 |
	c,4 r8 |
	a'4 r8 |
	d,4 r8 |
%131
	b'4 r8 |
	e,4 r8 |
	c'4 r8 |
	fis,4 r8 |
	fis4 r8 |
	d4 r8 |
	d8 fis r |
	g g r |
	fis fis r |
	e e r |
%141
	d d b |
	a4 a8 |
	g4 r8 |
	d'\p fis r |
	g g r |
	fis fis r |
	e e r |
	d d b |
	a4 a8 |
	g8 r b\f |
%151
	c a d |
	b4.\fermata |
}
}

cello = \relative c' {
\repeat volta 2 {
	g16 a b a b g |
	d e fis e fis d |
	g a b a b g |
	d'8 d, r |
	g16\p a b a b g |
	d e fis e fis d |
	g a b a b g |
	a\f b cis b cis a |
	b a b cis d e |
	a, g a b cis d |
%11
	g, fis g a b cis |
	fis, e fis g a b |
	e, d e fis g a |
	d,4. |
}
\repeat volta 2 {
	R4.*28 |
%43
	e16 fis g fis g e |
	b cis dis cis dis b |
	e fis g fis g e |
	b'8 b, r |
	e16\p fis g fis g e |
	b cis dis cis dis b |
	e fis g fis g e |
	fis\f gis ais gis ais fis |
%51
	g! fis g a b cis |
	fis, e fis g a b |
	e, d e fis g a |
	d, cis d e fis g |
	cis, b cis d e fis |
	b,4 r8 |
	b4 r8 |
	b4 r8 |
	b4 r8 |
	e4 r8 |
%61
	e4 r8 |
	e4 r8 |
	e4 r8 |
	a,4 r8 |
	a4 r8 |
	a4 r8 |
	a4 r8 |
	d4 r8 |
	d4 r8 |
	d4 r8 |
%71
	d4 r8 |
	g r b |
	c r cis |
	d r dis |
	e r e, |
	fis4 e8 |
	c a c |
	e4. |
	fis4 e8 |
	c a c |
%81
	e4. |
	fis8. e16 d8 |
	e ais,4 |
	b8. cis16\p d g |
	e8 ais,4 |
	b8. cis16\f d b |
	e8 fis fis, |
	b16 cis d cis d b |
	fis' gis ais gis ais fis |
	b, cis d cis d b |
%91
	fis'8 fis, r |
	b16\p cis d cis d b |
	fis' gis ais gis ais fis |
	b, cis d cis d b |
	fis'8 fis, r |
	d'16\f e fis e fis d |
	a b cis b cis a |
	d e fis e fis d |
	a4 r8 |
	d16\p e fis e fis d |
%101
	a b cis b cis a |
	d e fis e fis d |
	a'\f b cis b cis a |
	b a b cis d e |
	a, g a b cis d |
	g, fis g a b cis |
	fis, e fis g a b |
	e, d e fis g a |
	d,8 r r |
	d r r |
%111
	d r r |
	g r r |
	c, r r |
	g' r r |
	c, r r |
	g r r |
	d' r r |
	d, r r |
	g' g, g' |
	d' d, d' |
%121
	g, g, g' |
	d' d, r |
	g\p g, g' |
	d' d, d' |
	g, g, g' |
	d' d, r |
	b'4\f r8 |
	c4 r8 |
	cis4 r8 |
	d4 r8 |
%131
	dis4 r8 |
	e4 r8 |
	e,4 r8 |
	fis4 r8 |
	fis4 r8 |
	g4 r8 |
	g8 d' r |
	g, c r |
	fis, b r |
	e, a r |
%141
	d, g b, |
	c d d, |
	g4 r8 |
	g'\p d' r |
	g, c r |
	fis, b r |
	e, a r |
	d, g b, |
	c d d, |
	g r g\f |
%151
	c d d, |
	g4.\fermata |
}
}

bass = <<

\cello

\figuremode {
	s4.*7 |
	<_+>16 s s4 |
	<7>16 s <6> s s8 |
	<7 _+>16 s <6> s s8 |
%11
	\repeat unfold 3 {<7>16 s <6> s s8} |
	s4.*30 |
	<_+>16 s s4 |
	s4. |
	<_+>8 s s |
	s4. |
	<_+>16 s s4 |
	s4. |
%51
	<_+>16 s s4 |
	<7>16 s <6> s s8 |
	<7>16 s <6> s s8 |
	<7>16 s <6\\> s s8 |
	<7->16 s <6> s s8 |
	<7>16 s <6\\> s s8 |
	s4. |
	<_+>4 s8 |
	<7 _+>4 s8 |
	s4. |
%61
	<_+>4 s8 |
	s4. |
	<7 _+>4 s8 |
	s4. |
	<_+>4 s8 |
	s4. |
	<7 _+>4 s8 |
	s4.*3 |
%71
	<7->4 s8 |
	s4. |
	s4 <6 5->8 |
	s4 <6 5>8 |
	s4 <6 5>8 |
	s4 <6 5>8 |
	<_+>4 <6\\ 4\+ 2>8 |
	<6> s4 |
	<6->4. |
	<_+>4 <6\\ 4\+ 2>8 |
%81
	<6> s4 |
	<6->4. |
	<_+>8. s16 <6>8 |
	s <7 5>4 |
	s4. |
	s8 <7 5>4 |
	s4. |
	<7 5>8 <5 4> <_+> |
	s4. |
	<_+>16 s s4 |
%91
	s4. |
	<_+>8 s4 |
	s4. |
	<_+>16 s s4 |
	s4. |
	<_+>8 s4 |
	s4. |
	<_+>16 s s4 |
	s4. |
	<_+>4 s8 |
%101
	s4. |
	<_+>16 s s4 |
	s4. |
	<_+>16 s s4 |
	<7>16 s <6> s s8 |
	<7 _+>16 s <6> s s8 |
	<7>16 s <6> s s8 |
	<7>16 s <6> s s8 |
	<7>16 s <6-> s s8 |
	<7>8 s4 |
%111
	s4.*7 |
	<5 4>8 s4 |
	<3>8 s4 |
	s4. |
%121
	s8 <7> s |
	s4.*3 |
	s8 <7> s |
	s4.*2 |
	\repeat unfold 4 {<6>4 s8 |
	<5>4 s8} |
	<6 5>4 s8 |
	s4.*2 |
%139
	\repeat unfold 4 {<7>8 s4} |
	<6 5>8 s4 |
	s4.*2 |
	\repeat unfold 4 {<7>8 s4} |
	<6 5>8 s4 |
%151
	s4. |
	<6 5>8 s4 |
}
>>
