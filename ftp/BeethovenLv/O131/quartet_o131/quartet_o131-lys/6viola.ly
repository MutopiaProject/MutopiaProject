\version "2.6.2"

mVIViola =  \relative gsharp' {
	\clef "alto"
	
	r4 gsharp2~\<													|
	gsharp\! gsharp4\p(
	fsharpsharp4.. dsharp16 gsharp4
	asharp b2)_\markup { \italic {cresc.} \dynamic p }
	b8.( asharp16 gsharp4 fsharpsharp)								|
	gsharp-.( dsharp-.) dsharp~
	dsharp2 dsharp4~
	dsharp\< dsharp( gsharp)\!
	e(\> gsharp asharp!)											|
	gsharp2\p( fsharp!4)
	e8.(\< dsharp16)\! csharp4\> r\!
	r r dsharp														|
	csharp8.(\< b16)\!\> a4\! dsharp~
	dsharp8.( csharp16) b4(_\cr dsharp)
	dsharp( csharp dsharp)~											|
	dsharp dsharp\sf(\> gsharp)\!
	a\p( b asharp)
	gsharp2 csharp,4~
	csharp2 e4
	dsharp8.(\< csharp16)\!\> b4\! asharp~							|
	asharp2 dsharp4~
	dsharp8.(_\cr csharp16) b8.( asharp16) gsharp8 dsharp''			|
	dsharp2 dsharp4
	e( dsharp\sf\> e)~
	e8\! e,( gsharp4_\markup { \italic {dim.}} asharp!)				|
	a8.\p( gsharp16 fsharp4 e)
	dsharp8.[(_\cr csharp16] bsharp8[ dsharp csharp) csharp]~
	csharp csharp\p[~\< csharp] csharp[(\! bsharp\p]) r				|
}