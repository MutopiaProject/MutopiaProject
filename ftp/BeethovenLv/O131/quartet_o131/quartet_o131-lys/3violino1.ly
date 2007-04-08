\version "2.6.0"

mIIIViolinOne =  \relative csharp' {
	\clef "treble"
	
	r4 fsharp-.\f csharp'-. r4
	r8 fsharp,16\p[( gsharp]) asharp8-.[ b-.] csharp8 r8 r4
	R1
	r4 fsharp,4-.\f d'-. r
	r8 b16\p[( csharp]) d8-.[ e-.] fsharp r r4
	r2 r8^\markup { \musicglyph #"scripts.caesura" }
		r8 r4
	r4 b,\p( a! fsharp'8. e16)
	e8[( dsharp])~
	dsharp32[(_\markup { \italic {più vivace}} csharp b csharp dsharp csharp dsharp e]
		fsharp[ e fsharp gsharp a b a gsharp] fsharp[ gsharp fsharp e dsharp e dsharp csharp]
	b[ csharp b asharp a gsharp fsharp e] dsharp[ csharp b dsharp fsharp a b dsharp]
		fsharp[ a csharp b]) b8[~_\cr b( e,])~
	e[( csharp_\markup { \dynamic rf } dsharp e]) e( b4.)~\>
	b8\p\! r8 r4 r2
}