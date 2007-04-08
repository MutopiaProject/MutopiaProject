\version "2.5.21"

mIIICello =  \relative csharp' {
	\clef "bass"
	
	r4 b-.\f asharp-. r
	R1
	r2 r8 e-.\p csharp-. fsharp-.
	d4-. b'-.\f b,-. r
	R1
	r8 b'16\p[( csharp]) d8-.[ fsharp,-.] b^\markup { \musicglyph #"scripts.caesura" }
		r r4
	r esharp,,( fsharp a)
	b4~ b8 r r2
	r2 r8 a(_\cr gsharp gsharp'
	a) asharp4.~_\markup { \dynamic rf } asharp8( b4.)\>
	e,8\p\! e,(_\cr f2 e8\f) r
}