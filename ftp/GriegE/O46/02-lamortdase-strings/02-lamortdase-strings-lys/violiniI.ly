\version "2.18.0"

violinioneI =  \relative c' {
	\time 4/4
	\key d \major

	fis4\p (  b) cis2
	fis,4 (  b) cis2
	d4 (  cis) b ( cis8  d)
	e4 ( d  cis4.) r8
	fis,4\pp^\upbow ( b  cis2)
	fis,4 ( b  cis2)

	e4 ( d cis d8  e)
	ais,4 (  b2) r4
	cis4\mf\cr^\downbow (  fis) gis2\!
	cis,4\cr (  fis) gis2\!
	a4 (  gis) fis ( gis8  a)
	b4 (  a) gis4. r8
	cis,4\p\cr (  fis) gis2\!

	cis,4\p\cr (  fis) gis2\!
	b4\p\cr (  a) gis ( a8  b)
	eis,4\! fis2\p\cr ~ fis8\fz\! r8
    \barNumberCheck #17
	fis4\f^"divisi" (  b  cis2)
	fis,4 ( b  cis2)
	d4 ( cis  b) ( cis8  d)
	e4 ( d  cis4.) r8
	fis,4\ff b cis2^\accent

	fis,4 b cis2^\accent
	e4^\accent d^\accent cis^\accent d8^\accent e^\accent
	ais,4^\accent b2^\accent r4
	b\p^\upbow ( bes  a2)
	b4 ( bes  a2)
    \barNumberCheck #27
	b4\pp\cr ( bes  a2)\! ~
	a4\decr^\downbow ( g  fis4.)\! r8

	e4\p^\upbow ( ees  d2)
	e4 ( ees  d2)
	e4\pp\cr ( ees  d2)\! ~
	d4\decr^\downbow ( cis  b4.)\! r8
    \once\textLengthOn
	b4_\markup{\italic "più"}^\upbow ( bes\p  a2)
	b4 ( bes  a2)
	b4\pp ( bes\cr  a2)\! ~
	a4\decr^\downbow ( g  fis4.)\! r8

	e4^\upbow ( ees  d2)
	e4 ( ees  d2)
	e4 ( ees\cr  d2)\! ~
	d4\decr^\downbow ( cis  b4.)\! r8
	d4\decr^\upbow ( cis  b4.)\! r8
	d2_"decr." ( cis
	b\pp  b8) r r4
	b2^\upbow ~ b8 r r4
	b1^\fermata_"morendo"
	\bar "|."
}

violinioneII =  \relative c' {
	\time 4/4
	\key d \major

	fis4\p( b) cis2
	fis,4( b) cis2
	d4( cis) b( cis8 d)
	e4( d cis4.) r8
	fis,4\pp\upbow (b cis2)
	fis,4( b cis2)

	e4( d cis d8 e)
	ais,4( b2) r4
	cis4\mf\cr^\downbow( fis) gis2\!
	cis,4\cr( fis) gis2\!
	a4( gis) fis( gis8 a)
	b4( a) gis4. r8
	cis,4\p\cr( fis) gis2\!

	cis,4\p\cr( fis) gis2\!
	b4\p\cr( a) gis( a8 b)
	eis,4\! fis2\p\cr ~ fis8\fz\! r8
    \barNumberCheck #17
	fis,4\f( b cis2)
	fis,4( b cis2)
	d4( cis b)( cis8 d)
	e4( d cis4.) r8
	fis,4\ff b cis2

	fis,4 b cis2
	e4 d cis d8 e
	ais,4 b2 r4
	b'(\upbow bes a2)
	b4( bes a2)
    \barNumberCheck #27
	b4(\pp\cr bes a2)\! ~
	a4(\decr^\downbow g fis4.)\! r8

	e4\p( ees d2)
	e4( ees d2)
	e4\pp\cr( ees d2~)\!
	d4\decr( cis b4.)\! r8
    \once\textLengthOn
	b4(_\markup{\italic "più"} bes\p a2)
	b4( bes a2)
	b4\pp( bes\cr a2~)\!
	a4\decr( g fis4.)\! r8

	e4( ees d2)
	e4( ees d2)
	e4( ees\cr d2~)\!
	d4\decr( cis b4.)\! r8
	d4\decr( cis b4.)\! r8
	d2(_"decr." cis b\pp b8) r r4
	b2~ b8 r r4
	b1^\fermata_"morendo"
}