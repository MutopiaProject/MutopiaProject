\version "2.18.0"

violoncelliI = \relative c {
	\time 4/4
	\key d \major

	d4\p (  fis) cis2
	d4 (  fis) cis2
	d4 ( e8  fis) g4 (  fis)
	e ( fis8 gis  cis,4.) r8
	d4\pp^\upbow ( fis  cis2)
	d4 (  fis) cis2

	e4 ( fis8 gis ais4 gis8  g)
	fis ( e  d2) r4
	a'4\mf^\downbow\cr (  cis) gis2\!
	a4\cr (  cis) gis2\!
	a4 ( b8  cis) d4 (  cis)
	b4 ( cis8  dis) gis,4. r8
	a4\p\cr (  cis) gis2\!

	a4\p\cr (  cis) gis2\!
	b4\p\cr ( cis8  dis) eis4 ( dis8  d)\!
	cis (  b) a2\p\cr ~ a8\fz\! r8
    \barNumberCheck #17
%    \override NoteColumn.ignore-collision = ##t
	d4\f^"divisi a 3" (  fis) cis2
	d4 (  fis) cis2
	d4_\cr ( e8  fis) g4 (  fis)\!
	e4( fis8  gis8) cis,4. r8
	d4\ff fis cis2^\accent

	d4 fis cis2^\accent
	e4^\accent fis8^\accent gis^\accent ais4^\accent gis8^\accent g^\accent
	fis8^\accent e^\accent d2^\accent r4
%    \revert NoteColumn.ignore-collision
    \barNumberCheck #25
	g2\p^\upbow (  d)
	g (  d)
	g\pp\cr (  b,)\!
	cis2\decr (  fis4.)\! r8

	c2\p^\upbow (  g)
	c (  g)
	c\pp\cr (  g)\!
	fis\decr (  b4.)\! r8
	g2_ \markup{\italic "più"}^\upbow (  d)\p
	g (  d)
	g\pp\cr (  d)\!
	cis\decr (  fis4.)\! r8

	c2^\upbow (  g)
	c (  g)
	c (  g)
	fis\cr ~ fis4.\! r8
	fis2\decr ~ fis4.\! r8
	fis1_"decr." ~
	fis2\pp ~ fis8 r r4
	fis2^\upbow ~ fis8 r r4
	fis1^\fermata_"morendo"
}

violoncelliII = \relative c {
	\time 4/4
	\key d \major

	d4\p (  fis) cis2
	d4 (  fis) cis2
	d4 ( e8  fis) g4 (  fis)
	e ( fis8 gis  cis,4.) r8
	d4\pp^\upbow ( fis  cis2)
	d4 (  fis) cis2

	e4 ( fis8 gis ais4 gis8  g)
	fis ( e  d2) r4
	a'4\mf^\downbow\cr (  cis) gis2\!
	a4\cr (  cis) gis2\!
	a4 ( b8  cis) d4 (  cis)
	b4 ( cis8  dis) gis,4. r8
	a4\p\cr (  cis) gis2\!

	a4\p\cr (  cis) gis2\!
	b4\p\cr ( cis8  dis) eis4 ( dis8  d)\!
	cis (  b) a2\p\cr ~ a8\fz\! r8
    \barNumberCheck #17
%\stemDown
	d,4\f( fis) fis2
	d4( fis) fis2
	<d b>4 <cis e>8 <fis d> <g e>4 <fis d>
	<e cis>4 <d fis>8 <e gis>8 <fis cis>4. r8
	d4\ff fis g2

	d4 fis g2
	e4 <d fis>8 <e gis> ais4 gis8 g
	<d fis>8 <cis e> d2 s4
%\stemNeutral
    \barNumberCheck #25
	g'2\p^\upbow (  d)
	g (  d)
	g\pp\cr (  b,)\!
	cis2\decr (  fis4.)\! r8

	c2\p^\upbow (  g)
	c (  g)
	c\pp\cr (  g)\!
	fis\decr (  b4.)\! r8
	g2_ \markup{\italic "più"}^\upbow (  d)\p
	g (  d)
	g\pp\cr (  d)\!
	cis\decr (  fis4.)\! r8

	c2^\upbow (  g)
	c (  g)
	c (  g)
	fis\cr ~ fis4.\! r8
	fis2\decr ~ fis4.\! r8
	fis1_"decr." ~
	fis2\pp ~ fis8 r r4
	fis2^\upbow ~ fis8 r r4
	fis1^\fermata_"morendo"
}

violoncelliIII =   \relative c {
	\time 4/4
	\key d \major

	s1*16
    \barNumberCheck #17
\stemDown
	b4 d cis2
	b4 d cis2
	s1
	s1
	b4 d cis2

	b4 d cis2
	cis4 s8 s fis4 \shiftOn e4 \shiftOff
	s8 s b2 r4
\stemNeutral
    \barNumberCheck #25
	s1*20
}