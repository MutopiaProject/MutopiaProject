\version "1.5.63"

violeI =  \notes \relative c' {
	\time 4/4
	\key d \major

	b2\p ais
	b ais
	b b
	b ( ) ais4. r8
	b2\pp^\upbow ~ b
	b ~ b

	b2 ( ais4 b8 ) cis
	fis4 ~ fis2 r4
	fis2\mf^\downbow\cr eis\rc
	fis\cr eis\rc
	fis fis
	fis eis4. r8
	fis2\p\cr fis\rc

	fis\p\cr fis\rc
	fis\p\cr eis4 ( fis8 ) gis\rc
	cis4 cis2\p\cr ~ cis8\fz\rc r8
\stemDown
	b2\f^"divisi" ais 
	b ais 
	b\cr b\rc 
	b ais4. r8 
	b4\ff b b2^\accent 

	b4 b b2^\accent 
	b4^\accent b^\accent ais^\accent b8^\accent cis^\accent 
	fis4^\accent fis2^\accent r4
\stemBoth
	b,4\p ( cis ) d2
	b4 ( cis ) d2
	b4\pp\cr ( cis d cis8 ) c\rc
	b2\decr ( ) ais4.\rced r8

	e4\p ( fis ) g2
	e4 ( fis ) g2
	e4\pp ( fis\cr g fis8 ) f\rc
	e2\decr ( ) d4.\rced r8
  \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
	b4_#'( bold (italic "pi\\`u")) ( cis\p ) d2
\property Voice.TextScript \revert #'extra-offset
	b4 ( cis ) d2
	b4\pp\cr ( cis d cis8 ) c\rc
	b2\decr ( ) ais4.\rced r8

	e4 ( fis ) g2
	e4 ( fis ) g2
	e4 ( fis\cr g fis8 ) f\rc
	e2\decr ( ) d4.\rced r8
	e2\decr ( ) d4.\rced r8
\property Voice.DynamicText \override #'extra-offset = #'(0 . -2.5)
	e1_"decr." ( )
	d2\pp ~ d8 r r4
\property Voice.DynamicText \revert #'extra-offset
	d2 ~ d8 r r4
	d1^\fermata_"morendo"
}

violeII =  \notes \relative c' {
	\time 4/4
	\key d \major

	b2 ais
	b ais
	b b
	b ais4. r8
	b2 b
	b b

	b2 ais4 b8 cis
	fis4  fis2 r4
	fis2 eis
	fis eis
	fis fis
	fis eis4. r8
	fis2 fis

	fis fis
	fis eis4 fis8 gis
	cis4 cis2 cis8 r8
\stemDown
	b,2 ais 
	b ais 
	b b 
	b ais4. r8 
	b4 b b2 

	b4 b b2 
	b4 b ais b8 cis 
	fis4 fis2 r4
\stemBoth
	b4 cis d2
	b4 cis d2
	b4 cis d cis8 c
	b2 ais4. r8

	e4 fis g2
	e4 fis g2
	e4 fis g fis8 f
	e2 d4. r8
	b4 cis d2
	b4 cis d2
	b4 cis d cis8 c
	b2 ais4. r8

	e4 fis g2
	e4 fis g2
	e4 fis g fis8 f
	e2 d4. r8
	e2 d4. r8
	e1 
	d2 d8 r r4
	d2 d8 r r4
	d1
}