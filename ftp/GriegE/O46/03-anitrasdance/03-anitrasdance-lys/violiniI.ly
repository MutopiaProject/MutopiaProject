violinioneI = \notes \relative c''' {
	\time 3/4
	\key c\major

	e2.\pp^\fermata^"divisi" ~
	e4 r^\fermata r
	r2.
	r
	r
	r4 r e,,\p \bar "||" \break
% volta (1)
 \repeat volta 2 {
	\grace {a16( b} )a8-. gis-. a-. b-.( c-. )d-.
	e8( )a e4\tenuto( d16 e d )e
	c8( a' )c,4 b16^\upbow( c b c 

	)a2 r4 
	a8\tenuto_"cresc."\( ( c )a4 g16 a g \)a
	fis8\( ( )c' \)fis,2\tenuto
	f8^"dim."\( ( c' )f,4\tenuto e16 f e \)f  
	dis8( )b' dis,2 
	b'8-.\pp ais-. fis-. b-. a-. f-. 
	b-.\cr gis-. e-. b'-. g-. dis-.\rc 
	b'-.\decr fis-. d-. b'-. f-. des-.\rced 
	b'-. e,-. c-. b'-. dis,-. b-.
% 2
	\grace {e16( fis} )e4-. r r 
	r2. 
	e8\cr^"pizz." fis g a\rc b4^\accent\f }
\alternative {
{ e4^\accent r e,^"arco"\p} { e4^\accent r r }
}
 \repeat volta 2 {
	f'4.\p^"divisi"^"arco"\( ( )e8 e( ) \)d
	d4.\( ( )e8\cr e( ) \)f\rc 
	f2.\decr( 
	)e4\rced r r 
	r r r8 f8^\accent\downbow( 

	)d-. c-.( )b-. r r4
	r8 d-.^\downbow( )b-. a-.( )gis-. r
	r2.
	bes'4._"divisi"\( ( )a8 a( ) \)g
	g4.\cr\( ( )a8 a( ) \)bes\rc
	bes2.\decr(
	)a4\rced r r 
	r r r8 bes^\accent^\downbow( 
	)g-. f-.( )e-. r r4 
% 3
	r8 g-.^\accent\downbow( )e-. d-.( )cis-. r 
	r2. 
	r 
	r 
	r4 r a\mp
	\grace {d16( e} )d8-. cis-. d-. e-.( fis-. )g-.
	a\( ( d )a4 g16 a g \)a 
	fis8( d' )fis,4 e16( fis e fis
	)d2 r4

	r2.
	r 
	r4 r a\pp 
	\grace {d16( e} )d8-. cis-. d-. e-.( f-. )g-. 
	a\( ( d )a4 g16 a g \)a 
	f8( d' )f,4 e16( f e f 
	)d2 r4 
	r r r8 c\upbow 
	\grace {f16( g} )f8-. e-. f-. g-.( a-. )bes-. 
% 4
	c8( f )c2\tenuto
	r2.
	r4 r r8 e,_"cresc." 
	\grace {a16( b} )a8-. gis-. a-. b-.( c-. )d-. 
	e\( ( )a \)e2\tenuto 
	r2.
	r4 r r8 b,\ff 
	\grace {fis'16( g} )fis8 eis\cr fis g a b\rc

	c\decr \( ( )c, \)fis2\tenuto\rced
	r2. 
	r4 r r8 e,8^"dim." 
	\grace {b'16( c} )b8 ais b c d e 
	f^"poco rit."\( ( )f, \)b2\tenuto
	r4 r e4\p^\upbow^"divisi"
	\grace {a16^"a tempo"( b} )a8-. gis-. a-. b-.( c-. )d-.
	e( )a e4\tenuto( d16 e d )e
	c8( )e c4\upbow b16( c b c
% 5
	)a2 r4
	a8\downbow^\accent_"cresc." ( c a4\tenuto g16 a g )a 
	fis8\( ( )c' \)fis,2\tenuto
	f8^\accent_"dim." \( ( )c' f,4\tenuto( e16 f e ) \)f
	dis8\( ( )b' \)dis,2\tenuto
	d8^\accent_"cresc." \( ( )f d4\tenuto( c16 d c ) \)d
	b8\( ( )f' \)b,2\tenuto
	bes8^\accent_"dim." \( ( )f' bes,4\tenuto( a16 bes a ) \)bes
	gis8\( ( )e' \)gis,2\tenuto
	e'8-.\pp dis-. b-. e-. d-. bes-.

	e-. cis-. a-. e'-.\cr c-. gis-.\rc
	e'-.\decr b-. g-. e'-.\rced ais,-. fis-.
	e'-. a,-. f-. e'-. gis,-. e-.
	\grace {a16( b} )a4-. r r
	r2.
	a8\cr^"pizz." b c d\rc e4\f^\accent } 
\alternative {
{a4^\accent r r} {a4^\accent r r r2. a2.\pp^\fermata ~ a4 r r \bar "|."}
}
}

violinioneII = \notes \relative c''' {
	\time 3/4
	\key c\major

	gis2.
	gis4 r r
	r2.
	r
	r
	r4 r e, 
% volta (1)
\repeat volta 2 {
	\grace {a16 b} a8-. gis-. a-. b-. c-. d-.
	e8 a e4 d16 e d e
	c8 a' c,4 b16 c b c

	a2 r4
	a8 c a4 g16 a g a
	fis8 c' fis,2
	f8 c' f,4 e16 f e f 
	dis8 b' dis,2
	b'8 ais fis b a f
	b gis e b' g dis
	b' fis d b' f des
	b' e, c b' dis, b
% 2
	\grace {e16 fis} e4 r r
	r2.
	e8 fis g a b4 }
\alternative {
	{ e4 r e, } { e4 r r }
	}
\repeat volta 2 {
	d4. c8 c b
	b4. c8 c d
	d2. ~ 
	d4 r r 
	r r r8 f8

	d c b r r4
	r8 d b a gis r
	r2.
	g'4. f8 f e
	e4. f8 f g
	g2. 
	g4 r r 
	r r r8 bes8
	g f e r r4
% 3
	r8 g-. e-. d-. cis-. r
	r2.
	r
	r
	r4 r a
	\grace {d16 e} d8-. cis-. d-. e-. fis-. g-.
	a d a4 g16 a g a
	fis8 d' fis,4 e16 fis e fis
	d2 r4

	r2.
	r
	r4 r a
	\grace {d16 e} d8-. cis-. d-. e-. f-. g-.
	a d a4 g16 a g a
	f8 d' f,4 e16 f e f
	d2 r4
	r r r8 c
	\grace {f16 g} f8-. e-. f-. g-. a-. bes-.
% 4
	c8 f c2
	r2.
	r4 r r8 e,
	\grace {a16 b} a8-. gis-. a-. b-. c-. d-.
	e a e2
	r2.
	r4 r r8 b,
	\grace {fis'16 g} fis8 eis fis g a b

	c c, fis2
	r2.
	r4 r r8 e,8
	\grace {b'16 c} b8 ais b c d e
	f f, b2
	r4 r e,4
	\grace {a16 b} a8-. gis-. a-. b-. c-. d-.
	e a e4 d16 e d e
	c8 e c4 b16 c b c
% 5
	a2 r4
	a'8 c a4 g16 a g a
	fis8 c' fis,2
	f8 c' f,4 e16 f e f
	dis8 b' dis,2
	d8 f d4 c16 d c d
	b8 f' b,2
	bes8 f' bes,4 a16 bes a bes
	gis8 e' gis,2
	e'8-. dis-. b-. e-. d-. bes-.

	e-. cis-. a-. e'-. c-. gis-.
	e'-. b-. g-. e'-. ais,-. fis-.
	e'-. a,-. f-. e'-. gis,-. e-.
	\grace {a16 b} a4-. r r
	r2.
	a8^"pizz." b c d e4\f }
\alternative {
{a4 r r} {a4 r r r2. c,2.^"divisi" ~ c4 r r }
}
}

