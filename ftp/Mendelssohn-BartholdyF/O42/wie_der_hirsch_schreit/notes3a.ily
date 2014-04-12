\version "2.18.0"

pPiece = "No. 3. Recitativ."

Markings = {\time 4/4 s1*8 \bar "||"}
incmidi = "midi3a.ily"

oboesolo = \relative c'' {\key f \major
	d4\repeatTie r4 r2 |
	R1*7 |
}

flautoI = {\key f \major R1*8}
flautoII = \flautoI
oboeI = \flautoI
oboeII = \oboeI
clarinettoI = \flautoI
clarinettoII = \clarinettoI
fagottoI = \flautoI
fagottoII = \fagottoI

violinI = \relative c' {\key f \major
	a1 |
	fis'2\sf a ~|
	a r4 bes |
	b2\sf r4 b |
	e\sf a\p gis2 ~|
	gis1( |
	b4) r r2 |
	R1 |
}

violinII = \relative c' {\key f \major
	d1 |
	c2\sf c ~|
	c r4 bes |
	<b g'>2\sf r4 gis' |
	a\sf d,\p b2 ~|
	b1( |
	d4) r r2 |
	R1 |
}

viola = \relative c {\key f \major \clef alto
	fis1 |
	a2\sf d ~|
	d r4 d |
	d2\sf r4 e |
	e\sf a, e2 ~|
	e1 ~|
	e4 r4 r2 |
	R1 |
}

sopranosolo = \relative c'' {\key f \major \clef soprano
	r4 a8 d d a16 a a8 bes |
	c a fis g a4 r8 a16 d, |
	c'8. c16 bes8 a a bes r4 |
	d8. b16 b8 a a gis r4 |
	e'8.\f c16 a8. gis16 b2 |
	r8 e,\p gis b d b a g |
	r e gis16 gis\< b d\! f8 e d b |
	gis1 |
}

sopranosoloLyrics = \lyricmode {
	Mei -- ne Trä -- nen sind mei -- ne Spei -- se Tag und Nacht, weil man
	täg -- lich zu mir sa -- get, täg -- lich zu mir sa -- get: Wo ist nun
	dein Gott? Wenn ich dess in -- ne wer -- de, so schüt -- te ich mein
	Herz aus bei mir selbst:
}

soprano = {\key f \major \clef "soprano" R1*8}
sopranoLyrics = \lyricmode {}
alto = \soprano
altoLyrics = \sopranoLyrics

cello = \relative c {\key f \major \clef bass
	d1 |
	es2\sf fis, ~|
	fis r4 g' |
	f2\sf r4 e |
	c'\sf f,\p e2 ~|
	e1 ~|
	e4 r r2 |
	R1 |
}

contrabasso = \relative c {\key f \major \clef bass
	d1 |
	es2\sf fis, ~|
	fis r4 g' |
	f2\sf r4 e |
	c'\sf f,\p e2 ~|
	e1 ~|
	e4 r r2 |
	R1 |
}
