\version "2.6.2"

mVICello =  \relative gsharp {
	\clef "bass"
	
	r4 gsharp2~\<												|
	gsharp\! gsharp4\p(
	asharp2 gsharp4)
	fsharpsharp( gsharp_\markup { \italic {cresc.} \dynamic p } e)
	csharp( dsharp) dsharp
	gsharp-.( gsharp-.) gsharp(									|
	asharp2 gsharp4)
	fsharpsharp(\< gsharp e')\!
	csharp(\> dsharp) dsharp~\!
	dsharp\p( gsharp, asharp)~									|
	asharp2 b4~
	b2 fsharpsharp4~
	fsharpsharp2 gsharp4~
	gsharp2 gsharp4(_\cr										|
	asharp2 gsharp4)
	fsharpsharp( gsharp\sf\> e')\!
	csharp\p( dsharp) dsharp~
	dsharp( gsharp,) asharp~
	asharp2 b4~													|
	b2 fsharpsharp4~
	fsharpsharp2 gsharp4~
	gsharp2_\cr
		\clef "tenor"
		gsharp'4(
	asharp2 gsharp4)											|
	fsharp!( b,\sf\> e)
	csharp(\! dsharp)_\markup { \italic {dim.}} dsharp			|
	gsharp,2.\p~
	gsharp4._\cr gsharp8[( a)
		\clef "bass"
		fsharp,!](
	fsharpsharp[ gsharp\p\< csharp gsharp])\! gsharp\p r		|
}