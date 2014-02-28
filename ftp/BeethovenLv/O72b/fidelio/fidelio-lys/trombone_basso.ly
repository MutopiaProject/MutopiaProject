\version "2.18.0"
theBassTrombones =  \relative c {
	\clef "bass"
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
	
	r2 gsharp'\p
	r gsharp_\cr
	r a
	r a
	r fsharp
	r fsharp
	r fsharp
	r fsharp
	r fsharp\f
	r_\markup { \italic {sempre piu \dynamic f} } fsharp
	r fsharp
	r fsharp
	fsharp1~\ff
	fsharp~
	fsharp~
	fsharp
	e4\sf r e\sf r
	e4\sf r e\sf r
	e4\sf r e\sf r
	e4\sf r b'\sf r
	b r b r
	e, r fsharp r
	e\sf r e\sf r
	e\sf r e\sf r
	e4\sf r e\sf r
	e4\sf r b'\sf r
	b r b r
	e, r fsharp r
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
	e r e r
	e4 r r2
	e4 r r2
	e4 r r2\fermata
}