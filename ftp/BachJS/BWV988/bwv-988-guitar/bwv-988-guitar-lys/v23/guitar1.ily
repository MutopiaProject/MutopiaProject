\version "2.18.0"

guitarone = \relative c'' {
 \repeat volta 1 {
	 \stemDown
     	r8 g8 b'16 [ a g fis ] e [ d cis b ] | % 1
	a16 [ g fis8 ] a'16 [ g fis e ] d [ cis b a ] | % 2
	g16 [ fis e8 ] g'16 [ fis e d ] cis [ b a g ] | % 3
	fis16 [ e d8 ] r8 r16 e32 [ fis32 ] g [ a b cis d8 ~ ] | % 4
	d8 [ b,16 c ] d [ e fis g ] a [ b c d ] | % 5
	e8 [ c,16 d ] e [ fis g a ] b [ c d e ] | % 6
	fis8 [ d,16 e ] fis [ g a b ] c [ d e fis ] | % 7
	g8 r8 r16 fis32 [ e d c b a ] g16 r16 r8 | % 8
	r16 <d' b'>16 [ <d b'> ] r16 r32 g32 [ fis e d16 ] r16 r32 c32 [ b a g16 ] r16 | % 9
	r16 <d' a'>16 [ <d a'> ] r16 r32 d32 [ cis b a16 ] r16 r32 g32 [ fis e d16 ] r16 | % 10
	r16 <b' g'>16 [ <b g'> ] r16 r32 c32 [ b a g16 ] r16 r32 a32 [ g fis e16 ] r16 | % 11
	r16 <a g'>16 [ <a g'> ] r16 r32 fis32 [ e d cis16 ] r16 r32 d32 [ cis b a16 ] r16 | % 12
	r16 a'16 [ a' g ] fis [ e d c ] b [ a g fis ] | % 13
	b16 [ g fis e ] d [ c b a ] g [ b e d ] | % 14
	cis16 [ b a b ] cis [ d e fis ] g [ a b cis ] | % 15
	d16 [ cis32 b a g fis e ] d8 r8 r4 | % 16
	}
    \repeat volta 1 {
	a'8 \prallmordent  r16 g16 \grace g16 fis8  r16 e16 \grace e16 d8 r16 c16  | % 17
	b8 \prallprall r16 \stemUp a16 \grace a16 g8 r16 fis16 \grace fis16 e8 r16 d16 | % 18
	c8 r16  b16 \grace b16 a8 r16 g16 \grace g16 fis8 r16 e16 | % 19
	\grace e16 dis8 r16 fis16 a8 r16 c16 b8 \prallprall r16 a16 | % 20
	g8 r8 r16 \stemDown dis''16 [ e fis ] g [ gis a b ] | % 21
	c16 [ a g f ] e [ d c b ] a [ g fis e ] | % 22
	dis16 [ c' \grace c b8 ] r32 b32 [ cis dis e fis g16 ~ ] g [ fis e \prallprall dis ] | % 23
	e32 [ c b a b ] a [ g fis g ] fis [ e dis e ] r32 r16 r4 | % 24
	r16 <c' e> [ <d f> <e g> ] <f a> [ <g b> <a c> <b d> ] <c e>8 r | % 25
	r16 <b d> [ <a c> <g b> ] <fis a> [ <e g> <d fis> <c e> ] <b d>8 r | % 26
	r16 <b d> r <gis b> r <b d> r <g b> r <g b> r <e g> | % 27
	r16 <e g> r <cis e> r <e g> r <c e> r <c e> r <a c> | % 28
	r16 <a c> r <fis a> r <a c> r <c e> r <e g> r <g b> | % 29
	r16 <f d'> r <d b'> r <f d'> r <a fis'> r <c a'> r <e c'> | % 30
	r16 <a cis> [ <b d> <cis e> ] <d fis> [ <e g> <fis a> <g b> ] <a c>8 r | % 31
	r16 <d, b'> [ <c a'> <b g'> ] <a fis'> [ <g e'> <fis d'> <e c'> ] <d b'>8 r | % 32
    }
}

