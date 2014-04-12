\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 4/4 \key a \major s1*84 \bar "||"}
incmidi = "midi1.ily"

tuttiI = \relative c'' {
	a4 a8. a16 a8 a, r a' |
	a a, a a' a a, a a' |
	a gis16 fis e8 d cis4 r |
	e' e8. e16 e8 e, r e' |
	e e, e e' e e, e e' |
	e d16 cis b8 a gis4 r8 e |
	a b cis d e b16 a gis8 fis16 e |
	e'8 b16 a gis8 fis16 e e'8 b16 a gis8 fis16 e |
	a4 r8 cis, d4 e |
}

tuttiII = \relative c'' {
	a8 a, a a' a a, a a' |
	a gis16 fis e8 d cis4 r |
	e' e8. e16 e8 e, r e' |
	e e, e e' e e, e e' |
%21
	e d16 cis b8 a gis4 r8 e |
	a b cis d e b16 a gis8 fis16 e |
	e'8 b16 a gis8 fis16 e e'8 b16 a gis8 fis16 e |
	a4 r8 cis, d4 e |
}

tuttiIII = \relative c'' {
	a a8. a16 |
	a8 a, r a' a a, a a' |
	a a, a a' a gis16 fis e8 d |
	cis4 r e' e8. e16 |
	e8 e, r e' e e, e e' |
	e e, e e' e d16 cis b8 a |
%81
	gis4 r8 e a b cis d |
	\repeat unfold 3 {e b16 a gis8 fis16 e} a4 r8 cis, |
	d4 e a,2\fermata |
}

violinI = \relative c''' {
	\tuttiI |
	a16_"Solo" e a cis a e a cis a e a cis a e a cis |
%11
	\repeat unfold 4 {b e, b' d} |
	\repeat unfold 4 {cis e, cis' e} |
	\repeat unfold 4 {d e, d' fis} |
	\repeat unfold 4 {e( d e) fis} |
	\repeat unfold 4 {d( cis d) e} |
	cis2\trill ~ cis4 r8 a,_"Tutti" |
	\tuttiII |
	a'16_"Solo e Piano" e a cis a e a cis a e a cis a e a cis |
	\repeat unfold 4 {b e, b' d} |
	\repeat unfold 4 {cis e, cis' e} |
	\repeat unfold 4 {d e, d' fis} |
	\repeat unfold 4 {e( d e) fis} |
	\repeat unfold 4 {d( cis d) e} |
%31
	cis2\fermata e,16_"Solo e Forte" a gis a e a gis a |
	fis e fis gis fis gis a gis fis b a b fis b a b |
	gis fis gis a gis a b a gis cis b cis gis cis b cis |
	a gis a b a b cis b a d cis d a d cis d |
	b a b cis b cis d cis b e d e b e d e |
	\repeat unfold 3 {cis e cis e cis e cis e b e b e b e b e} |
	cis4 r8 a,_"Tutti" gis fis e d |
	cis b a a' gis fis e d |
%41
	cis b a e' d cis b a |
	e'4 r8 e' a a a g |
	fis4 r8 fis b b b a |
	gis4 r8 gis cis cis cis b |
	a4 r8 a a r gis r |
	fis r fis r e16_"Solo" gis b gis e gis b gis |
	e gis b gis e gis fis e fis b, dis fis b b, dis fis |
	b b, dis fis b a gis fis gis e gis b e, gis b gis |
	e gis b gis e gis fis e fis b, dis fis b b, dis fis |
	b b, dis fis b a gis fis gis e gis b e, gis fis e |
%51
	a a, cis e a, cis b a d a d fis a, d fis a, |
	gis e gis b e b cis d cis a cis e a e fis g |
	fis d fis a b fis gis! a gis_"Tutti" e e gis gis e e gis |
	a a, a a a' a, a a gis' e e gis gis e e gis |
	a a, a a a' a, a a gis'_"Solo" e gis b e, gis fis e |
	\repeat unfold 2 {a e cis e a e cis a' gis e gis b e, gis fis e} |
	a b gis a fis gis e fis dis fis e fis d e cis d |
	b d cis d b cis a b gis8 b16 a gis8 fis16 e |
	e'8 b16 a gis8 fis16 e d'8 b16 a gis8 fis16 e |
%61
	cis' e d e cis d b cis a8 e'16 d cis8 b16 a |
	a'8 e16 d cis8 b16 a g'8 e16 d cis8 b16 a |
	fis' a gis a fis gis e fis dis8 fis16 e dis8 cis16 b |
	b'8 fis16 e dis8 cis16 b a'8 fis16 e dis8 cis16 b |
	gis' b a b gis a fis gis e gis fis gis e fis d e |
	cis( b cis) a'-! cis,( b cis) a'-! b,( a b) a'-! b,( a b) a'-! |
	b,( a b) gis'-! b,( a b) gis'-! a_"Tutti" a, a a a' a, a a |
	\repeat unfold 2 {gis' e e gis gis e e gis a a, a a a' a, a a} |
%70
	\repeat unfold 16 {a' a, a a} |
	a' b, b b a' b, b b gis' b, b b gis' b, b b |
	a'4 r \tuttiIII |
}

tuttiB = \relative c'' {
	e8 e e |
	\repeat unfold 8 {fis} |
	\repeat unfold 8 {gis} |
	\repeat unfold 8 {a} |
	\repeat unfold 8 {b} |
	\repeat unfold 3 {a a a a gis gis gis gis} |
	a4 r8 a,\f gis fis e d |
	cis b a a' gis fis e d |
%41
	cis b a e' d cis b a |
	e'4 r8 e' e e e cis |
	d4 r8 d fis fis fis dis |
	e4 r8 e a a a e |
	cis4 r8 e g r e r |
	e r dis r e4 r |
	r2 dis4 r |
	r2 e4 r |
	r2 dis4 r |
	r2 e4 r |
%51
	R1*2 |
	r2 b8 b b b |
	cis cis cis cis b b b b |
	cis cis cis cis b4 r |
	R1*11 |
	r2 cis8 cis cis cis |
	\repeat unfold 2 {b b b b cis cis cis cis} |
	d d d d e e e e |
%71
	fis fis fis fis cis cis cis cis |
	d d d d e e e e |
	fis fis fis fis cis cis cis cis |
	\repeat unfold 8 {b} |
	cis4 r \tuttiIII |
}

violinII = \relative c' {
	\tuttiI |
	a4 r r2 |
%11
	R1 |
	a''16-1_"Solo" e a cis a e a cis a e a cis a e a cis |
	b-2 e, b' d b e, b' d b e, b' d b e, b' d |
	\repeat unfold 4 {cis( b cis) d} |
	\repeat unfold 4 {b( a b) cis} |
	a2\trill ~ a4 r8 a,_"Tutti" |
	\tuttiII |
	a4 r r2 |
	R1 | 
	a'16_"Solo e Piano" e a cis a e a cis a e a cis a e a cis |
	\repeat unfold 4 {b e, b' d} |
	\repeat unfold 4 {cis( b cis) d} |
	\repeat unfold 4 {b( a b) cis} |
%31
	a2\trill\fermata e8_"Tutti e Pianissimo" \tuttiB |
}

violinIII = \relative c' {
	\tuttiI |
	a4 r r2 |
%11
	R1*5 |
	a'4 a8. a16 a8 a, r a' |
	\tuttiII |
	a,4 r r2 |
	R1*5 |
%31
	r2 a''8\pp a a a |
	a a a a b b b b |
	b b b b cis cis cis cis |
	cis cis cis cis d d d d |
	\repeat unfold 8 {d} |
	\repeat unfold 3 {cis cis cis cis b b b b} |
	cis4 r8 a,\f gis fis e d |
	cis b a a' gis fis e d |
%41
	cis b a e' d cis b a |
	e'4 r8 e' a a a g |
	fis4 r8 fis b b b a |
	gis4 r8 gis cis cis cis b |
	a4 r8 a a r gis r |
	fis r fis r e4 r |
	\repeat unfold 2 {r2 fis4 r |
	r2 gis4 r} |
%51
	R1*2 |
	r2 gis16 e e gis gis e e gis |
	a a, a a a' a, a a gis' e e gis gis e e gis |
	a a, a a a' a, a a gis'4 r |
	R1*11 |
	r2 a16 a, a a a' a, a a |
	\repeat unfold 2 {gis' e e gis gis e e gis a a, a a a' a, a a} |
%70
	\repeat unfold 16 {a' a, a a} |
	a' b, b b a' b, b b gis' b, b b gis' b, b b |
	a'4 r \tuttiIII |
}

violinIV = \relative c' {
	\tuttiI |
	a4 r r2 |
%11
	R1*5 |
	a'4 a8. a16 a8 a, r a' |
	\tuttiII |
	a,4 r r2 |
	R1*5 |
%31
	r2 e''8\pp \tuttiB |
}

violaI = \relative c' {
	\tuttiI |
	a4 r r2 |
%11
	R1*5 |
	a'4 a8. a16 a8 a, r a' |
	\tuttiII |
	a,4 r r2 |
	R1*5 |
%31
	r2 cis'8\pp cis cis cis |
	d d d d dis dis dis dis |
	e e, e e eis eis eis eis |
	\repeat unfold 8 {fis} |
	\repeat unfold 8 {gis} |
	a e' e e e e e e |
	\repeat unfold 16 {e} |
	e4 r8 a,\f gis fis e d |
	cis b a a' gis fis e d |
%41
	cis b a e' d cis b a |
	e'4 r8 cis' cis cis cis a |
	a4 r8 a dis dis dis b |
	b4 r8 b e e e cis |
	cis4 r8 cis b r b r |
	cis r b r gis4 r |
	\repeat unfold 4 {r2 b4 r4} |
%51
	R1*2 |
	r2 e,8 e e e |
	\repeat unfold 8 {e} |
	e e e e e4 r |
	R1*11 |
	r2 e8 e e e |
	\repeat unfold 8 {e} |
	e e b b a a a a |
	b b b b cis cis cis cis |
%71
	d d d d a a a a |
	b b b b cis cis cis cis |
	d d d d e e e e |
	fis fis fis fis e e e e |
	e4 r \tuttiIII |
}

violaII = \violaI

cello = \relative c {
	\transpose c c, \tuttiI |
	a4 r r2 |
%11
	R1*5 |
	a'4 a8. a16 a8 a, r a' |
	\transpose c c, \tuttiII |
	a,4 r r2 |
	R1*10 |
	\repeat unfold 3 {a4 r4 r2} |
	a4 r8 a' gis fis e d |
	cis b a a' gis fis e d |
%41
	cis b a e' d cis b a |
	e'4 r r r8 a |
	d d d cis b4 r8 b |
	e e e d cis4 r8 cis |
	fis fis fis cis dis r e r |
	a,, r b r e4 r |
	r2 b4 r |
	r2 e4 r |
	r2 b4 r |
	r2 e4 d |
%51
	cis r fis r |
	d fis gis cis, |
	d dis e8 e e e |
	a, a a a e' e e e |
	a, a a a e'4 d |
	cis a e' d |
	cis a e' d |
	cis8 e' d cis b cis b a |
	gis a gis fis e4 r |
	gis r e r |
%61
	a r a, r |
	cis r a r |
	d r b r |
	dis r b r |
	e r e, r |
	a8 b cis a d cis d b |
	e d e e, a a a a |
	e' e e e a, a a a |
	e' e e e a a a a |
	b b b b cis cis cis cis |
%71
	d d d d a a a a |
	b b b b cis cis cis cis |
	d d d d a a a a |
	d, d d d e e e e |
	a,4 r \transpose c c, \tuttiIII |
}

bass = <<

\cello

\figuremode {
	s1*2 |
	s2 <6>4 s |
	s1*35 |
	s2 <6>8 s s4 |
	<6>8 s s s <6> s s s |
%41
	<6> s s s <6> s s s |
	s2 s4 s8 <7-> |
	s2 s4 s8 <7! _+> |
	s2 s4 s8 <7> |
	s4 s8 <6> <6 5> s s s |
	<6 5> s <_+> s s2 |
	s <_+>4 s |
	s1 |
	s2 <_+>4 s |
	s1 |
%51
	s2 <6>4 s |
	s <6 5> s <6 5-> |
	s <6 5> s2 |
	s1 |
	s2 s4 <4 2> |
	<6> s s <4 2> |
	<6> s s <4 2> |
	<6>8 s s4 s2 |
	<6>8 s s4 s2 |
	<6>4 s <7> s |
%61
	s1 |
	s2 <7->4 s |
	s2 <_+>4 s |
	<6> s <7 _+> s |
	s1 |
	s2 <6 5>8 s s4 |
	s1*3 |
	<7>8 s s s <6> s s s |
%71
	<5> s s4 s2 |
	<7>8 s s s <6> s s s |
	<5> s s4 s2 |
	<6 5>8 s s4 s2 |
	s1*6 |
%81
	<6>4 s s2 |
}
>>
