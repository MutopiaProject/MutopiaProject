\version "1.5.63"

violoncelliI =  \notes \relative c {
	\time 4/4
	\key d \major

	d4\p ( ) fis cis2
	d4 ( ) fis cis2
	d4 ( e8 ) fis g4 ( ) fis
	e ( fis8 gis ) cis,4. r8
	d4\pp^\upbow ( fis ) cis2
	d4 ( ) fis cis2

	e4 ( fis8 gis ais4 gis8 ) g
	fis ( e ) d2 r4
	a'4\mf^\downbow\cr ( ) cis gis2\rc
	a4\cr ( ) cis gis2\rc
	a4 ( b8 ) cis d4 ( ) cis
	b4 ( cis8 ) dis gis,4. r8
	a4\p\cr ( ) cis gis2\rc

	a4\p\cr ( ) cis gis2\rc
	b4\p\cr ( cis8 ) dis eis4 ( dis8 ) d\rc
	cis ( ) b a2\p\cr ~ a8\fz\rc r8
\stemDown
  \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
	d4\f^"divisi a 3" ( ) fis cis2
  \property Voice.TextScript \revert #'extra-offset
	d4 ( ) fis cis2 
	d4\cr ( e8 ) fis g4 ( ) fis\rc
	e4 ( fis8 ) gis8 cis,4. r8
	d4\ff fis cis2^\accent 

	d4 fis cis2^\accent 
	e4^\accent fis8^\accent gis^\accent ais4^\accent gis8^\accent g^\accent 
	fis8^\accent e^\accent d2^\accent r4
\stemBoth
	g2\p^\upBow ( ) d
	g ( ) d
	g\pp\cr ( ) b,\rc
	cis2\decr ( ) fis4.\rced r8

	c2\p^\upBow ( ) g
	c ( ) g
	c\pp\cr ( ) g\rc
	fis\decr ( ) b4.\rced r8
  \property Voice.TextScript \override #'extra-offset = #'(0 . -2.0)
	g2_#'( bold (italic "pi\\`u"))^\upBow ( ) d\p
\property Voice.TextScript \revert #'extra-offset
	g ( ) d
	g\pp\cr ( ) d\rc
	cis\decr ( ) fis4.\rced r8

	c2^\upBow ( ) g
	c ( ) g
	c ( ) g
	fis\cr ~ fis4.\rc r8
	fis2\decr ~ fis4.\rced r8
	fis1_"decr." ~
	fis2\pp ~ fis8 r r4
	fis2^\upBow ~ fis8 r r4
	fis1^\fermata_"morendo"


}

violoncelliII =  \notes \relative c {
	\time 4/4
	\key d \major

	d4 fis cis2
	d4 fis cis2
	d4 e8 fis g4 fis
	e fis8 gis cis,4. r8
	d4 fis cis2
	d4 fis cis2

	e4 fis8 gis ais4 gis8 g
	fis e d2 r4
	a'4 cis gis2
	a4 cis gis2
	a4 b8 cis d4 cis
	b4 cis8 dis gis,4. r8
	a4 cis gis2

	a4 cis gis2
	b4 cis8 dis eis4 dis8 d
	cis b a2 a8 r8
\stemDown
	d,4 fis fis2 
	d4 fis fis2 
	d4 <cis8 e> <d fis> g4 fis 
	e4 <d8 fis> <e8 gis> fis4. r8
	d4 fis g2

	d4 fis g2 
	e4 \stemUp <d8 fis> \stemDown <e gis> ais4 gis8 g 
	<d8 fis> <cis e> d2 r4
\stemBoth
	g'2 d
	g d
	g b,
	cis2 fis4. r8

	c2 g
	c g
	c g
	fis b4. r8
	g2 d
	g d
	g d
	cis fis4. r8

	c2 g
	c g
	c g
	fis fis4. r8
	fis2 fis4. r8
	fis1 
	fis2 fis8 r r4
	fis2 fis8 r r4
	fis1


}

violoncelliIII =  \notes \relative c {
	\time 4/4
	\key d \major

	s1 s s s s s

	s s s s s s s

	s s s
\stemDown
	b4 d cis2 
	b4 d cis2 
	b4 s8 s e4 d 
	cis4 s8 s8 cis4. r8
	b4 d cis2

	b4 d cis2 
	cis4 s8 s fis4 \shiftOn e4 \shiftOff
	s8 s b2 r4
\stemBoth
	s1 s s s

	s s s s s s s s

	s s s s s s s s s
}