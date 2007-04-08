\version "2.6.2"

mVIViolinOne =  \relative dsharp' {
	\clef "treble"
	
	r4 dsharp2~\<													|
	dsharp\! dsharp4\p
	dsharp2 dsharp4
	dsharp dsharp(_\markup { \italic {cresc.} \dynamic p } gsharp)
	e( b csharp)
	b r gsharp''													|
	fsharpsharp4..( dsharp16 gsharp4)
	asharp(\< b2)\!
	b8.(\> a16 gsharp4 fsharpsharp)\!
	gsharp2\p( fsharp!4)											|
	r r e(
	dsharp8.\< csharp16)\! b4\> r\!
	R1*3/4
	r4 b'8.(_\cr asharp16) gsharp4(
	fsharpsharp4.. dsharp16 gsharp4)
	asharp( b2)\sf\>
	b8.\p(\! a16) gsharp4( fsharpsharp)								|
	gsharp2( fsharp!4)
	e8.(\< dsharp16)\! csharp4\> r\!
	R1*3/4
	r4 r csharp'
	b8.(_\cr asharp16) gsharp4 gsharp(
	fsharpsharp4.. dsharp16 gsharp4)
	asharp( b2\sf)													|
	b8.(_\markup { \italic {dim.}} a16 gsharp4 fsharpsharp)
	fsharp!8.\p( e16 dsharp4 csharp)
	bsharp8.[(_\cr asharp!16] gsharp8[ fsharp e) a']~				|
	a[( gsharp\p])~\< gsharp16[ gsharp( csharp e]\!
		\override Beam  #'positions = #'(0 . 0)
		\stemDown fsharp\p)[
		\stemUp bsharp,,,( dsharp16. csharp32])
}