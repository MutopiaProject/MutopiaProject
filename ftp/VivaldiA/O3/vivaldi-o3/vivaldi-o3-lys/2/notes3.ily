\version "2.18.0"

pMarkings = {\tempo "Larghetto" \time 3/4 \key d \minor s2.*13
	\override Score.TimeSignature.stencil = ##f
	\time 1/16 s16 \time 3/4 s2.*34 \bar "||"}
incmidi = "midi3.ily"

violinI = \relative c''' {
\repeat volta 2 {
	g4 r r8 r16 g |
	g4 fis r8 r16 f\p |
	g4 r r8 r16 g\f |
	a4 r r8 r16 a\p |
	bes4 r4 r |
	bes\f a8. bes16 a8. bes16 |
	g4 g8. a16 g8. a16 |
	f8. g16 c,4.\trill bes8 |
	bes2. |
	bes'4_"Soli e Piano" a8. bes16 a8. bes16 |
%11
	g4 g8. a16 g8. a16 |
	f8. g16 c,4.\trill bes8 |
	bes2. |
}
	b16\f |
	b4 r r8 r16 c\p |
	c4 r r8 r16 cis\f |
	cis4 r r8 r16 d\p |
	d4 r r |
	d'8(_"Soli" c) bes( a) g( f) |
	bes( a) g( f) e( d) |
%21
	g( f) e( d) cis( b) |
	a2 r8 r16 f' |
	f4 e r8 r16 e\p |
	f4 r4 r8 r16 es\f |
	es4 d r8 r16 d\p |
	es4 r r8 r16 d\f |
	d4 c r8 r16 c\p |
	d4 r r8 r16 bes' |
	a4. bes8 g8. a16 |
	fis4. e8 d4 |
%31
	bes'4 bes8. c16 bes8. c16 |
	a4 a8. bes16 a8. bes16 |
	g4 g8. a16 g8. a16 |
	f4 f8. g16 f8. g16 |
	es4 es8. f16 es8. f16 |
	d4. c8 bes8. a16 |
	bes8. c16 a4.\trill g8 |
	g2. |
	bes'4_"Soli e Piano" bes8. a16 bes8. a16 |
	a4 a8. bes16 a8. bes16 |
%41
	g4 g8. a16 g8. a16 |
	f4 f8. g16 f8. g16 |
	es4 es8. f16 es8. f16 |
	d4. c8 bes8. a16 |
	bes8. c16 a4.\trill g8 |
	g4 r r8 r16 g'\f |
	g4 fis r8 r16 fis |
	g2.\fermata |
}

violinII = \relative c'' {
\repeat volta 2 {
	bes4 r r8 r16 bes |
	bes4 a r8 r16 a\p |
	bes4 r r8 r16 bes'\f |
	fis4 r4 r8 r16 fis\p |
	g4 r r |
	g\f f8. g16 f8. g16 |
	es4 es8. f16 es8. f16 |
	d8. bes16 a4.\trill bes8 |
	bes2. |
	g'4 f8._"Soli e Piano" g16 f8. g16 |
%11
	es4 es8. f16 es8. f16 |
	d8. bes16 a4.\trill bes8 |
	bes2.
}
	d16\f |
	d4 r r8 r16 g,\p |
	g4 r r8 r16 e'\f |
	e4 r r8 r16 a,\p |
	a4 r r |
	R2. |
	d'8(_"Soli" c) bes( a) g( f) |
%21
	bes( a) g( f) e( d) |
	cis2 r8 r16 d\f |
	d4 cis r8 r16 c\p |
	d4 r r8 r16 c\f |
	c4 b r8 r16 b\p |
	c4 r r8 r16 bes\f |
	bes4 a r8 r16 a\p |
	bes4 r4 r8 r16 d\f |
	es2 e4 |
	a,2. |
%31
	g'4 g8. a16 g8. a16 |
	f4 f8. g16 f8. g16 |
	es4 es8. f16 es8. es16 |
	d4 d8. es16 d8. es16 |
	c4 c8. d16 c8. d16 |
	bes4. a8 g8. fis16 |
	g8. a16 fis4.\trill g8 |
	g2. |
	g'4_"Soli e Piano" g8. a16 g8. a16 |
	f4 f8. g16 f8. g16 |
%41
	es4 es8. f16 es8. es16 |
	d4 d8. es16 d8. es16 |
	c4 c8. d16 c8. d16 |
	bes4. a8 g8. fis16 |
	g8. a16 fis4.\trill g8 |
	g4 r r8 r16 bes\f |
	bes4 a r8 r16 a |
	bes2.\fermata |
}

violinIII = \relative c''' {
\repeat volta 2 {
	g4 r r8 r16 g |
	g4 fis r8 r16 f\p |
	g4 r r8 r16 g\f |
	a4 r r8 r16 a\p |
	bes4 r4 r |
	bes\f a8. bes16 a8. bes16 |
	g4 g8. a16 g8. a16 |
	f8. g16 c,4.\trill bes8 |
	bes2. |
	R2.*4
}
	b16\f |
	b4 r r8 r16 c\p |
	c4 r r8 r16 cis\f |
	cis4 r r8 r16 d\p |
	d4 r r |
	R2.*3
%22
	r4 r r8 r16 f |
	f4 e r8 r16 e\p |
	f4 r4 r8 r16 es\f |
	es4 d r8 r16 d\p |
	es4 r r8 r16 d\f |
	d4 c r8 r16 c\p |
	d4 r r8 r16 bes' |
	a4. bes8 g8. a16 |
	fis4. e8 d4 |
%31
	bes'4 bes8. c16 bes8. c16 |
	a4 a8. bes16 a8. bes16 |
	g4 g8. a16 g8. a16 |
	f4 f8. g16 f8. g16 |
	es4 es8. f16 es8. f16 |
	d4. c8 bes8. a16 |
	bes8. c16 a4.\trill g8 |
	g2. |
	R2.*7
	r4 r r8 r16 g'\f |
	g4 fis r8 r16 fis |
	g2.\fermata |
}

violinIV = \relative c'' {
\repeat volta 2 {
	bes4 r r8 r16 bes |
	bes4 a r8 r16 a\p |
	bes4 r r8 r16 bes'\f |
	fis4 r4 r8 r16 fis\p |
	g4 r r |
	g\f f8. g16 f8. g16 |
	es4 es8. f16 es8. f16 |
	d8. bes16 a4.\trill bes8 |
	bes2. |
%10
	R2.*4 |
}
	d16\f |
	d4 r r8 r16 g,\p |
	g4 r r8 r16 e'\f |
	e4 r r8 r16 a,\p |
	a4 r r |
	R2.*3 |
%22
	r4 r r8 r16 d\f |
	d4 cis r8 r16 c\p |
	d4 r r8 r16 c\f |
	c4 b r8 r16 b\p |
	c4 r r8 r16 bes\f |
	bes4 a r8 r16 a\p |
	bes4 r4 r8 r16 d\f |
	es2 e4 |
	a,2. |
%31
	g'4 g8. a16 g8. a16 |
	f4 f8. g16 f8. g16 |
	es4 es8. f16 es8. es16 |
	d4 d8. es16 d8. es16 |
	c4 c8. d16 c8. d16 |
	bes4. a8 g8. fis16 |
	g8. a16 fis4.\trill g8 |
	g2. |
	R2.*7
	r4 r r8 r16 bes\f |
	bes4 a r8 r16 a |
	bes2.\fermata |
}

violaI = \relative c' {
\repeat volta 2 {
	d4 r r8 r16 d |
	d4 d r8 r16 d\p |
	d4 r r8 r16 d\f |
	d4 r4 r8 r16 d\p |
	d4 r r |
	g\f a4. a8 |
	bes4 c4. c8 |
	d8. g,16 f4 f |
	d2. |
%10
	R2.*4 |
}
	f16\f |
	f4 r r8 r16 es\p |
	es4 r r8 r16 e\f |
	e4 r r8 r16 d\p |
	d4 r r |
	R2.*3 |
	r4 r r8 r16 b' |
	a4 a r8 r16 a\p |
	a4 r4 r8 r16 a\f |
	g4 g r8 r16 g\p |
	g4 r r8 r16 g\p |
	f4 f r8 r16 f\p |
	f4 r r8 r16 f\f |
	c'2 e,4 |
	d2. |
%31
	d'4 es4. es8 |
	c4 d4. d8 |
	bes4 c4. c8 |
	a4 bes4. bes8 |
	g4 a4. a8 |
	d,2 d4 |
	es a, d |
	bes2. |
	R2.*7 |
	r4 r r8 r16 d\f |
	d4 d r8 r16 d |
	d2.\fermata
}

violaII = \relative c' {
\repeat volta 2 {
	d4 r r8 r16 d |
	d4 d r8 r16 d\p |
	d4 r r8 r16 d\f |
	d4 r4 r8 r16 d\p |
	d4 r r |
	g\f a4. a8 |
	bes4 c4. c8 |
	d8. g,16 f4 f |
	d2. |
%10
	R2.*4 |
}
	g16\f |
	g4 r4 r8 r16 g\p |
	g4 r r8 r16 g\f |
	g4 r r8 r16 e\p |
	e4 r r |
	R2.*3 |
%22
	r4 r r8 r16 b'_"Tutti" |
	a4 a r8 r16 a\p |
	a4 r4 r8 r16 a\f |
	g4 g r8 r16 g\p |
	g4 r r8 r16 g\p |
	f4 f r8 r16 f\p |
	f4 r r8 r16 f\f |
	a2 cis,4 |
	a2. |
%31
	d'4 es4. es8 |
	c4 d4. d8 |
	bes4 c4. c8 |
	a4 bes4. bes8 |
	g4 a4. a8 |
	d,2 d4 |
	es a, d |
	bes2. |
	R2.*7 |
	r4 r r8 r16 d\f |
	d4 d r8 r16 d |
	d2.\fermata |
}

cello = \relative c' {
\repeat volta 2 {
	g4 r r8 r16 g |
	d'4 d, r8 r16 d\p |
	g,4 r r8 r16 g'\f |
	d4 r r8 r16 d |
	g4 r r |
	es\f f4. f8 |
	g4 a4. a8 |
	bes8. es,16 f4 f, |
	bes bes'8._"Soli e Piano" a16 g8. f16 |
	es4 f4. f8 |
%11
	g4 a4. a8 |
	bes8. es,16 f4 f, |
	bes2. |
}
	g16\f |
	g4 r r8 r16 c\p |
	c4 r r8 r16 a\f |
	a4 r r8 r16 d\p |
	d4 r r |
	g2._"Soli" ~
	g ~
%21
	g |
	a2 r8 r16 gis_"Tutti" %? |
	a4 a, r8 r16 a\p |
	d4 r r8 r16 fis\f |
	g4 g, r8 r16 g\p |
	c4 r r8 r16 e\f |
	f4 f, r8 r16 f' |
	bes,4 r r8 r16 bes\f |
	c2 cis4 |
	d2 d,4 |
%31
	g'4 c,4. c8 |
	f4 bes,4. bes8 |
	es4 a,4. a8 |
	d4 g4. g8 |
	c4 fis,4. fis8 |
	g2 g,4 |
	c d d, |
	g d'8._"Soli e Piano" c16 bes8. a16 |
	g4 c,4. c8 |
	f4 bes,4. bes8 |
%41
	es4 a,4. a8 |
	d4 g4. g8 |
	c4 fis4. fis8 |
	g2 g,4 |
	c d d, |
	g r r8 r16 g\f |
	d'4 d, r8 r16 d' |
	g,2.\fermata |
}

bass = <<

\relative c' {
\repeat volta 2 {
	g4 r r8 r16 g |
	d'4 d, r8 r16 d\p |
	g,4 r r8 r16 g'\f |
	d4 r r8 r16 d |
	g4 r r |
	es\f f4. f8 |
	g4 a4. a8 |
	bes8. es,16 f4 f, |
	bes2. |
%10
	R2.*4 |
}
	g16\f |
	g4 r r8 r16 c\p |
	c4 r r8 r16 a\f |
	a4 r r8 r16 d\p |
	d4 r r |
	R2.*3 |
%22
	r4 r r8 r16 gis |
	a4 a, r8 r16 a\p |
	d4 r r8 r16 fis\f |
	g4 g, r8 r16 g\p |
	c4 r r8 r16 e\f |
	f4 f, r8 r16 f'\p |
	bes,4 r r8 r16 bes\f |
	c2 cis4 |
	d2 d,4 |
%31
	g' c,4. c8 |
	f4 bes,4. bes8 |
	es4 a,4. a8 |
	d4 g4. g8 |
	c4 fis,4. fis8 |
	g2 g,4 |
	c d d, |
	g2. |
	R2.*7 |
	r4 r r8 r16 g\f |
	d'4 d, r8 r16 d |
	g2.\fermata |
}

\figuremode {
\repeat volta 2 {
	s2. |
	<5 4>4 <5 _+> s |
	s2. |
	<_+>4 s s |
	R2.*2 |
	<6->4 <7 5->4. s8 |
	s2.*6 |
}
	<7>16 |
	s4 s4 s8 s16 <_-> |
	s4 s s8 s16 <7 _+> |
	s2.*5 |
	s4 s s8 s16 <7 5> |
	<6 4>4 <5 _+> s |
	s s s8 s16 <7- 5> |
	<6- 4>4 <5 _!> s |
	<_-> s s8 s16 <7 5_!> |
	<6 4>4 <5 3> s |
	s s s8 s16 <6> |
	<6 _->2 <6 5>4 |
	<_+>2 s4 |
	s <7 5 _->4. s8 |
	s4 <7 5>4. s8 |
	s4 <7 5->4. s8 |
	s4 <7 5>4. s8 |
	<_->4 <7- 5>4. s8 |
	s2. |
	<7 5 _->4 <5 4> <_+> |
	s2.*9 |
	<6 4>4 <5 _+> s |
	s2. |
}
>>
