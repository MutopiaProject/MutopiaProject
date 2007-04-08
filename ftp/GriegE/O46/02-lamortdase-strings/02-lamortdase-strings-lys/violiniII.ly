\version "1.5.63"

violinitwoI =  \notes \relative c' {
	\time 4/4
	\key d \major

	fis2\p fis
	fis fis
	d4 ( ) cis b ( cis8 ) d
	e4 ( d ) cis4. r8
	fis2\pp^\upbow ( ) eis
	fis ( ) eis

	e4 ( d cis d8 ) e
	ais,4 ( ) b2 r4
	cis'2\mf^\downbow\cr cis\rc
	cis\cr cis\rc
	a4 ( ) gis fis ( gis8 ) a
	b4 ( ) a gis4. r8
	cis2\p\cr bis\rc

	cis2\p\cr bis\rc
	b4\p\cr ( ) a gis ( a8 ) b\rc
	eis,4 fis2\p\cr ~ fis8\fz\rc r8
\stemDown
  \property Voice.TextScript \override #'extra-offset = #'(0 . 1.0)
	fis'2\f^"divisi" fis
\property Voice.TextScript \revert #'extra-offset
	fis fis 
	d4\cr ( cis ) b ( cis8 ) d\rc 
	e4 ( d ) cis4.  r8
	fis4\ff fis eis2^\accent

	fis4 fis eis2^\accent 
	e4^\accent d^\accent cis^\accent d8^\accent e^\accent 
	ais,4^\accent b2^\accent r4
\stemBoth
	eis2\p^\upBow ( ) fis
	eis ( ) fis
  \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
	eis\pp\cr ( ) fis\rc
  \property Voice.TextScript \revert #'extra-offset 
	eis^\downBow\cr ( ) cis4.\rc r8
	ais2\p^\upBow ( ) b
	ais ( ) b
	ais\pp\cr ( ) b\rc
	ais\decr ( ) fis4.\rced r8
  \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
\property Voice.DynamicText \override #'extra-offset = #'(0 . -2.5)
	eis2_#'( bold (italic "pi\\`u"))^\upBow  ( ) fis\p
\property Voice.TextScript \revert #'extra-offset
\property Voice.DynamicText \revert #'extra-offset
	eis ( ) fis
	eis\pp\cr ( ) fis\rc
	eis\decr ( ) cis4.\rced r8

	ais2^\upBow ( ) b
	ais ( ) b
	ais\cr ( ) b\rc
	ais\decr^\downBow ( ) b4.\rced r8
	ais2\decr^\upBow ( ) b4.\rced r8
\property Voice.DynamicText \override #'extra-offset = #'(0 . -2.5)
	ais1_"decr." ( 
\property Voice.DynamicText \revert #'extra-offset 
	) b2\pp ~ b8 r r4 
	b2^\upBow ~ b8 r r4
	b1^\fermata_"morendo"
	
}

violinitwoII =  \notes \relative c' {
	\time 4/4
	\key d \major

	fis2 fis
	fis fis
	d4 cis b cis8 d
	e4 d cis4. r8
	fis2 eis
	fis eis

	e4 d cis d8 e
	ais,4 b2 r4
	cis'2 cis
	cis cis
	a4 gis fis gis8 a
	b4 a gis4. r8
	cis2 bis

	cis2 bis
	b4 a gis a8 b
	eis,4 fis2 fis8 r8
\stemDown
	fis2 fis 
	fis fis 
	d4 cis b cis8 d
	e4 d cis4. r8
	fis4 fis eis2

	fis4 fis eis2 
	e4 d cis d8 e 
	ais,4 b2 r4
\stemBoth
	eis'2 fis
	eis fis
	eis fis
	eis cis4. r8

	ais2 b
	ais b
	ais b
	ais fis4. r8
	eis2 fis
	eis fis
	eis fis
	eis cis4. r8

	ais2 b
	ais b
	ais b
	ais b4. r8
	ais2 b4. r8
	ais1 
	b2 b8 r r4
	b2 b8 r r4
	b1
	
}