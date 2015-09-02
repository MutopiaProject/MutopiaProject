\version "2.18.0"

pMarkings = {\tempo "Adagio e Spiccato" \time 4/4 \key d \minor s1*13 \bar "||"}
incmidi = "midi1.ily"

violinI = \relative c'' {
	R1 |
	r2 a8 a a a |
	b b b b cis cis cis cis |
	d d d d d d cis cis |
	d d f,\p f e e e e |
	f f f f r2 |
	es'8 es es es d d d d |
	es es es es cis cis d d |
	c! c c' c c c bes\p bes |
	a a a a bes4 r8 bes16._"Soli e Piano" a32 |
%11
	bes4 ~ bes16.( a32) bes16.( a32) a16.( bes32) c16.( bes32) a16.( c32) bes16.( a32) |
	bes4 ~ bes16.( a32) bes16.( c32) a8 d, g_"Tutti e Forte" g |
	g g fis fis g2\fermata |
}

violinII = \relative c'' {
	R1 |
	g8 g g g g g fis fis |
	f f f f e e' e e |
	f f f f e e e e |
	f f d,\p d d d cis cis |
	d d d d d'\f d d d |
	d d c c c c bes bes |
	bes bes g' g g g f f |
	fis fis fis fis g g g\p g |
	g g fis fis g4 r8 g16._"Soli e Piano" fis32 |
%11
	g4 ~ g16.( fis32) g16.( a32) fis16.( g32) a16.( g32) fis16.( a32) g16.( fis32) |
	g4 ~ g16.( fis32) g16.( a32) fis4 bes8_"Tutti e Forte" bes |
	a a a a bes2\fermata |
}

violinIII = \relative c'' {
	R1 |
	r2 a8 a a a |
	b b b b cis cis cis cis |
	d d d d d d cis cis |
	d d f,\p f e e e e |
	f f f f r2 |
	es'8\f es es es d d d d |
	es es es es cis cis d d |
	c! c c' c c c bes\p bes |
	a a a a bes4 r |
%11
	R1 |
	r2 r4 g8\f g |
	g g fis fis g2\fermata |
}

violinIV = \relative c'' {
	R1 |
	g8 g g g g g fis fis |
	f f f f e e' e e |
	f f f f e e e e |
	f f d,\p d d d cis cis |
	d d d d d'\f d d d |
	d d c c c c bes bes |
	bes bes g' g g g f f |
	fis fis fis fis g g g\p g |
	g g fis fis g4 r |
%11
	R1 |
	r2 r4 bes8\f bes|
	a a a a bes2\fermata |
}

violaI = \relative c' {
	r2 a8 a a a |
	bes bes bes bes es es d d |
	d d d d a a a' a |
	a a b b e, a a a |
	a a, b\p b e a a a |
	a a a a r2 |
	g8\f g g g a a g g |
	g g es es e e a a |
	a a a a d, d e\p e |
	a, d d d d g g\p g |
%11
	cis cis cis cis d d d d |
	cis cis cis cis d4 e,8\f e |
	a, d d d d2\fermata
}

violaII = \violaI

cello = \relative c' {
	g8 g g g g g fis fis |
	g g es es c c d d |
	g g g g g g g g |
	f f gis, gis a a a a |
	d d gis,\p gis a a a a |
	d d d d r2 |
	g8\f g g g fis fis g g |
	g g c c a a d, d |
	d d d d d d cis\p cis |
	d d d d g,4 r |
%11
	R1 |
	r2 r4 cis8\f cis |
	d d d d g,2\fermata
}

bass = <<

\cello

\figuremode {
	s2 <4 2>8 s <3> s |
	s2 <6 5 _->8 s <_+> s |
	<7 _!> s s4 <6 4\+>8 s s4 |
	<6>8 s <7 5> s <5 4> s <_+> s |
	s4 <7 5>8 s <5 4> s <_+> s |
	s1 |
	<6- 5>8 s <6 4> s <6 5> s <3> s |
	<6-> s <_-> s <7 _+> s s4 |
	<7 _+>8 s s4 <7 4>8 s <7 5 3!> s |
	<5 4> s <_+> s s2 |
%11
	s1 |
	s2 s4 <7 5>8 s |
	<5 4> s <_+> s s2 |
}
>>
