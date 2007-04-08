\version "2.4.0"

fugaGlobal = { \time 4/4 \key a \minor }

fugaUpstaff = \change Staff = fugaUpper
fugaLowstaff = \change Staff = fugaLower

fugaI = \relative c'' {
	% 1
	\tempo 4=72
	\fugaUpstaff g8\rest\f e e e a, f' f f |
	e d c b c a16 b c d e fis |
	g8 e16 fis g a b c dis,8 e16 fis b,8 cis16 dis |
	e4. d!16 c! d4^\mordent ~ d16 c d b |
	% 5
	\stemDown c8 \fugaLowstaff \stemUp c16 b c4 r16 c b a d4 |
	c8 b a gis a r r4 |
	s1 |
	s |
	s |
	% 10
	r8 e'[e e] a, f' f f |
	e d c b c16 b a \fugaUpstaff \stemDown \tieDown b c b c d |
	e8 fis16 g! a g fis e dis fis g a b c b a |
	gis8 a a8.^\prall gis16 a8 gis[b b] |
	c a a a b b a gis |
	% 15
	a a c g\rest g2\rest |
	g1\rest |
	g8\rest b b b e, c' c c |
	b a g fis e fis16 gis a8 g |
	fis e d e16 f \fugaLowstaff \stemUp b,8 e4 \fugaUpstaff \stemDown f8 |
	% 20
	e4 d \once \override Stem #'transparent = ##t c8\noBeam
		b'\rest \stemUp \tieUp d,4 ~ \stemDown \tieDown |
	d16 c8 b16 ~ b a8 gis16 a4 b8\rest c16 d |
	e8 e e16 fis g a e8 fis ~ fis16 e8 dis16 |
	r e8 d!16 ~ d c8 b16 r c8 b16 ~ b a8 gis16 |
	a4 s8 cis d4 r8 \stemUp e16 d \stemDown |
	% 25
	cis4 r16 d8 cis16 d a b c \stemUp d8 c \stemDown |
	b4 ~ b16 b a gis a8[a'] a[gis] |
	a4 r16 a d b r a8 gis16 r e8 d16 |
	c8 b'\rest b16\rest c b a gis4 g16\rest a8 a16 |
	r b8 c16 r d e d c4 b8\rest a |
	% 30
	a4 e\rest d2\rest |
	s1 |
	s |
	c4\rest c8\rest \stemUp fis \stemDown
		\once \override Stem #'transparent = ##t e4.\noBeam d!8 |
	<cis e>1 \bar "|."
}

fugaII = \relative c {
	% 1
	\fugaLowstaff d1\rest |
	\stemDown \tieDown d2\rest d8\rest a' a a |
	e c' c c b a g fis |
	g fis16 e b'4 ~ b16 a b fis gis4 |
	% 5
	a8 d,\rest a' g! f!4 d8\rest d |
	e4 b8\rest e a, a16 b c d e fis |
	g!8 e16 fis g a b c dis,8 e16 fis b,8 cis16 dis |
	e4 d16\rest e fis g a8 fis b16 c! b a |
	gis8 e a e f c d b |
	% 10
	e d\rest d4\rest b2\rest |
	d\rest d8\rest a' a a |
	e c' c c b a g fis |
	e16 b' c d e f! e d c8 e,16 fis gis e fis gis |
	a8 b16 c d c b a gis a32 b c16 d e8 e, |
	% 15
	a a[a a] f d' d d |
	e,4 b8\rest e fis e dis b |
	e dis e d c4 b8\rest a |
	b4 d8\rest b' c! b a b16 c |
	d8 c b a gis4 a8 \tieUp d ~
	% 20
	\stemUp d16 c b a b4
	\fugaUpstaff \stemDown \tieDown c8 b16 a ~ a c b a |
	\fugaLowstaff \stemUp \tieUp gis8 fis e d c4 a'\rest |
	r1 |
	r |
	r8 a a a d, bes' bes \fugaUpstaff \stemDown bes |
	% 25
	\fugaLowstaff \stemUp a g f e d4 
	\fugaUpstaff \stemDown g16\rest g8 f16( |
	\fugaLowstaff \stemUp f) f e d c8 d e[c'] b[e16 d] |
	f, c' b a d4 c8 b a gis |
	a16 c d a d4 e8 b c d |
	d e e4 e s8 cis |
	% 30
	d4 s s2 |
	s2 b!4 s |
	b s \fugaUpstaff a' s |
	\fugaLowstaff a,4\rest s8 \fugaUpstaff \stemDown b c b16 a b4 |
	\fugaLowstaff a,1
}

fugaIII = \relative c'' {
	% 1
	\fugaUpstaff s1 |
	s |
	s |
	s |
	% 5
	\stemUp \tieUp
	d8\rest e e e a, f' f f |
	e d c b c c c c |
	b e e e fis4 r8 fis ~ |
	fis e16 dis e8 e ~ e16 e dis cis dis4 |
	r16 d! e d c!4 r16 c d c b4 |
	% 10
	r16 a b c d c d b c8 d16 e f e f d |
	gis,8 gis16 a b a b gis a4 b\rest |
	r1 |
	r2 r8 e e e |
	a, f' f f e d c8.^\prall b16 |
	% 15
	c b c d e f g e a gis a b a c b a |
	gis8 a16 b e,8 fis16 gis a8 b16 c fis,8 g16 a |
	g8. fis16 g a g fis e4 r16 g fis e |
	dis8 e16 fis b,8 cis16 dis e8 d c b |
	a b16 c d4 ~ d16 f e d c8 b16 a |
	% 20
	gis8 a a8.^\prall gis16 a8 s r4 |
	b2\rest b8\rest a a a |
	e c' c c b a g fis |
	g f! e d e d c b |
	c4 b'8\rest a ~ a g16 fis g4 ~ |
	% 25
	g16 e f! g a8 g f4 r |
	b2\rest b8\rest e e e |
	a, f' f f e d c b |
	a s b'4\rest f16\rest b, c d e8 fis |
	gis a b4 r16 b a gis a g f! e |
	% 30
	f a f d f a, e' g, a d a f d' f, c' e,
	f bes f d bes' d, a' c, gis' b gis e gis b, fis' a, |
	\stemNeutral gis e' b \fugaLowstaff gis
	\fugaUpstaff b \fugaLowstaff e, \fugaUpstaff gis \fugaLowstaff d
	\stemDown c e c a d f, c' e, |
	dis2 << { s4 e' } \\ e,2 >> |
	e'1
}

fugaIV = \relative c'' {
	% 1
	\fugaUpstaff s1 |
	s |
	s |
	s |
	% 5
	s |
	r2 r8 a a a |
	e c' c c b a g fis |
	g4 r8 g fis4 r8 fis |
	e4 r16 b' a gis a4 r16 a gis fis |
	% 10
	gis8 gis[gis gis] a a a a |
	gis r r4 s2 |
	s1 |
	s |
	s |
	% 15
	\fugaLowstaff \stemUp \tieUp e8\rest e e e a, f' f f |
	e d c b a4 b |
	b b ~ b16 b a gis a8 fis |
	b4 s s2 |
	s1 |
	% 20
	d,8\rest \stemDown \tieDown e e e a, f' f f |
	e d c b a4 g8\rest a16 b |
	c b a b c d e fis g fis g a b8 b, |
	e f! g g, c d e e, |
	a4 b8\rest a bes4 b8\rest g |
	% 25
	a2 d8 c! b! a |
	gis4 a8 b c c16 d e4 |
	f b,\rest b8\rest e e e |
	a, f' f f e d c c' |
	b a gis4 a d,8\rest a' |
	% 30
	d,4 d\rest d2\rest |
	d\rest d4 d\rest |
	<d e>4 s \fugaUpstaff \stemDown <a' e'>4 b'\rest |
	\stemUp \tieUp d16\rest b a gis a4 a ~ a8. gis16 |
	a1
}
