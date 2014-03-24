\version "2.18.0"

violinitwoI =   \relative c' {
	\time 4/4
	\key d \major

	fis2\p fis
	fis fis
	d4 (  cis) b ( cis8  d)
	e4 ( d  cis4.) r8
	fis2\pp\upbow (  eis)
	fis (  eis)

	e4 ( d cis d8  e)
	ais,4 (  b2) r4
	cis'2\mf\downbow\cr cis\!
	cis\cr cis\!
	a4 (  gis) fis ( gis8  a)
	b4 (  a) gis4. r8
	cis2\p\cr bis\!

	cis2\p\cr bis\!
	b4\p\cr (  a) gis ( a8  b)\!
	eis,4 fis2\p\cr ~ fis8\fz\! r8
    \barNumberCheck #17
	fis'2\f^"divisi" fis
	fis fis
    \stemDown
	d4\cr ( cis  b) ( cis8  d)\!
	e4 ( d  cis4.)  r8
	fis4\ff fis eis2^\accent

	fis4 fis eis2^\accent
	e4^\accent d^\accent cis^\accent d8^\accent e^\accent
	ais,4^\accent b2^\accent r4
    \stemNeutral
	eis2\p\upbow (  fis)
	eis (  fis)
	eis\pp\cr (  fis)\!
	eis\downbow\cr (  cis4.)\! r8

	ais2\p\upbow (  b)
	ais (  b)
	ais\pp\cr (  b)\!
	ais\decr (  fis4.)\! r8
	eis2-\tweak #'self-alignment-X #0 _\markup{\italic "più"}\upbow  (  fis)\p
	eis (  fis)
	eis\pp\cr (  fis)\!
	eis\decr (  cis4.)\! r8

	ais2\upbow (  b)
	ais (  b)
	ais\cr (  b)\!
	ais\decr\downbow (  b4.)\! r8
	ais2\decr\upbow (  b4.)\! r8
	ais1_"decr." (
	 b2)\pp ~ b8 r r4
	b2\upbow ~ b8 r r4
	b1^\fermata_"morendo"

}

violinitwoII =   \relative c' {
	\time 4/4
	\key d \major

	fis2\p fis
	fis fis
	d4 (  cis) b ( cis8  d)
	e4 ( d  cis4.) r8
	fis2\pp\upbow (  eis)
	fis (  eis)

	e4 ( d cis d8  e)
	ais,4 (  b2) r4
	cis'2\mf\downbow\cr cis\!
	cis\cr cis\!
	a4 (  gis) fis ( gis8  a)
	b4 (  a) gis4. r8
	cis2\p\cr bis\!

	cis2\p\cr bis\!
	b4\p\cr (  a) gis ( a8  b)\!
	eis,4 fis2\p\cr ~ fis8\fz\! r8
    \barNumberCheck #17
	fis2 fis
	fis fis
    \stemDown
	d4\cr( cis b)( cis8 d)\!
	e4( d cis4.) r8
	fis4\ff fis eis2

	fis4 fis eis2
	e4 d cis d8 e
	ais,4 b2 r4
	eis'2\p\upbow( fis)
	eis( fis)
	eis\pp\cr( fis)\!
	eis\downbow\cr( cis4.)\! r8

    \stemNeutral
	ais2\p\upbow( b)
	ais( b)
	ais\pp\cr( b)\!
	ais\decr( fis4.)\! r8
	eis2-\tweak #'self-alignment-X #0 _\markup{\italic "più"}\upbow  (  fis)\p
	eis (  fis)
	eis\pp\cr (  fis)\!
	eis\decr (  cis4.)\! r8

	ais2\upbow (  b)
	ais (  b)
	ais\cr (  b)\!
	ais\decr\downbow (  b4.)\! r8
	ais2\decr\upbow (  b4.)\! r8
	ais1_"decr." (
	 b2)\pp ~ b8 r r4
	b2\upbow ~ b8 r r4
	b1^\fermata_"morendo"
}