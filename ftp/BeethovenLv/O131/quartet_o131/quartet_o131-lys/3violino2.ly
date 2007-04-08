\version "2.5.21"

mIIIViolinTwo =  \relative csharp' {
	\clef "treble"
	
	r4 fsharp-.\f fsharp-. r
	r2 r8 csharp16\p[( d]) e8-.[ fsharp-.]
	g4 r4 r2
	r4 b,-.\f fsharp'8-.[ d16\p( e]) fsharp8-.[ asharp,-.]
	b4 r4 r8 fsharp'16[( asharp]) b8-.[ fsharp-.]
	d4 r4 r8^\markup { \musicglyph #"scripts.caesura" }
		r8 r4
	r4 gsharp!\p( csharp, fsharp)
	< b, fsharp' > < fsharp' a >8 r r2
	r2 r8 dsharp8(_\cr e) e~
	e fsharp4.~_\markup { \dynamic rf } fsharp8 gsharp(\> fsharp < fsharp a >
	gsharp\p)\! b,[(_\cr gsharp d'!8] b) r < e e' >\f r
	
	
}