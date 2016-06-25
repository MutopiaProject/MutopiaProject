\version "2.18.0"

pMarkings = {\tempo "Allegro assai" \time 2/4 \key e \minor s2*141 \bar "||"}
incmidi = "midi2.ily"

tuttiAI = \relative c''' {
	b8 e, e fis |
	dis4. e8 |
	fis a, a a' |
	a g16 fis g4 |
	b8 e, e c' |
	b e, e c' |
	b\p e, e c' |
	b e, e c' |
	c\f b b ais |
	ais gis16 fis b8 fis |
%11
	g fis b\p fis |
	g fis b\f fis |
	g fis e d |
	c ais b e |
	d4 cis |
	b
}

tuttiBI = \relative c''' {
	g4. c8 |
	fis,4. g8 |
	dis4. dis8 |
	e2 |
	g4. a8 |
	g4. a8\p |
	g4. a8 |
	g4. a8\f |
	a g g fis |
	fis4 r8 d |
%11
	e d r d\p |
	e d r d\f |
	b' a g fis |
	e cis d b |
	b4 ais |
	b r |
	R2*7 |
	r4 r8 e |
	dis cis16 dis e8 fis16 e |
	dis8 cis16 dis e8 fis16 e |
	dis8 r e r |
	dis r e r |
	dis4 r8 g |
	e d c b |
%31
	a fis' g e |
	e4 dis |
}

tuttiAII = \relative c''' {
	g8 |
	fis e16 fis g8 a16 g |
	fis8 e16 fis g8 a16 g |
	fis8 r g r |
	fis r g r |
	fis4 r8 b |
	c b a g |
%31
	f dis e a |
	g4 fis |
	e r |
}

tuttiBII = \relative c'' {
	d4._"Tutti" e8 |
	cis4. d8 |
	ais4. ais8 |
	b2 |
	d4. e8 |
	d4. e8\p |
	d4. e8 |
	d4. e8\f |
	b' a g fis |
%71
	e cis d b |
	b4 ais |
	b r |
	fis' r |
	fis r |
	fis r |
}

tuttiAIII = \relative c'' {
	b8 b cis |
	ais4. b8 |
	cis e, e e' |
	e d16 cis d4 |
	fis8 b, b g' |
	fis b, b g'\p |
	fis b, b g' |
	fis b, b g'\f |
	g fis e d |
%71
	c! ais b e |
	d4 cis |
}

tuttiAIV = \relative c''' {
	g8 g a16 g |
	fis8 e16 fis g8 a16 g |
	fis8 e16 fis g8 a16 g |
	fis8 r g r |
	fis r g r |
	fis4 r8 b |
	c b a g |
	f dis e a |
	g4 fis |
%141
	e2\fermata |
}

tuttiBIII = \relative c'' {
	e8_"Tutti e Forte" e e fis16 e |
	dis8 cis16 dis e8 fis16 e |
	dis8 cis16 dis e8 fis16 e |
	dis8 r e r |
	dis r e r |
	dis4 r8 g |
	e d c b |
	a fis' g e |
	e4 dis |
%141
	e2\fermata |
}

violinI = \relative c'' {
	\tuttiAI
	r16 b_"Solo" cis dis |
	e fis g a b8 d, |
	d f16( e) f( e) d( cis) |
	d8 e16( d) e( d) c( b) |
	c8 a r16 a b c |
%21
	d e fis g a8 c, |
	c e16( d) e( d) c( b) |
	c8 d16( c) d( c) b( a) |
	b8 g g
	<<\tuttiAII s8_"Tutti">>
	R2*4 |
	r4 r16 fis'_"Solo" g a |
	b fis g a b a g fis |
	g a b g e8 b' |
%41
	c8. b16 a g fis e |
	fis g a fis d8 a' |
	b8. a16 g fis e d |
	e fis g e c8 g' |
	a8. b16 a g fis e |
	dis b b dis e b b e |
	fis b, b fis' g b, b g' |
	a b, b a' g b, b g' |
	fis b, b fis' e b b e |
	e a, a e' dis b b dis |
%51
	e4 r |
	R2*10 |
	fis8_"Tutti" \tuttiAIII |
	b,16_"Solo" b c d e fis g a |
	b b, cis dis e fis g a |
	b b, cis dis e fis g a |
	b b, dis fis b a gis fis |
	\repeat unfold 4 {gis4 r4} |
%81
	\repeat unfold 4 {a4 r4} |
	\repeat unfold 4 {fis4 r4} |
	g16 g,_"Solo" a b c d e fis |
	g g, b d g fis e d |
%91
	e a, b c d e fis g |
	a a, cis e a g fis e |
	fis b, cis d e fis g a |
	b b, dis fis b a g fis |
	g8 b_"Tutti" b c |
	a a a b |
	g g g a |
	fis fis16 g a8 g |
	fis fis16 g a8 g |
	fis b, b4 |
%101
	b'8_"Soli e Piano" b b c |
	a a a b |
	g g g a |
	fis fis16 g a8 g |
	fis fis16 g a8 g |
	fis b, b4 |
	b'8_"Tutti e Forte" e, e b' |
	c dis, e a |
	g4 fis |
	e8_"Soli" g16 a b8 a |
%111
	g fis16 g a8 g |
	fis g16 a b8 a |
	g fis16 g a8 g |
	fis4 r |
	R2*3 |
	fis8_"Soli" fis16 e fis8 fis |
	g fis16 e fis8 fis |
	g fis16 e fis8 fis |
%121
	g g gis gis |
	a a ais ais |
	b b, e a |
	g4 fis %????????? |
	e r |
	R2*6 |
%132
	g8 <<\tuttiAIV s8_"Tutti">>
}

violinII = \relative c'' {
	\tuttiBI
	e16_"Solo" g fis e dis e cis dis |
	e g fis g e g fis e |
	dis e cis dis b4 |
	R2*26 |
%62
	\tuttiBII
	e16_"Solo" e, fis gis a b c d |
	e e, fis gis a b c d |
	e e, fis gis a b c d |
	e e, gis b e d cis b |
%81
	cis4 r |
	e r |
	e r |
	e r |
	\repeat unfold 5 {d r} |
	R2*5 |
	g8 g g a |
	fis fis fis g |
	e e e fis |
	dis dis16 e fis8 e |
	dis dis16 e fis8 e |
	dis2 |
%101
	g8_"Soli e Piano" g g a |
	fis fis fis g |
	e e e fis |
	dis dis16 e fis8 e |
	dis dis16 e fis8 e |
	dis2 |
	g4._"Tutti e Forte" g8 |
	a fis g e |
	e4 dis |
	e8 e16_"Soli" fis g8 fis |
%111
	e dis16 e fis8 e |
	dis e16 fis g8 fis |
	e dis16 e fis8 e |
	dis4 r |
	R2*3 |
	dis8 dis16_"Soli" cis dis8 dis |
	e dis16 cis dis8 dis |
	e dis16 cis dis8 dis |
%121
	e e e e |
	e e e e |
	dis4 r8 e |
	e4 dis |
	e r |
	R2*6 |
%132
	\tuttiBIII
}

violinIII = \relative c''' {
	\tuttiAI
	r4 |
	R2*7 |
	r4 r8
	\tuttiAII |
	R2*17 |
%51
	g16_"Solo" a b g e8 b' |
	c8. b16 a g fis e |
	fis g a fis d8 a' |
	b8. a16 g fis e d |
	e fis g e c8 g' |
	a8. b16 a g fis e |
	dis b b dis e b b e |
	fis b, b fis' g b, b g' |
	fis b, b fis' g e e b' |
	ais fis fis ais b d,d b' |
%61
	b cis, cis b' ais fis fis ais |
	b8_"Tutti" \tuttiAIII |
	b,4 r |
	b' r |
	b r |
	b r |
	gis r |
	gis r |
	gis r |
	gis r |
%81
	a16_"Solo" a, b cis d e fis g |
	a a, b cis d e fis g |
	a a, b cis d e fis g |
	a a, cis e a g fis e |
	fis4 r |
	fis r |
	fis r |
	fis r |
	g r |
%90
	R2*5 |
	b8 b b c |
	a a a b |
	g g g a |
	fis fis16 g a8 g |
	fis fis16 g a8 g |
	fis b, b4 |
%101
	R2*6 |
	b'8 e, e b' |
	c dis, e a |
	g4 fis e r |
%110
	R2*3 |
	fis8_"Soli e Piano" g16 a b8 a |
	g fis16 g a8 g |
	fis g16 a b8 a |
	g fis16 g a8 g |
	fis4 r |
	R2*6 |
	g8_"Soli e Piano" fis16 e fis8 fis |
	g fis16 e fis8 fis |
	g fis16 e fis8 fis |
	g g gis gis |
	a a ais ais |
	b b, e a |
%131
	g4 fis |
	e8 <<\tuttiAIV s8_"Tutti e Forte">>
}

violinIV = \relative c'' {
	\tuttiBI |
	e4 r |
	R2*2 |
	e16_"Solo" g fis e dis e cis dis |
	e g fis g e g fis e |
	dis e cis dis b4 |
%39
	R2*23 |
	\tuttiBII |
	\repeat unfold 8 {e4 r} |
%85
	d16_"Solo" d, e fis g a b c |
	d d, e fis g a b c |
	d d, e fis g a b c |
	d d, fis a d c b a |
	b4 r |
	R2*5 |
	g'8 g g a |
	fis fis fis g |
	e e e fis |
	dis dis16 e fis8 e |
	dis dis16 e fis8 e |
	dis2 |
%101
	R2*6 |
	g4. g8 |
	a fis g e |
	e4 dis |
	e r |
%111
	R2*3 |
	dis8_"Soli e Piano" e16 fis g8 fis |
	e dis16 e fis8 e |
	dis e16 fis g8 fis |
	e dis16 e fis8 e |
	dis4 r |
	R2*6 |
	e8_"Soli e Piano" dis16 cis dis8 dis |
	e dis16 cis dis8 dis |
	e dis16 cis dis8 dis |
	e e e e |
	e e e e |
	dis4 r8 e |
%131
	e4 dis |
	\tuttiBIII |
}

violaI = \relative c'' {
	b4. c8 |
	b4. b8 |
	fis e fis dis |
	b2 |
	e4. e8 |
	e4. e8\p |
	e4. e8 |
	e4. e8\f |
	fis4 g |
	cis, r8 b' |
%11
	b b, r b'\p |
	b b, r fis'\f |
	e4. fis8 |
	g fis fis g |
	fis4 fis |
	d8 b\p b b |
	b b b b |
	gis gis gis gis |
	gis gis gis gis |
	a a a a |
%21
	a a a a |
	fis fis fis fis |
	fis fis fis fis |
	g g g b'\f |
	b r b r |
	b r b r |
	b r b r |
	b r b r |
	b4 r8 b |
	a4. b8 |
%31
	c b b c |
	b4 b |
	g r |
	R2*28 |
%62
	fis4. g8 |
	fis4. fis8 |
	cis b cis ais |
	fis2 |
	b'4. b8 |
	b4. b8\p |
	b4. b8 |
	b4. b8\f |
	g a b fis |
%71
	g fis fis g |
	fis4 fis |
	fis r |
	dis' r |
	dis r |
	dis r |
	b r |
	b r |
	b r |
	b r |
%81
	cis r |
	cis r |
	cis r |
	cis r |
	a r |
	a r |
	a r |
	a r |
	b r |
%90
	R2*5 |
	g8 g g e |
	fis fis fis d |
	e e e c |
	b4. b8 |
	b4. b8 |
	a2 |
%101
	e'8\p e e a, |
	d d d g, |
	c c c fis, |
	b4. e,8 |
	b'4. e8 |
	b'2 |
	b4.\f b8 |
	fis b b c |
	b4 b |
	g r |
%111
	R2*7 |
	b,8 b b b |
	e b b b |
	e b b b |
%121
	e4 d |
	cis fis |
	b,8 b' c a |
	b4 b, |
	e8 b\p b b |
	e b b b |
	e b b b |
	e4 d |
	cis fis |
	b,8 b' c a |
%131
	b4 b, |
	b8\f r b r |
	\repeat unfold 5 {b r b r} |
	a4. b8 |
	c b b c |
	b4 b |
%141
	g2\fermata |
}

violaII = \violaI

bassi = \relative c {
	e8 fis g a |
	b b, b e |
	b' cis dis b |
	e4 e, |
	e4. a8 |
	e4. a8\p |
	e4. a8 |
	e4. a8\f |
	dis,4 e |
	fis8 e d! b |
%11
	e b r b\p |
	e b r b'\f |
	e,4. b'8 |
	e, fis d e |
	fis4 fis, |
	b r |
	R2*7 |
	r4 r8 e |
	b' r e, r |
	b' r e, r |
	\repeat unfold 3 {b'16 cis dis b e, fis g e} |
	a4. e'8 |
%31
	a, b g a |
	b4 b, |
	e b'8 a |
	g e g a |
	b b, b' a |
	g e b' a |
	g e g a |
	b b, r b' |
	dis b dis b |
	e e, e e' |
%41
	e e, e e' |
	d d, d d' |
	d d, d d' |
	c c, c c' |
	c c, c c' |
	b a g e |
	dis b r e |
	dis b r e |
	dis b g' e |
	a fis b b, |
%51
	e' e, e e' |
	e e, e e' |
	d d, d d' |
	d d, d d' |
	c c, c c' |
	c c, c c' |
	b a g e |
	dis b r e |
	dis b r e |
	fis e d b |
%61
	e cis fis fis, |
	b cis d e |
	fis fis, fis b |
	fis gis ais fis |
	b2 |
	b4. e8 |
	b4. e8\p |
	b4. e8 |
	b4. e8\f |
	e4. b'8 |
%71
	e,8 fis d e |
	fis4 fis, |
	b r |
	b r |
	b r |
	b r |
	e r |
	e r |
	e r |
	e r |
%81
	a, r |
	a r |
	a r |
	a r |
	d r |
	d r |
	d r |
	d r |
	g, r |
	b8 a b g |
%91
	c4 r |
	cis8 b cis a |
	d4 r |
	dis8 cis dis b |
	e e' e a, |
	d d d g, |
	c c c fis, |
	b4. e,8 |
	b'4. e,8 |
	b'2 |
%101
	R2*6 |
	e,8 fis g e |
	a b g a |
	b4 b, |
	e r8 b |
%111
	e4 r8 e |
	b4 r8 b |
	e4 r8 e |
	b4\p r8 b |
	e4 r8 e |
	b4 r8 b |
	e4 r8 e |
	b4 r |
	R2*13 |
%132
	e'8 r e, r |
	b' r e, r |
	b' r e, r |
	\repeat unfold 3 {b'16 cis dis b e, fis g e} |
	a4. e'8 |
	a, b g a |
	b4 b, |
}

cello = \relative c {
	\bassi
%141
	e2\fermata |
}

bass = <<

\relative c, {
	\bassi |
%141
	e2\fermata |
}

\figuremode {
	s2 |
	<_+>8 s s4 |
	<_+>8 s s <7> |
	<4>4 <3> |
	s2*4 |
	<7 5>4 <5 3> |
	<_+>8 s <6> s |
%11
	s2*3 |
	<6->8 <_+> <6> <5> |
	<6 4>4 <5\\ _+> |
	s2*9 |
	<_+>8 s s4 |
	<_+>8 s s4 |
	\repeat unfold 3 {<_+>16 s s8 s4} |
	s2 |
%31
	<6->8 <_+> <6> <5> |
	<6 4>4 <5 _+> |
	s <_+>8 s |
	<6> s s4 |
	<_+>8 s s4 |
	s <_+>8 s |
	<6> s s4 |
	<_+>8 s s4 |
	<6>8 s s4 |
	s2 |
%41
	\repeat unfold 2 {<6>8 s s4 |
	<7>8 s s4} |
	<6>8 s s4 |
	<_+>8 s <6> s |
	s2 |
	<6 5>8 s s4 |
	<6>8 s s4 |
	<6 5>8 s <_+> s |
%51
	s2 |
	\repeat unfold 2 {<6>8 s s4 |
	<7>8 s s4} |
	<6>8 s s4 |
	<_+>8 s <6> s |
	<6> s s4 |
	<6>8 s s4 |
	<_+>8 s <6> s |
%61
	<6\\ 5> s <_+> s |
	s2 |
	<_+>8 s s4 |
	<_+>8 s s <7> |
	<43>2 |
	s2*5 |
%71
	<6->8 <_+> <6> <5> |
	<6 4>4 <5 _+> |
	s2 |
	<_+>4 s |
	s2*2 |
	<_+>4 s |
	s2*3 |
%81
	<_+>4 s |
	s2*8 |
	<6>8 s s4 |
%91
	s2 |
	<6>8 s s4 |
	s2 |
	<6>8 s s4 |
	s2*3 |
	<_+>4. <7 5>8 |
	<_+>4. <7 5>8 |
	<_+>2 |
%101
	s2*7 |
	s8 <_+> <6> <5> |
	<6 4>4 <5\\ _+> |
	s s8 <7 5 _+> |
%111
	s2 |
	\repeat unfold 3 {<_+>4 s8 <7 5 _+> |
	s2} |
	<_+>4 s |
	s2*14 |
%133
	<_+>8 s s4 |
	<_+>8 s s4 |
	\repeat unfold 3 {<_+>16 s s8 s4} |
	s2 |
	<6->8 <_+> <6> <5> |
	<6 4>4 <5 _+> |
}
>>
