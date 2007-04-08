\version "1.5.63"

violinioneI = \notes \relative c' {
	\time 4/4
	\key d \major
	
	fis4\p ( ) b cis2
	fis,4 ( ) b cis2
	d4 ( ) cis b ( cis8 ) d
	e4 ( d ) cis4. r8
	fis,4\pp^\upbow ( b ) cis2
	fis,4 ( b ) cis2

	e4 ( d cis d8 ) e
	ais,4 ( ) b2 r4
	cis4\mf\cr^\downbow ( ) fis gis2\rc
	cis,4\cr ( ) fis gis2\rc
	a4 ( ) gis fis ( gis8 ) a
	b4 ( ) a gis4. r8
	cis,4\p\cr ( ) fis gis2\rc

	cis,4\p\cr ( ) fis gis2\rc
	b4\p\cr ( ) a gis ( a8 ) b
	eis,4\rc fis2\p\cr ~ fis8\fz\rc r8
\stemDown
  \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
	fis4\f^"divisi" (  b ) cis2 
\property Voice.TextScript \revert #'extra-offset
	fis,4 ( b )  cis2 
	d4 ( cis ) b ( cis8 ) d 
	e4 ( d ) cis4. r8
	fis,4\ff b cis2^\accent 

	fis,4 b cis2^\accent  
	e4^\accent d^\accent cis^\accent d8^\accent e^\accent  
	ais,4^\accent b2^\accent r4
	b\p^\upbow ( bes ) a2
	b4 ( bes ) a2
\stemBoth
	b4\pp\cr ( bes ) a2\rc ~
	a4\decr^\downBow ( g ) fis4.\rced r8

	e4\p^\upBow ( ees ) d2
	e4 ( ees ) d2
	e4\pp\cr ( ees ) d2\rc ~
	d4\decr^\downBow ( cis ) b4.\rced r8
	b4_#'( bold (italic "pi\\`u"))^\upBow ( bes\p ) a2
	b4 ( bes ) a2
	b4\pp ( bes\cr ) a2\rc ~
	a4\decr^\downBow ( g ) fis4.\rced r8

	e4^\upBow ( ees ) d2
	e4 ( ees ) d2
	e4 ( ees\cr ) d2\rc ~
	d4\decr^\downBow ( cis ) b4.\rced r8
	d4\decr^\upBow ( cis ) b4.\rced r8
\property Voice.DynamicText \override #'extra-offset = #'(0 . -2.5)
	d2_"decr." ( cis 
\property Voice.DynamicText \revert #'extra-offset
	b\pp ) b8 r r4
	b2^\upBow ~ b8 r r4
\property Voice.textNonEmpty = ##t
\fatText
	b1^\fermata_"morendo"
	\bar "|."
}

violinioneII = \notes \relative c' {
	\time 4/4
	\key d \major
	
	fis4 b cis2
	fis,4 b cis2
	d4 cis b cis8 d
	e4 d cis4. r8
	fis,4 b cis2
	fis,4 b cis2

	e4 d cis d8 e
	ais,4 b2 r4
	cis4 fis gis2
	cis,4 fis gis2
	a4 gis fis gis8 a
	b4 a gis4. r8
	cis,4 fis gis2

	cis,4 fis gis2
	b4 a gis a8 b
	eis,4 fis2 fis8 r8
\stemDown
	fis,4 b cis2 
	fis,4 b cis2 
	d4 cis b cis8 d 
	e4 d cis4. r8
	fis,4 b cis2

	fis,4 b cis2 
	e4 d cis d8 e 
	ais,4 b2 r4
	b' bes a2
	b4 bes a2
\stemBoth
	b4 bes a2 
	a4 g fis4. r8

	e4 ees d2
	e4 ees d2
	e4 ees d2 
	d4 cis b4. r8
	b4 bes a2
	b4 bes a2
	b4 bes a2 
	a4 g fis4. r8

	e4 ees d2
	e4 ees d2
	e4 ees d2 
	d4 cis b4. r8
	d4 cis b4. r8
	d2 cis b b8 r r4
	b2 b8 r r4
	b1

}