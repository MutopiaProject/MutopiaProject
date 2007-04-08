\version "1.5.63"

contrabassi =  \notes \relative c {
	\time 4/4
	\key d \major

	b4\p ( ) d fis2
	b,4 ( ) d fis2
	b,4 ( cis8 ) d e4 ( ) d
	cis ( d8 e ) fis4. r8
	b,4\pp^\upbow ( d ) g2
	b,4 ( d ) g2

	cis,4 ( d8 e fis4 ) e
	d8 cis b2 r4
	fis'4\mf^\downbow\cr ( ) a cis2\rc
	fis,4\cr ( ) a cis2\rc
	fis,4 ( gis8 ) a b4 ( ) a
	gis4 ( a8 ) b cis4. r8
	fis,4\p\cr ( ) a d2\rc

	fis,4\p\cr ( ) a d2\rc
	gis,4\p\cr ( a8 ) b cis4 ( ) b\rc
	a8 ( ) gis fis2\p\cr ~ fis8\fz\rc r8
	b,4\f ( ) d fis2
	b,4 ( ) d fis2
	b,4\cr ( cis8 ) d e4 ( ) d\rc
	cis4 ( d8 ) e fis4. r8
	b,4\ff d g2^\accent

	b,4 d g2^\accent
	cis,4^\accent d8^\accent ( ) e^\accent fis4^\accent e^\accent
	d8^\accent ( ) cis^\accent b2^\accent r4
	r1 
	r 
	r 
	r
	
	r 
	r 
	r 
	r
	g'2\pp^\upBow ( ) d
	g ( ) d_#'( bold (italic "    pi\\`u"))
	g\pp\cr ( ) d\rc
	cis\decr ( ) fis4.\rced r8

	c2 ( ) g
	c ( ) g
	c\cr ( ) g\rc
	fis\decr ( ) b4.\rced r8
	fis2\decr ( ) b4.\rced r8
\property Voice.DynamicText \override #'extra-offset = #'(0 . -2.5)
	fis1_"decr." ( )
	b2\ppp ~ b8 r r4
\property Voice.DynamicText \revert #'extra-offset
	b2 ~ b8 r r4
	b1^\fermata_"morendo"
}