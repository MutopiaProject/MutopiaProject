\version "2.18.0"
theCellos =  \relative c {
	\clef "bass"
	\time 2/2
	\key e \major

	e4.\f b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. e-.
	b-. r r2\fermata

	R1*8

	a'4.\f e8 e4-. r
	csharp'4.\sf a8 a4-. r
	e'4.\sf csharp8 csharp4-. a-.
	e-. r r2\fermata

	R1*6

	\tuplet 6/4 { c,8\pp[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[(_\cr a' c, a' c, a'] } \tuplet 6/4 { c,8[ a' c, a' c, a']) }
	\tuplet 6/4 { c,8[( a' c, a' c, a'] } \tuplet 6/4 { c,8[ c' c, c' c, c']) }
	\tuplet 6/4 { c,8[( c' c, c' c, c'] } \tuplet 6/4 { c,8[ c' c, c' c, c']) }
	\tuplet 6/4 { c,8[( c' c, c' c, c'] } \tuplet 6/4 { c,8[ c' c, c' c, c']) }
	\tuplet 6/4 { b[( fsharp'! b, fsharp' b, fsharp'] } \tuplet 6/4 { b,[ fsharp' b, fsharp' b, fsharp']) }
	\tuplet 6/4 { b,[( fsharp' b, fsharp' b, fsharp'] } \tuplet 6/4 { b,[ fsharp' b, fsharp' b, fsharp']) }
	\tuplet 6/4 { b,[( fsharp' b, fsharp' b, fsharp'] } \tuplet 6/4 { b,[ fsharp' b, fsharp' b, fsharp']) }
	\tuplet 6/4 { b,[( fsharp' b, fsharp' b, fsharp'] } \tuplet 6/4 { b,[ fsharp' b, fsharp' b, fsharp']) }
	\tuplet 6/4 { b,[( g' b, g' b, g'] } \tuplet 6/4 { b,[ g' b, g' b, g']) }
	\tuplet 6/4 { b,[( g' b, g' b, g'] } \tuplet 6/4 { b,[ g' b, g' b, g']) }
	b,8\ff r b r b r b r
	b r b r b r b r
	b\p r r4 r2
	R1

	\set Staff.midiInstrument = #"pizzicato strings"
	r2^\markup { \italic pizz. } fsharp'4 r
	r2 fsharp4 r
	b, r r2
	R1
	r2 b'4 r
	r2 b4 r

	R1*2

	e,4^\markup { \italic pizz. } r r2

	R1*5

	\set Staff.midiInstrument = #"string ensemble 1"
	e1~^\markup { \italic arco }
	e
	dsharp4( b2 csharp8 dsharp
	e1)
	dsharp4( b2 csharp8 dsharp
	e1)
	dsharp4(_\cr b2 csharp8 dsharp)
	e4( b2) b4
	dsharp4( b2 csharp8 dsharp)
	e2:8\f e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e4 r e r
	e r e r
	b8\sf[ b b b] b2:
	b2: b2:
	e4 r e r
	e r e r
	b8\sf[ b b b] b2:
	b2: b2:
	e2: e2:
	e8\sf[ e e e] gsharp-.[ e-. csharp-. b-.]
	asharp4 r r2
	R1

	\set Staff.midiInstrument = #"pizzicato strings"
	r2 fsharp'4\p^\markup { \italic pizz. } r
	b r b, r
	fsharp r r2
	R1
	r2 fsharp'4\p^\markup { \italic pizz. } r
	b r b, r
	fsharp r r2

	\set Staff.midiInstrument = #"string ensemble 1"
	r4^\markup { \italic arco } gsharp'8 gsharp gsharp4 gsharp8 gsharp
	csharp,4 r r2
	r4 b8\p b b4 b8 b
	e4_\cr b8 b b4 b8 b
	e4 b8 b b4 b8 b
	e4\f b8 b e4 b8 b
	e4 b8 b e4 b8 b
	e1\ff
	e'8[ dsharp csharp b] a[ gsharp fsharp e]
	csharp1
	csharp'8[ b a gsharp] fsharp[ e dsharp csharp]
	asharp8[ asharp asharp asharp] asharp[ asharp asharp asharp]
	asharp8[ asharp asharp asharp] asharp[ asharp asharp asharp]
	asharp'2.\ff b4\sf
	asharp2. b4\sf
	asharp4 b\sf asharp4 b\sf
	asharp4 b\sf asharp fsharp\sf
	b dsharp,\sf e csharp\sf
	fsharp fsharp,\sf fsharp' fsharp,\sf
	b r r b\f~
	b r r b\f~
	b r r b\f~
	b r r b\f~
	b b8 b b4 r
	b b8 b b4 r
	b4 b8 b b4 b8 b
	b4 b8 b b4 b8 b
	b4 r r2

	R1*7

	\set Staff.midiInstrument = #"pizzicato strings"
	r2 d'4\p^\markup { \italic pizz. } r
	g r8 g, g4 r
	g' r8 g, g4 r
	g' r8 g, g4 r
	g' r8 g, g4 r
	c4 r8 c, c4 r
	e'4 r8 e, e4 r
	e'4 r8 e, e4 r
	e'4 r8 e, e4 r
	a4 r8 a, a4 r
	b r r2
	b4 r r2
	b4 r r2
	b4 r r2
	b4 r r2
	b4 r r2
	b4 r r2
	b4 r r2
	b4 r r2
	b4_\cr r b r
	b r b r
	e\p r r2

	R1*3

	r2 e4^\markup { \italic pizz. } r
	r2 e4 r
	r2 b4 r

	\set Staff.midiInstrument = #"string ensemble 1"
	r2 b4^\markup { \italic arco } b
	dsharp( b2 csharp8 dsharp)
	e4( b2) b4
	dsharp4(_\cr b2 csharp8 dsharp)
	e4( b2) b4
	dsharp4( b'2 csharp8 dsharp)
	e8\f[ e, e e] e[ e e e]
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e4 r e r
	e r e r
	b8\sf[ b b b] b[ b b b]
	b2: b2:
	e4 r e r
	e r e r
	b8\sf[ b b b] b2:
	b2: b2:
	e2: e2:
	e2: e2:
	e2: e2:
	e8\sf[ e e e] e-.[ d-. b-. a-.]
	gsharp4 r r2
	R1

	\set Staff.midiInstrument = #"pizzicato strings"
	r2 e'4\p r
	a r a, r
	e' r r2
	R1
	r2 e4\p r
	a r a, r
	e' r r2
	r2 r4 b
	fsharp' r r2
	R1
	r2 g4 r
		% NOTE: In the print version, this measure is r2 g4 r2, which is 5/4.
	c4 r c, r
	g r r2

	\set Staff.midiInstrument = #"string ensemble 1"
	r4 g'8_\cr^\markup { \italic arco } g g4 g8 g
	c4 g8 g g4 g8 g
	c4 g8 g g4 g8 g
	c4\f g8 g c4 g8 g
	c4 g8 g c4 g8 g
	c1\ff
	c8[ b a g] f[ e d c]

	\key c \major

	a1
	a'8[ g f e] d[ c b a]
	a'[ a a a] a[ a a a]
	a[ a a a] a[ a a a]
	a2. bflat4\sf
	a2. bflat4\sf
	a4 bflat\sf a bflat\sf
	a bflat\sf a fsharp\sf
	g e\sf f! d\sf
	g g,\sf g' g,\sf
	c r r c\f~
	c r r c\f~
	c r r c\f~
	c r r c\f~
	c c8 c c4 r
	c c8 c c4 r
	c4 c8 c c4 c8 c
	c4 c8 c c4 c8 c
	c4 c8 c c4 c8 c
	c4 c8 c c4 c8 c
	b4 r r b\f~
	b4 r r b\f~
	b4 r r b\f~
	b4 r r b\f~
	b b8 b b4 b8 b
	b4 b8 b b4 b8 b
	b4 b8 b b4 b8 b
	b4 r r2

	\key e \major

	e4.\ff b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. e-.
	b-. r r2\fermata

	R1*6

	\clef "treble"
	\tuplet 6/4 { a'4\p^(_\markup { \translate #(cons 3 0) \italic dolce } csharp e a gsharp fsharp }
	\tuplet 6/4 { e d csharp b csharp a^) }
	R1

	\clef "bass"
	\tuplet 6/4 { b,4\p( dsharp! fsharp a gsharp fsharp) }
	\tuplet 6/4 { b,( e gsharp b a gsharp) }
	\tuplet 6/4 { b,( e gsharp b a gsharp) }
	\tuplet 6/4 { b,( fsharp' a b a fsharp }
	\tuplet 6/4 { b a fsharp b a
		\tempo 4 = 100
		fsharp\fermata) }	% ritard!
	c4.\f b8_\markup { Bassi } b4 r
	c4. b8 b4 r
	c4-. b-. c-. b-.
	c4-. b-. c-. b-.
	e-. dsharp!-. e-. dsharp-.
	e-. dsharp-. e-. dsharp-.
	c'-. b-. e-. dsharp-.
	c-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	e,4.\f b8 b4 r
	e4.\sf b8 b4 r
	fsharp'4.\sf b,8 b4 r
	b'4.\sf b,8 b4 r
	e4.\p b8 b4 r
	e4. b8 b4 r
	fsharp'4. b,8 b4 r
	b'4. b,8 b4 r
	e'4._\cr e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e'4.\f e,8 e4 r
	e'4._\markup { \italic {sempre piu \dynamic f} } e,8 e4 r
	e'4. e,8 e4 r
	e'4. e,8 e4 r
	e2:\ff e2:
	e2: e2:
	e2: e2:
	e2: e2:
	e'4\sf dsharp csharp\sf b
	a\sf gsharp fsharp\sf e
	dsharp\sf d csharp\sf c
	b\sf asharp' a\sf gsharp
	fsharp\sf e dsharp!\sf csharp!
	b\sf b b\sf b
	e'4\sf dsharp csharp\sf b
	a\sf gsharp fsharp\sf e
	dsharp\sf d csharp\sf c
	b\sf asharp' a\sf gsharp
	fsharp\sf e dsharp!\sf csharp!
	b\sf b b\sf b
	e4.\sf b8 b4 r
	R1
	gsharp'4.\sf e8 e4 r
	R1
	b'4.\sf gsharp8 gsharp4 r
	R1
	e'4.\sf b8 b4 r
	R1
	e4 b e b
	e4 b e b
	e4 b e b
	e4 b e b
	e r r2
	e,4 r r2
	e4 r r2\fermata
}