\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 3/4 \key a \major s2.*118 \bar "|."}
incmidi = "midi3.ily"

motifA = \relative c'' {
	a8 cis e a, cis |
	b e, gis b e b |
	cis4 e e |
	e e e |
}

motifB = \relative c'' {
	e e |
	e e e |
	e8 a, cis e a, cis |
	b e, gis b e b |
}

tuttiAI = \relative c'' {
	r8 \motifA |
	e8 <<s\p \motifA>> |
}

tuttiAII = \relative c'' {
	\motifA
	e8 e16 d cis8 b a gis |
	fis fis'16 e d8 cis b a |
	gis gis'16 fis e8 d cis b |
	a a'16 gis fis8 e d cis |
%21
	b b'16 a gis8 fis e d |
	cis a a a a' a, |
	\repeat unfold 2 {a a a a a' a,} |
	a' b, b b gis' b, |
}

tuttiBI = \relative c'' {
	<<s4\p \motifB>> |
	cis e8 d cis b |
	a4 fis'8 e d cis |
	b4 gis'8 fis e d |
	cis4 a'8 gis fis e |
%21
	d4 b'8 a gis fis |
	e a, a a a' a, |
	a a a a a' a, |
	a a a a a' a, |
	a' b, b b gis' b, |
	cis4 r r |
}

tuttiAIII = \relative c'' {
	\motifA
%61
	e8 a, cis e a e |
	fis4 r8 a a a |
	fis b, dis fis b fis |
	gis4 r8 b b b |
	gis cis, eis gis cis-4 gis |
	a cis, cis cis a' cis, |
	gis' cis, cis cis gis' cis, |
	gis' b, b b gis' b, |
	a4 r fis' |
	fis r eis |
}

tuttiBII = \relative c'' {
	cis r r |
	r8 d, fis a d a |
	b4 r8 dis dis dis |
	b e, gis b e b |
	cis4 r8 eis eis eis |
	cis cis cis cis a' cis, |
	gis' cis, cis cis gis' cis, |
	gis' b, b b gis' b, |
	a4 r a |
	gis r gis |
%71
	fis r r |
	R2.*7 |
	r4 \motifB |
}

tuttiAIV = \relative c''' {
	a8 a, cis e a, cis |
	b e, gis b e b |
	cis4 e e |
	e e e |
	e8 e16 d cis8 b a gis |
	fis fis'16 e d8 cis b a |
	gis gis'16 fis e8 d cis b |
	a a'16 gis fis8 e d cis |
	b b'16 a gis8 fis e d |
	cis a a a a' a, |
%111
	a a a a a' a, |
	a a a a a' a, |
	a' b, b b gis' b, |
	a a gis fis e d |
	cis fis e d cis b |
	a4 a'' a |
	a gis gis |
	a2.\fermata |
}

tuttiBIII = \relative c'' {
	\motifB |
	cis4 e8 d cis b |
	a4 fis'8 e d cis |
	b4 gis'8 fis e d |
	cis4 a'8 gis fis e |
	d4 b'8 a gis fis |
	e a, a a a' a, |
%111
	a a a a a' a, |
	a a a a a' a, |
	a' b, b b gis' b, |
	a a gis fis e d |
	cis fis e d cis b |
	a4 cis' cis |
	b b b |
	cis2.\fermata |
}

violinI = \relative c'' {
	\tuttiAI |
	e16_"Solo e Forte" fis e fis e fis e fis e fis e fis |
	\repeat unfold 6 {d e} |
%11
	\repeat unfold 6 {cis d} |
	\repeat unfold 6 {b cis} |
	a8 \tuttiAII |
	a_"Solo" a16 b cis8 cis16 d e8 fis16 gis |
	a a, b cis d e fis gis a8 cis, |
	b16 e, fis gis a b cis d e8 b |
	cis4 r r |
%30
	R2.*2 |
	r8 \motifA |
	e16_"Solo" fis e fis e fis e fis e fis e fis |
	\repeat unfold 6 {d e} |
	cis8 a' e cis a cis' |
	\repeat unfold 6 {b16 cis} |
	\repeat unfold 6 {a b} |
%41
	gis8_"Tutti" \transpose a e' \motifA |
	b8 <<s\p \transpose a e' \motifA>> |
	b16 b_"Solo e Forte" a b gis a fis gis e fis d e |
	cis4 r r |
%51
	r16 a' gis a fis gis e fis d e cis d |
	b4 r r |
	r16 gis' fis gis e fis d e cis d b cis |
	a4 r r |
	r16 fis' e fis d e cis d b cis a b |
	gis4 r r |
	r8 <<s_"Tutti" \tuttiAIII>> |
%71
	fis'16(_"Solo" gis a) gis fis gis a gis fis gis fis e |
	dis fis dis fis b, fis' dis fis b, fis' dis fis |
	gis( a b) a gis a b a gis fis e d |
	cis e cis e a, e' cis e a, e' cis e |
	fis( gis a) gis fis gis a gis fis e d cis |
	d( e fis) e d e fis e d cis b a |
	b( cis d) cis b cis d cis b a gis fis |
	gis( fis e) fis gis a b cis d b cis d |
	cis8 <<s_"Tutti" \motifA>> |
	e16_"Soli e Piano" fis e fis e fis e fis e fis e fis |
	\repeat unfold 6 {d e} |
	cis8 e_"Tutti e Forte" a e cis a' |
	fis d fis a b fis |
	gis e a e cis a' |
	b, a' b, a' b, gis' |
	a,16 a'_"Solo" a a b, a' a a cis, a' a a |
	d, a' a a cis, a' a a b, a' a a |
%91
	a, a' a a b, a' a a cis, a' a a |
	d, a' a a cis, a' a a b, a' a a |
	a,4 r r |
	R2. |
	a'4 r r |
	R2. |
	a16_"Solo" a, cis e a a, cis e a a, cis e |
	a4 r r |
	r16 a gis fis e a gis fis e d cis b |
	a4 r r |
%101
	<<s8_"Tutti" \tuttiAIV>> |
}

violinII = \relative c'' {
	r4 \motifB |
	cis <<s\p \motifB>> |
	cis r r |
	R2. |
%11
	e16_"Solo e Forte" fis e fis e fis e fis e fis e fis |
	\repeat unfold 6 {d e} |
	cis4 \tuttiBI |
	R2.*2 |
	a8_"Solo" a16 b cis8 cis16 d e8 fis16 gis |
	a a, b cis d e fis gis a8 cis, |
%31
	b16 e, fis gis a b cis d e8 b |
	cis4 \motifB |
	cis r r |
	R2. |
	e16_"Solo" fis e fis e fis e fis e fis e fis |
	\repeat unfold 6 {d e} |
	cis8 a' e cis a cis' |
%41
	b4_"Tutti" \transpose e b {\motifB |
	cis'' <<s\p \motifB>>} |
	gis4 r r |
	r16 e_"Solo e Forte" d e cis d b cis a b gis a |
%51
	fis4 r r |
	r16 d' cis d b cis a b gis a fis gis |
	e4 r r |
	r16 cis' b cis a b gis a fis gis e fis |
	d4 r r |
	r16 b' a b gis a fis gis e fis d e |
	cis4 <<s_"Tutti" \motifB>> |
%61
	\tuttiBII
%83
	cis'16_"Soli e Piano" d cis d cis d cis d cis d cis d |
	\repeat unfold 6 {b cis} |
	a8 e'_"Tutti e Forte" a e cis a' |
	fis d fis a b fis |
	gis e a e cis a' |
	b, a' b, a' b, gis' |
	a4 r r |
	R2. |
%91
	e4 r r |
	R2. |
	a,16 a' a a b, a' a a cis, a' a a |
	d, a' a a cis, a' a a b, a' a a |
	a, a' a a b, a' a a cis, a' a a |
	d, a' a a cis, a' a a b, a' a a |
	a,4 r r |
	a'16_"Solo" a, cis e a a, cis e a a, cis e |
	a,4 r r |
	r16 a gis fis e a gis fis e d cis b |
%101
	a4 <<s_"Tutti" \tuttiBIII>> |
}

violinIII = \relative c'' {
	\tuttiAI |
	e4 r r |
	R2.*3 |
	r8 \tuttiAII |
	a4 r r |
	R2.*5 |
	r8 \motifA |
	e4 r r |
	R2.*4 |
	r8 \transpose a e' \motifA |
	b'8 <<s\p \transpose a e' \motifA>> |
	b4 r r |
	cis\f r r |
	cis r r |
	b r r |
	b r r |
	a r r |
	a r r |
	gis r r |
	a8 \tuttiAIII |
	fis4 r r |
	R2.*7 |
	r8 \motifA |
	e4 r r |
	R2. |
	r8 e a e cis a' |
	fis d fis a b fis gis e a e cis a' |
	b, a' b, a' b, gis' |
	\repeat unfold 4 {a4 r r |
	R2.} |
	\repeat unfold 4 {a4 r r} |
	\tuttiAIV |
}

violinIV = \relative c'' {
	r4 \motifB |
	cis <<s\p \motifB>> |
	cis r r |
	R2.*3 |
	r4 \tuttiBI |
	R2.*5 |
	r4 \motifB |
	cis r r |
	R2.*4 |
	r4 \transpose e b {\motifB |
	cis'' <<s\p \motifB>>} |
	gis'4 r r |
	gis\f r r |
	fis r r |
	fis r r |
	e r r |
	e r r |
	d r r |
	d r r |
	cis \motifB |
	\tuttiBII |
	cis4 r r |
	R2. |
	r8 e a e cis a' |
	fis d fis a b fis |
	gis e a e cis a' |
	b, a' b, a' b, gis' |
	a4 r r |
	\repeat unfold 4 {R2. |
	e4 r r} |
	e r r |
	e r r |
	e r r |
%101
	e \tuttiBIII |
}

violaI = \relative c' {
	\repeat unfold 2 {e4 r e |
	gis r8 gis b gis} |
	e4 r e\p |
	gis r8 gis b gis |
	e4 r e |
	gis r8 gis b gis |
	e4 r r |
%10
	R2.*3 |
	\repeat unfold 2 {e4 r e |
	gis r8 gis b gis} |
	e4 r e |
	fis r fis |
	gis r gis |
	a r a |
%21
	b r b |
	e, cis' b |
	a gis fis |
	e r cis |
	fis e e |
	e r r |
	R2.*5 |
%32
	\repeat unfold 2 {e4 r e |
	gis r8 gis b gis} |
	e4 r r |
	R2.*4 |
%41
	\repeat unfold 2 {b4 r b |
	dis r8 dis fis dis} |
	b4 r b\p |
	dis r8 dis fis dis |
	b4 r b |
	dis r8 dis fis dis |
	e4 r r |
	e\f r r |
%51
	d r r |
	d r r |
	cis r r |
	cis r r |
	b r r |
	b r r |
	\repeat unfold 2 {e r e |
	gis r8 gis b gis} |
%61
	e4 r8 cis e cis |
	a4 r8 fis' a fis |
	dis4 r8 dis fis b, |
	b4 r8 gis' b gis |
	eis4 r8 eis gis cis, |
	cis4 r8 cis cis cis |
	eis4 r8 eis eis eis |
	eis4 r8 eis eis eis |
	cis4 r cis |
	d r cis |
%71
	cis r r |
	R2.*7 |
	\repeat unfold 2 {e4 r e |
	gis r8 gis b gis} |
%83
	e4 r r |
	R2. |
	cis'4 r8 cis cis cis |
	a4 r8 a fis fis |
	b4 r8 e, e e |
	fis4 r8 e e e |
	cis'4 r r |
%90
	\repeat unfold 4 {R2. |
	cis4 r r} |
	cis r r |
	cis r r |
	cis r r |
%101
	cis r e, |
	\repeat unfold 2 {gis r8 gis b gis |
	e4 r e} |
	fis r fis |
	gis r gis |
	a r a |
	b r b |
	e, cis' b |
%111
	a gis fis |
	e r cis |
	fis e e |
	cis8 a' gis fis e d |
	cis fis e d cis b |
	a4 e' e |
	fis e e |
	cis2.\fermata |
}

violaII = \violaI

cello = \relative c {
	\repeat unfold 2 {a4 r8 a cis a |
	e'4 r8 e gis e} |
	a4 r8 a,\p cis a |
	e'4 r8 e gis e |
	a4 r8 a, cis a |
	e'4 r8 e gis e |
	a4 r r |
%10
	R2.*3 |
	\repeat unfold 2 {a,4 r8 a cis a |
	e'4 r8 e gis e} |
	a4 r cis, |
	d r d |
	e r e |
	fis r fis |
%21
	gis r gis |
	a a gis |
	fis e d |
	cis r a |
	d e e, |
	\repeat unfold 2 {a r8 a' cis e |
	a,4 r8 a cis a |
	gis4 r8 e gis e} |
%32
	\repeat unfold 2 {a4 r8 a, cis a |
	e'4 r8 e gis e} |
	a4 r r |
	R2.*4 |
%41
	\repeat unfold 2 {e4 r8 e gis e |
	b'4 r8 b, dis b} |
	e4 r8 e\p gis e |
	b'4 r8 b, dis b |
	e4 r8 e gis e |
	b'4 r8 b, dis b |
	e4 r8 e\f gis e |
	a,4 r8 a' cis a |
%51
	d,4 r8 d fis d |
	gis,4 r8 gis' b gis |
	cis,4 r8 cis e cis |
	fis,4 r8 fis' a fis |
	b,4 r8 b d b |
	e,4 r8 e' gis e |
	a,4 r8 a cis a |
	e'4 r8 e gis e |
	a4 r8 a, cis a |
	e'4 r8 e gis e |
%61
	a,4 r8 cis cis cis |
	d4 r8 d d d |
	dis4 r8 dis dis dis |
	e4 r8 e e e |
	eis4 r8 eis eis eis |
	fis4 r8 fis fis fis |
	cis4 r8 cis cis cis |
	cis4 r8 cis cis cis |
	fis4 r fis |
	b, r cis |
%71
	fis r8 fis fis, fis' |
	b,4 r8 b' b, b' |
	e,4 r8 e e, e' |
	a,4 r8 a' a, a' |
	d,4 r8 d' d, d' |
	d,4 r8 d' d, d' |
	d,4 r8 d' d, d' |
	e,4 r8 e' e, e' |
	\repeat unfold 2 {a,4 r8 a, cis a |
	e'4 r8 e gis e} |
%83
	a,4 r r |
	R2. |
	a4 r8 a' a a |
	d4 r8 d, d d |
	d4 r8 cis cis cis |
	d4 r8 e e e |
%89
	\repeat unfold 4 {a,4 r r |
	R2.} |
	a4 r r |
	a r r |
	a r r |
	a r r |
%101
	a \repeat unfold 2 {r8 a cis a |
	e'4 r8 e gis e |
	a4} r cis, |
	d r d |
	e r e |
	fis r fis |
	gis r gis |
	a a gis |
%101
	fis e d |
	cis r cis |
	d e e, |
	a8 a' gis fis e d |
	cis fis e d cis b |
	a4 a a |
	d e e, |
	a2.\fermata |
}

bass = <<

\cello

\figuremode {
	s2.*17 |
	\repeat unfold 4 {<5>4 s <6 5>} |
%22
	s2.*2 |
	<6>4 s s |
	<6 5> s2 |
	s2.*2 |
	<6>4 s2 |
	s2.*2 |
%31
	<6>4 s2 |
	s2.*10 |
%42
	\repeat unfold 4 {<_+>4 s2 |
	s2.} |
	\repeat unfold 7 {<7>4 s2} |
	s2.*5 |
%62
	<5>4 s2 |
	<6>4 s2 |
	<5>4 s2 |
	<6>4 s2 |
	s2. |
	<_+>4 s2 |
	<7 _+>4 s2 |
	s2. |
	<6 5>4 s <_+> |
%71
	s2. |
	<7 _+>4 s2 |
	s2. |
	<7->4 s2 |
	s2.*2 |
	<6>4 s2 |
	s4 s8 <7> s4 |
%79
	s2.*7 |
	s2 <6>8 s |
	<4 2>4 s8 <6> s4 |
	<6 5>4 s2 |
%89
	s2.*17 |
	\repeat unfold 4 {<5>4 s <6 5>} |
	s2.*2 |
%112
	<6>4 s2 |
	<6 5>4 s2 |
	s2.*3 |
	<6 5>4 s2 |
}
>>
