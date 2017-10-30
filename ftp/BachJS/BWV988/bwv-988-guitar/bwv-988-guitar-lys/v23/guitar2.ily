\version "2.18.0"

 guitartwo = \relative c'' {
 \repeat volta 1 {
	\stemDown
	g8 [ b'16 a ] g [ fis e d ] cis [ b a g ] | % 1
	fis8 [ a'16 g ] fis [ e d cis ] b [ a g fis ] | % 2
	e8 [ g'16 fis ] e [ d cis b ] a [ g fis e ] | % 3
	d8 r16 c32 [ b ] \stemUp a [ g fis e d8 ] r8 r16 c16 | % 4
	b8 r8 \stemDown b'16 [ c d e ] fis [ g a b ] | % 5
	c16 [ d e8 ] c,16 [ d e fis ] g [ a b c ] | % 6
	d16 [ e fis8 ] d,16 [ e fis g ] a [ b c a ] | % 7
	b32 [ g a b c d e fis ] g16 r16 r8 r16 fis,32 [ e d c b a ] | % 8
	g8 r16 a16 b8 \mordent r16 c16 d8 \mordent r16 e16 | % 9
	fis8 \mordent r16 g16 a8 \mordent r16 b16 cis8 \mordent r16 d16 | % 10
	e8 \mordent r16 fis16  g8 \mordent  r16 a16  b8 r16 d,16 | % 11
	cis8 r16 e16 g,8 r16 b16 a8 \prall r16 g16 | % 12
	fis8 r16 a,16 a' [ g fis e ] d [ c b a ] | % 13
	\stemUp g16 [ b d c ] b [ a g fis ] e [ d cis b ] | % 14
	a16 [ e' g fis ] e [ d cis b ] a [ g fis e ] | % 15
	d4_~ d16 [ e32 fis g a b cis ] d8 r8 | % 16
    }

    \repeat volta 1 {
	r16 <d, d'> [ <d d'> ] r16 r32 e32 [ fis g a16 ] r16 r32 a32 [ b c32 d16 ] r16 | % 17
	r16 <g, g'> [ <g g'> ] r16 r32 d'32 [ e fis g16 ] r16 r32 fis32 [ g a b16 ] r16 | % 18
	r16 <e, a> [ <e a> ] r16 r32 \stemDown b'32 [ c d e16 ] r16 r32 e32 [ fis g a16 ] r16 | % 19
	r16 <a c> [ <a c> ] r r32 b [ a g fis16 ] r16 r32 g32 [ fis e dis16 ] r16 | % 20
	r16 e16 [ d c ] \stemUp b [ a g fis ] e [ d c b ] | % 21
	a8 r8 r16 gis16 [ a b ] c [ cis dis e ] | % 22
	fis8 r16 a,16 g8 [ c8 ] a8 [ b8 ] | % 23
	e,8 r32 r4 c''32 [ b a b ] a [ g fis g ] f [ e d ] | % 24
	c8 r8 r16 <b' d> [ <a c> <g b> ] <fis a> [ <e g>  <d fis>  <c e> ]  | % 25
	<b d>8 r8 r16 <a c> [ <b d> <c e> ] <d fis> [ <e g> <fis a> <g b> ] | % 26
	<a c>8 [ <a c> <a c> <a c> <fis a> <fis a> ] | % 27
	<d fis>8 [ <d fis> <d fis> <d fis> <d b> <d b> ] | % 28
	<g, b>8 [ <g b> <g b> <b d> <d f> <f a> ] | % 29
	<e c'>8 [ <e c'> <e c'> <g e'> <b g'> <d b'> ] | % 30
	<fis d'>16 r r8 r16 <g, e'> [ <fis d'> <e c'> ] <d b'> [ <c a'> <b g'> <a fis'> ] | % 31
	<< { <g g'>16 b <a c> <b d> } \\ { g8 s8 } >> <c e>16 [ <d fis> <e g> <fis a> ] <g b>8 r8 | % 32
    }
}


