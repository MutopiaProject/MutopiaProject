\version "2.18.0"

violeI =   \relative c' {
	\time 4/4
	\key d \major
    \clef "alto"
	b2\p ais
	b ais
	b b
	b (  ais4.) r8
	b2\pp\upbow ~ b
	b ~ b

	b2 ( ais4 b8  cis)
	fis4 ~ fis2 r4
	fis2\mf\downbow\cr eis\!
	fis\cr eis\!
	fis fis
	fis eis4. r8
	fis2\p\cr fis\!

	fis\p\cr fis\!
	fis\p\cr eis4 ( fis8  gis)\!
	cis4 cis2\p\cr ~ cis8\fz\! r8
\stemDown
	b2\f ais 
	b ais 
	b\cr b\! 
	b ais4. r8 
	b4\ff b b2^\accent 

	b4 b b2^\accent 
	b4^\accent b^\accent ais^\accent b8^\accent cis^\accent 
	fis4^\accent fis2^\accent r4
\stemNeutral
	b,4\p ( cis  d2)
	b4 ( cis  d2)
	b4\pp\cr ( cis d cis8  c)\!
	b2\decr (  ais4.)\! r8

	e4\p ( fis  g2)
	e4 ( fis  g2)
	e4\pp ( fis\cr g fis8  f)\!
	e2\decr (  d4.)\! r8
	b4_ \markup{\italic "più"} ( cis\p  d2)
	b4 ( cis  d2)
	b4\pp\cr ( cis d cis8  c)\!
	b2\decr (  ais4.)\! r8

	e4 ( fis  g2)
	e4 ( fis  g2)
	e4 ( fis\cr g fis8  f)\!
	e2\decr (  d4.)\! r8
	e2\decr (  d4.)\! r8
	e1_"decr." (
	d2\pp) ~ d8 r r4
	d2 ~ d8 r r4
	d1^\fermata_"morendo"
}

violeII =   \relative c' {
	\time 4/4
	\key d \major

	b2\p ais
	b ais
	b b
	b (  ais4.) r8
	b2\pp\upbow ~ b
	b ~ b

	b2 ( ais4 b8  cis)
	fis4 ~ fis2 r4
	fis2\mf\downbow\cr eis\!
	fis\cr eis\!
	fis fis
	fis eis4. r8
	fis2\p\cr fis\!

	fis\p\cr fis\!
	fis\p\cr eis4 ( fis8  gis)\!
	cis4 cis2\p\cr ~ cis8\fz\! r8
\stemDown
	b,2\f^"divisi" ais 
	b ais 
	b\cr b\!
	b ais4. r8 
	b4\ff b b2 

	b4 b b2 
	b4 b ais b8 cis 
	fis4 fis2 r4
\stemNeutral
	b4\p ( cis  d2)
	b4 ( cis  d2)
	b4\pp\cr ( cis d cis8  c)\!
	b2\decr (  ais4.)\! r8

	e4\p ( fis  g2)
	e4 ( fis  g2)
	e4\pp ( fis\cr g fis8  f)\!
	e2\decr (  d4.)\! r8
	b4-\tweak #'self-alignment-X #0 _\markup{\italic "più"} ( cis\p  d2)
	b4 ( cis  d2)
	b4\pp\cr ( cis d cis8  c)\!
	b2\decr (  ais4.)\! r8

	e4 ( fis  g2)
	e4 ( fis  g2)
	e4 ( fis\cr g fis8  f)\!
	e2\decr (  d4.)\! r8
	e2\decr (  d4.)\! r8
	e1_"decr." (
	d2\pp) ~ d8 r r4
	d2 ~ d8 r r4
	d1^\fermata_"morendo"
}