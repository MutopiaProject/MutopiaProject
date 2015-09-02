\version "2.18.0"

pMarkings = {\tempo "Andante" \time 3/4 \key e \minor s2.*53 \bar "||"}
incmidi = "midi1.ily"

tuttiAI = \relative c''' {
	b4 e,8. g16 fis8. e16 |
	fis4 b r |
	e, a,8. g'16 fis8. e16 |
	dis4. cis8 b4 |
	b'\p e,8. g16 fis8. e16 |
	fis4 b r |
	e, a,8. g'16 fis8. e16 |
	dis2. |
}

tuttiBI = \relative c'' {
	e4 b r8 r16 c |
	c4 b r |
	b a r8 r16 a |
	b2. |
	e4\p b r8 r16 c |
	c4 b r |
	b a r8 r16 a |
	b2. |
	R2.*2 |
}

tuttiAII = \relative c'' {
	s4 e8._"Tutti" g16 fis8. e16 |
	fis4 b r |
	e, a,8. g'16 fis8. e16 |
	dis4. cis8 b4 |
	b' e,8. g16 fis8. e16 |
	ais4. fis8 b8. fis16 |
	e8. d16 cis4.\trill b8 |
}

tuttiBII = \relative c'' {
	e4_"Tutti" b r8 r16 c |
	c4 b r |
	b a r8 r16 a |
	b2. |
	e4 b r8 r16 g' |
	cis,2 b4 ~|
	b ais4.\trill b8 |
	b4 r r |
%31
	R2.*5 |
}

tuttiAIII = \relative c''' {
	b4_"Tutti e Forte" b4. b8 |
	b4 a4. a8 |
	a4. b8 g8. fis16 |
	g8. a16 fis4.\trill e8 |
	e2. |
	b'4\p b4. b8 |
	b4 a4. a8 |
%51
	a4. b8 g8. fis16 |
	g8. a16 fis4.\trill e8 |
	e2.\fermata |
}

tuttiBIII = \relative c''' {
	g4_"Tutti e Forte" g4. g8 |
	g4 fis4. fis8 |
	fis4. g8 e8. dis16 |
	e8. fis16 dis4.\trill e8 |
	e2. |
	g4\p g4. g8 |
	g4 fis4. fis8 |
%51
	fis4. g8 e8. dis16 |
	e8. fis16 dis4.\trill e8 |
	e2.\fermata |
}

violinI = \relative c'' {
	\tuttiAI
	b8._"Solo e Forte" cis16 dis8. e16 fis8. gis16 |
	a2. |
%11
	gis ~|
	gis2 r4 |
	a,8. b16 cis8. d16 e8. fis16 |
	g2. |
	fis ~|
	fis2 r4 |
	g,8. a16 b8. c16 d8. e16 |
	f!2. |
	e ~|
	e2 r4 |
%21
	d8. e16 fis8. g16 a8. b16 |
	c2. |
	<<b4 \tuttiAII>>
	b,8.(_"Solo" d16) d8.( fis16) fis8.( c16) |
%31
	c8.( a16) a8.( fis'16) fis8.( g16) |
	g8.( e16) e8.( b16) b8.( c16) |
	c8.( e16) e8.( a16) a8.( b16) |
	dis,4. b8 e8. b16 |
	g'8. e16 dis4.\trill e8 |
	e4 r r |
	R2.*3 |
	g4_"Soli e Piano" g8. a16 b8. g16 |
%41
	fis4 fis8. g16 a8. fis16 |
	g4 g8. a16 b8. g16 |
	fis8. g16 e8. g16 fis4 |
	\tuttiAIII
}

violinII = \relative c'' {
	\tuttiBI
%11
	e,8._"Solo e Forte" fis16 gis8. a16 b8. cis16 |
	d2. |
	cis2. ~|
	cis2 r4 |
	d,8. e16 fis8. g16 a8. b16 |
	c2. |
	b2. ~|
	b2 r4 |
	a8. b16 c8. d16 e8. f16 |
	g2. |
%21
	fis2. ~|
	fis |
	\tuttiBII
	g4_"Solo" g8. a16 b8. g16 |
	fis4 fis8. g16 a8. fis16 |
	g4 g8. a16 b8. g16 |
	fis8. g16 e8. g16 fis4 |
%40
	R2.*4 |
	\tuttiBIII
}

violinIII = \relative c'' {
	\tuttiAI
	R2. |
	b8._"Solo e Forte" cis16 dis8. e16 fis8. dis16 |
%11
	e2. ~|
	e2. ~|
	e2. |
	a,8. b16 cis8. d16 e8. cis16 |
	d2. ~|
	d2. ~|
	d2. |
	gis,8. a16 b8. c16 d8. b16 |
	c2. |
	cis |
%21
	a |
	dis8. e16 fis8. g16 a8. fis16 |
	<<g4 \tuttiAII>> |
	b,4 r r |
%31
	R2.*9 |
	e4_"Soli e Piano" e8. fis16 g8. e16 |
%41
	dis4 dis8. e16 fis8. dis16 |
	e4 e8. fis16 g8. e16 |
	dis8. e16 cis8. e16 dis4 |
	\tuttiAIII
}

violinIV = \relative c' {
	\tuttiBI
%11
	R2. |
	e8._"Solo e Forte" fis16 gis8. a16 b8. gis16 |
	a2. ~|
	a ~|
	a |
	d,8. e16 fis8. g16 a8. fis16 |
	g2. |
	d' |
	a |
	a8. b16 cis8. d16 e8. cis16 |
%21
	d2. |
	a' |
	\tuttiBII |
	e4_"Soli" e8. fis16 g8. e16 |
	dis4 dis8. e16 fis8. dis16 |
	e4 e8. fis16 g8. e16 |
	dis8. e16 cis8. e16 dis4 |
%40
	R2.*4
	\tuttiBIII
}

violaI = \relative c' {
	g4 g r8 r16 g |
	a4 fis r |
	g e r8 r16 a |
	fis2. |
	g4\p g r8 r16 g |
	a4 fis r |
	g e r8 r16 a |
	fis2. |
	b,\f ~|
	b |
%11
	e2. ~|
	e |
	a, ~|
	a |
	d ~|
	d |
	g |
	gis |
	a ~|
	a |
%21
	d |
	dis |
	g4 g r8 r16 g |
	a4 fis r |
	g e r8 r16 a |
	fis2. |
	g4 g r8 r16 g |
	fis2 fis4 |
	g cis, fis |
	d r r |
%31
	R2.*5 |
	e4 e e |
	b b b |
	e e e |
	b b b |
	e\p e e |
%41
	b b b |
	e e e |
	b b b |
	g'4\f g4. g8 |
	a4 a4. a8 |
	dis,2 b4 |
	c8. fis16 b,4. b'8 |
	g2. |
	g4\p g4. g8 |
	a4 a4. a8 |
%51
	dis,2 b4 |
	c8. fis16 b,4. b'8 |
	g2.\fermata |
}

violaII = \violaI

cello = \relative c {
	e4 e' r8 r16 e |
	dis4 d r |
	cis c r8 r16 c |
	b8. c16 b8. a16 g8. fis16 |
	e4\p e' r8 r16 e |
	dis4 d r |
	cis c r8 r16 c |
	b2. |
%9
	R2.*14 |
	e,4 e' r8 r16 e |
	dis4 d r |
	cis c r8 r16 c |
	b8. c16 b8. a16 g8. fis16 |
	e4 e' r8 r16 e |
	fis,4. e8 d4 |
	e fis fis, |
	b2. |
%31
	dis |
	e |
	a, |
	b2 g4 |
	a b2 |
	e4 r r |
	R2.*7 |
	e4 e4. e8 |
	fis4 fis4. fis8 |
	b,2 e4 |
	a b b, |
	e2. |
	e4\p e4. e8 |
	fis4 fis4. fis8 |
%51
	b,2 e4 |
	a b b, |
	e2.\fermata |
}

bass = <<

\cello

\figuremode {
	s2 s8 s16 <6> |
	<7>4 <6> s |
	<7> <6> s |
	<_+>8. s16 <_+>8. s16 s4 |
	s2 s8 s16 <6> |
	<7>4 <6> s |
	<7> <6> s |
	<_+>2. |
%9
	s2.*14 |
	s2 s8 s16 <6> |
	<7>4 <6> s |
	<7> <6> s |
	<_+>8. s16 <_+>8. s16 s4 |
	s2. |
	<_+>4. s8 <6>4 |
	<7 5> <5\\ _+> s |
	s2. |
%31
	<7- 4> |
	s2.*2 |
	<_+>2 s4 |
	<7> <_+>2 |
	s2.*9 |
	<9 4>4 <8 3>4. s8 |
	<7 5 _+>2 s4 |
	<7 5>4 <_+> s |
	s2.*2 |
	<9 4>4 <8 3>4. s8 |
%51
	<7 5 _+>2 s4 |
	<7 5> <_+> s |
}
>>
