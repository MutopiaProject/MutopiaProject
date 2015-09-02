\version "2.18.0"

pMarkings = {\tempo "Adagio" \time 3/4 \key e \minor s2.*8 \bar "||"}
incmidi = "midi3.ily"

violinI = \relative c'' {
	e4 b g' |
	g2. |
	fis4 b2 ~|
	b4 a2 ~|
	a4 gis4. gis8 |
	ais2 b4 ~|
	b ais2 |
	b2.\fermata |
}

violinII = \relative c'' {
	R2. |
	e4 ais, e' |
	d2 fis4 |
	e2. |
	dis4 d4. d8 |
	cis2 d4 |
	cis2. |
	d2.\fermata |
}

violinIII = \violinI

violinIV = \violinII

violaI = \relative c' {
	R2. |
	cis2 cis'4 |
	fis,2 d4 |
	g cis,2 |
	fis4 b,4. b8 |
	fis'2 fis4 |
	g fis2 |
	fis2.\fermata |
}

violaII = \violaI

cello = \relative c {
	r4 r e |
	ais,2 ais4 |
	b2 b4 |
	cis2 cis4 |
	b e4. e8 |
	e2 d4 |
	e fis fis, |
	b2.\fermata |
}

bass = <<

\cello

\figuremode {
	s2. |
	<7 5>2 s4 |
	<5 _!>2 s4 |
	<76>2 s4 |
	<7 _+>4 <7 _+>4. s8 |
	<4\+ 2>2 <6>4 |
	<6\\ 5> <_+> s |
}
>>
