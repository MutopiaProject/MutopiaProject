violeI = \notes \relative c'' {
	\time 3/4
	\key c\major

	b2.\pp^\fermata ~
	b4 r^\fermata r
	r^"pizz." e,,\p e
	r e e
	r e e
	r e e 
% volta (1)
 \repeat volta 2 {
	r4 e e 
	r e e
	r e e

	r e a
	r a_"cresc." g
	r fis fis
	r a_"dim." g
	r fis fis
	b r a'
	gis\cr r g\rc
	fis\decr r f\rced
	e r dis
% 2
	e,8 dis\cr e fis g a\rc
	b\decr e b a\rced g fis
	e\cr fis g a b4^\accent\f\rc
 }

	\alternative {
	{ e^\accent r r } { e^\accent r r }
	}

	\repeat volta 2 {
	r4 d\p e
	r d\cr e\rc
	r d e
	r d\decr e\rced
	r8 f d c b r

	r4 r8 d b a 
	gis r r4 r8 b
	gis f e r r4
	r g' a
	r g\cr a\rc
	r g a
	r g\decr a\rced
	r8 bes g f e r
	r4 r8 g e d
% 3
	cis8 r r4 r8 e
	cis bes a r r4 
	r a\mp a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a

	r a\pp a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a
	r r r8 c8\upbow^"arco"
% 4
	\grace {f16( g} )f8 e f g a bes
	c8( f )c2
	r2.
	r4 r r8 e,_"cresc."
	\grace {a16( b} )a8 gis a b c d
	e8( a )e2
	r2.
	r4 r r8 b,\upbow\ff

	\grace {fis'16( g} )fis8 eis\cr fis g a b\rc
	c8\decr ( c,\rced )fis2
	r2.
	r4 r r8	e,_"dim."
	\grace {b'16^"poco rit."( c} )b8 ais b\cr c d e\rc
	f\decr( f, )b2\rced
	r4^"a tempo" e,\p e
	r e e
	r e e
% 5
	r e e
	r a^\accent_"cresc." g
	r fis fis
	r a_"dim." g
	r fis fis
	r d'^\accent_"cresc." c
	r b b
	r d_"dim." c
	r b b
	e r d'

	cis r\cr c\rc
	b\decr r\rced ais
	a r gis
	a,8 gis a\cr b c d\rc
	e\decr a e d c\rced b
	a\cr b c d\rc e4\f^\accent }
\alternative {
{a4^\accent r r } {a4^\accent r r r2. e2.\pp^\fermata ~ e4 r r }
}
}



violeII = \notes \relative c' {
	\time 3/4
	\key c\major

	e2.\pp^\fermata(
	)e4 r^\fermata r
	r e,^"pizz." e
	r e e
	r e e
	r e e 
% volta (1)
 \repeat volta 2 {
	r4 e e
	r e e
	r e e

	r e a
	r a_"cresc." g
	r fis fis
	r a_"dim." g
	r fis fis
	b r f'
	e\cr r dis\rc
	d\decr r \rced cis
	c r b
% 2
	e,8 dis e\cr fis g a\rc
	b\decr e b a\rced g fis
	e\cr fis g a\rc b4^\accent\f
 }
	
	\alternative {
	{ e^\accent r r } { e^\accent r r }
	}

	\repeat volta 2 {
	r4 gis\p d'
	r gis,\cr d'\rc
	r gis, d'
	r gis,\decr d'\rced
	r8 f d c b r

	r4 r8 d b a 
	gis r r4 r8 b
	gis f e r r4
	r c' g'
	r cis,\cr g'\rc
	r cis, g'
	r cis,\decr g'\rced
	r8 bes g f e r
	r4 r8 g e d
% 3
	cis8 r r4 r8 e
	cis bes a r r4 
	r a\mp a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a

	r a\pp a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a
	r a a
% 4
	r a a
	r a a
	r c_"cresc." c
	r c c
	r c_"pi\\`u cresc." c
	r c c
	r e\ff dis
	r e dis

	r e dis
	r e dis
	r a_"dim." gis
	r a gis
	r^"poco rit." a gis
	r a gis
	r^"a tempo" e\p e
	r e e
	r e e 
% 5
	r e e
	r a^\accent_"cresc." g
	r fis fis
	r a_"dim." g
	r fis fis
	r d'^\accent_"cresc." c
	r b b
	r d_"dim." c
	r b b
	e r bes'

	a r\cr gis\rc
	g\decr r\rced fis
	f r e
	a,8 gis\cr a b c d\rc
	e\decr a e d\rced c b
	a\cr b c d\rc e4^\accent\f }
\alternative {
{a4^\accent r r } {a4^\accent r r r2. a,2.\pp^\fermata ~ a4 r r }
}
}
