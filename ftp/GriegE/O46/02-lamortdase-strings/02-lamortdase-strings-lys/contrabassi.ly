\version "2.18.0"

contrabassi =   \relative c {
	\time 4/4
	\key d \major

	b4\p (  d) fis2
	b,4 (  d) fis2
	b,4 ( cis8  d) e4 (  d)
	cis ( d8 e  fis4.) r8
	b,4\pp^\upbow ( d  g2)
	b,4 ( d  g2)

	cis,4 ( d8 e fis4  e)
	d8 cis b2 r4
	fis'4\mf^\downbow\cr (  a) cis2\!
	fis,4\cr (  a) cis2\!
	fis,4 ( gis8  a) b4 (  a)
	gis4 ( a8  b) cis4. r8
	fis,4\p\cr (  a) d2\!

	fis,4\p\cr (  a) d2\!
	gis,4\p\cr ( a8  b) cis4 (  b)\!
	a8 (  gis) fis2\p\cr ~ fis8\fz\! r8
	b,4\f (  d) fis2
	b,4 (  d) fis2
	b,4\cr ( cis8  d) e4 (  d)\!
	cis4 ( d8  e) fis4. r8
	b,4\ff d g2^\accent

	b,4 d g2^\accent
	cis,4^\accent d8^\accent (  e)^\accent fis4^\accent e^\accent
	d8^\accent (  cis)^\accent b2^\accent r4
	r1 
	r 
	r 
	r
	
	r 
	r 
	r 
	r
	g'2\pp^\upbow (  d)
	g (  d)_ \markup{\italic "più"}
	g\pp\cr (  d)\!
	cis\decr (  fis4.)\! r8

	c2 (  g)
	c (  g)
	c\cr (  g)\!
	fis\decr (  b4.)\! r8
	fis2\decr (  b4.)\! r8
\override DynamicText.extra-offset = #'(0 . -2.5)
	fis1_"decr." (
	b2\ppp) ~ b8 r r4
\revert DynamicText.extra-offset
	b2 ~ b8 r r4
	b1^\fermata_"morendo"
}