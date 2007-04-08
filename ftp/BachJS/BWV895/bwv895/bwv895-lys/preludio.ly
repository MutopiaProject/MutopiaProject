\version "2.4.0"

prelGlobal = { \time 4/4 \key a \minor }

prelUpstaff = \change Staff = prelUpper
prelLowstaff = \change Staff = prelLower

prelI = \relative c'' {
	% 1
	s1 |
	s |
	\stemUp \tieUp s4 b16\rest b_\mf
		a^\prall gis a8^\mordent b16 a32 b c16 a f'8 ~ |
	f8. e16 e d e b c4 r |
	% 5
	f16\rest c8 c16 b c a b gis8.^\prall gis16 a c b^\prall a |
	d4 r16 f! e d cis a d8 ~ d16[e32 b c!8] |
	b4 r16 d c b a4 r16 f' e d |
	g4 r16 bes a g f4 f |
	r16 a g f e4 r16 c' b a b4 |
	% 10
	e, r r2 |
	r8. a,16 c,4 ~ c b |
	a16 e' cis a f'4 ~ f16 f e d e8 gis |
	a1 | \bar "|."
}

prelII = \relative c'' {
	% 1
	\tempo 4=54
	b1\rest\f |
	b2\rest b16\rest \stemUp c,16 b c32 d gis,8. a16 |
	\stemDown \tieDown a4^\mordent s e' r8 c' |
	b4 r r16 gis a e c e a, b32 c |
	% 5
	e8\rest f ~ f4 e e |
	r16 a b fis gis4 a ~ a8. g16 |
	f4 e e s |
	b'16\rest d e b cis4 b16\rest e d cis <d a>4 |
	d c! d r16 f e d ~ |
	% 10
	d d c b c32 b a g! f e d c \prelLowstaff b a b c \stemUp d
		\prelUpstaff \stemDown e f e d c b a
		\prelLowstaff g fis e fis |
	\prelUpstaff r4 r16 \stemDown \tieDown gis8 a16 ~ a gis a8 ~
		a16 fis gis8 |
	a4 d16 cis d8 ~ d4 ~ d16 cis d b |
	<cis e>1
}

prelIII = \relative c' {
	% 1
	s1 |
	s |
	\stemUp \tieUp s4 b16\rest d c b c8 d16 c32 d e8. d32 c |
	d4 s8 e e4 s |
	% 5
	r8 a, d c b4 a8 a |
	b4 r8 e f!8. e32 d e4 |
	d16 d c b e8 d cis16 b cis a d8 \prelUpstaff \stemDown a' |
	\prelLowstaff \stemUp e4 e d s |
	g4 g8 a ~ a4 gis |
	% 10
	a b\rest \clef "bass" s2 |
	dis,,4 ~ dis8. dis16 e8. dis16 e8. d16 |
	cis4 r8. gis'16 a2 ~ |
	a1
}

prelIV = \relative c {
	% 1
	\stemDown
	d16\rest a'32[b c d e f] gis,8 d\rest d16\rest c' b a gis a b fis |
	gis dis e b c gis a dis, \stemUp e8 d'\rest d\rest <e d b e,> |
	<e c a>4 a,\rest \stemDown \tieDown a' d,8\rest a' |
	gis4 d8\rest <b' gis> a4 d,\rest |
	% 5
	d2 ~ d4 c |
	b b' a2 ~ |
	a4 g ~ g f |
	e a d, d16\rest cis' d a \clef "violin" |
	b4 r16 c! b a b4 r8 b | 
	% 10
	a4 s \clef "bass" s2 |
	s2. d,,8\rest e8 |
	a1 ~ |
	a
}
