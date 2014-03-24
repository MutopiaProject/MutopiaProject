\version "2.18.0"
theTenorTrombones =  \relative e' {
	\clef "tenor"
	\time 2/2
	\key e \major

	r1
	R1*2
	r1\fermata
	R1*225

	e4.\ff b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. e-.
	b-. r r2\fermata

	R1*32

	r2 b2\p
	r b_\cr
	r c
	r c
	r a'
	r a
	r a
	r a
	r a\f
	r_\markup { \italic {sempre piu \dynamic f} } a
	r a
	r a
	a1~\ff
	a~
	a~
	a
	gsharp4\sf r e\sf r
	e\sf r e\sf r
	e\sf r e\sf r

	e\sf r b'\sf r
	b r b r
	gsharp r a r
	gsharp\sf r e\sf r
	e\sf r e\sf r
	e\sf r e\sf r
	e\sf r b'\sf r
	b r b r
	gsharp r a r
	e1\sf~
	e
	gsharp\sf~
	gsharp
	b\sf~
	b
	e,\sf~
	e~
	e4 r e r
	e4 r e r
	e4 r e r
	e4 r e r
	e4 r r2
	e4 r r2
	e4 r r2\fermata
}