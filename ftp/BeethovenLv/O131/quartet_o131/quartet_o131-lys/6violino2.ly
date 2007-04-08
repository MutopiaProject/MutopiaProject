\version "2.6.2"

mVIViolinTwo =  \relative b {
	\clef "treble"
	
	r4 b2~\<											|
	b\! b4\p(
	csharp2 b4)
	csharp( b)_\markup { \italic {cresc.} \dynamic p } < gsharp e' >
	csharp( dsharp) < asharp dsharp >
	< gsharp dsharp' >-.^( b'-.^) b(					|
	csharp2 b4)
	csharp(\< b) b\!
	e(\> b csharp)\!
	b2\p( csharp4)
	
	R1*3/4*2
	
	r4 r csharp
	b8.( asharp16) gsharp4(_\cr b
	csharp dsharp b)(
	csharp b2\sf)\>										|
	e,4\p(\! gsharp csharp)
	b2( csharp4)~
	csharp( fsharp,) r
	r r dsharp'											|
	csharp8.(\< b16)\! asharp4\> r\!
	r dsharp8.(_\cr csharp16) b8[ b](
	csharp2 b4)
	csharp( b\sf gsharp
	a8)_\markup { \italic {dim.}} a( b4 csharp)			|
	bsharp2\p( gsharp4)
	fsharp8.[(_\cr e16] dsharp8[ bsharp csharp) < e csharp' >]~
	< e csharp' > < e csharp' >\p[~\< < e csharp' >] < e csharp' >[(\! dsharp'\p]) r
}