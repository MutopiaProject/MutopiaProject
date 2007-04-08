\version "2.6.0"

mIViola =  \relative csharp' {
	\clef "alto"
	\key csharp \minor
	\time 2/2
	
	\partial 4*1 r4
	R1*7
	
	r2 r4 gsharp4(\<
	bsharp2 csharp)\!
	a2.\sf\> gsharp4(\!
	fsharp_\cr a gsharp fsharp
	e_\markup { \italic dim. } fsharp) gsharp2\p~
	gsharp4( gsharp' asharp fsharp)~
	fsharp g,( fsharp e
	d)( f e d)
	csharp( d e fsharp!)~
	fsharp( g fsharp e)
	\setTextCresc
		d^(\< e fsharp^) fsharp'~
	fsharp( e dsharp! csharp)~
	csharp2\p(\! bsharp)
	r4 gsharp2( esharp4)
	csharp( csharp' a asharp)
	r fsharp2( dsharp!4
	b'!\p) gsharp'^(_\cr fsharp e^)
	r b'( a gsharp
	fsharp b, a gsharp)~
	gsharp\sf^(\> e!2 csharp4\p^)~\!
	csharp fsharp2( fsharp'4
	e) e,2 e4
	fsharp( dsharp2 dsharp'4)
	csharp( gsharp' fsharp2)
	fsharp4( b gsharp fsharp)
	e r r2
	r2 r4 dsharp(_\cr
	fsharpsharp2 gsharp)
	e2.\rfz\> dsharp4(\!
	csharp\p e dsharp csharp
	dsharp fsharp! e dsharp)
	fsharp,1~
	fsharp4( b asharp b)
	asharp( csharp b asharp
	gsharp b asharp gsharp)
	asharp( csharp b bflat)~
	bflat( aflat gflat f
	
	\key gflat \major
	
	gflat bflat aflat) gflat'4(
	f2 eflat4) eflat,(
	g2\< aflat)\!
	f4\p r r dflat(\<
	f2 gflat!)\!
	f4( dflat2) gflat8[( g])~
	g4( eflat2) aflat8[( a])~
	a4( f2) a8[( bflat])~
	bflat4( fsharp2) asharp8[( b])
	
	\key b \major
	
	b8\f[(\> csharp) csharp( dsharp]) dsharp4\! dsharp,8[( bsharp'\p])
	csharp[( e dsharp csharp] b![ csharp] dsharp4)~
	dsharp8[ dsharp( csharp b] a[ b]) csharp4~
	\setTextCresc
		csharp8[\< csharp( b a] dsharp)[ dsharp( csharp b]
	e)[ e( dsharp csharp] fsharp)[ fsharp( e dsharp])~
	
	\override TextSpanner #'edge-text = #'("più cresc." . "") \textSpannerDown
	dsharp[\!\startTextSpan gsharp( fsharp e])~ e[ e( d csharp]
		
	\key a \major
	
	g[ fsharp f d'] e)[ e,( fsharp g])~\stopTextSpan
	g[ fsharp\rfz( gsharp! a] b)[_\markup { \italic dim. } a( fsharp gsharp])
	asharp\rfz[( d csharp b])~ b[(_\markup { \italic dim. } a e d'])~
	d\p[( csharp]) csharp'4~ csharp8[
		\setTextCresc
		csharp,(\< esharp8. fsharp16])
	d2( fsharp4 d'
	bsharp csharp) bsharp~\!\> bsharp\!
	b!4\p( e!2 d4
	csharp) r r2
	
	R1*4
	
	r2 r8 a8( g4)
	fsharp r r d(
	d csharp b csharp)
	d2. d4(
	csharp b asharp b)
	csharp2. csharp4~
	csharp8[( b] a!4)~ a8[( a']) g4~
	g8[ g]( fsharp2 f4)
	e2 d
	csharp~ csharp8[ csharp]( bsharp4)~
	bsharp gsharp!~ gsharp gsharp->(
	
	% csharp m
	
	a\p gsharp2) gsharp4~
	gsharp( e fsharp gsharp)
	fsharp'( dsharp e fsharp
	gsharp e bsharp' csharp)
	\setTextCresc
		dsharp(\< bsharp csharp dsharp
	gsharp, e fsharp gsharp)~
	gsharp( b,! a b
	csharp asharp\! csharp\> bsharp\p)\!
	R1
	r2 r4 gsharp4\p(\<
	bsharp2 csharp)\!
	a!2.\sf\> gsharp4(\!
	fsharp\p a gsharp fsharp
	esharp fsharp) gsharp2~
	gsharp8[ gsharp( fsharp e!] d[ e] fsharp4)~
	fsharp8[ fsharp( esharp csharp] fsharp)
		\setTextCresc
		fsharp'4(\< esharp8)
	b'8[( d csharp b])~ b[ csharp,( b a])~
	a[ a( gsharp fsharp])~ fsharp[ fsharp( gsharp a])~
	a[ gsharp( fsharp e])~ e[ e( fsharp gsharp])\!
	fsharp4\f fsharp4. dsharp!8[( e fsharp])
	fsharp[ bsharp,( csharp dsharp]) csharp(\> fsharpsharp4 gsharp8)\!
	a4.
		\setTextCresc
		a8(\< csharp4.) d8(
	b4.) csharp,8( csharp'4 dsharp!8[ gsharp])~
	gsharp4. gsharp8( csharp,,4.) fsharp'8(\!
	e4.\rfz) a,8( a'4)\> fsharp,4(\!
	bsharp2._\cr csharp4)
	fsharp,4. csharp'8( fsharp,4.) dsharp'8(
	gsharp,4.) gsharp'8(_\cr gsharp,4.) gsharp'8(
	\noDynamic csharp,,4.\p)_\markup { \dynamic p \italic {cresc.}} csharp'8( csharp,4.) fsharp'8(
	d,4.) a''8(\< < e, gsharp >4.) fsharp'8(\!
	< fsharp, a >4\sf)\> fsharp( gsharp a\!
	gsharp\p fsharp esharp) fsharp\sf~
	fsharp fsharp(\> gsharp a\!
	gsharp\p fsharp esharp) fsharp\sf~
	fsharp fsharp(\> gsharp a\!
	gsharp\p fsharp esharp) < csharp gsharp' >4~
	< csharp gsharp' >2.~_\markup { \italic {cresc. dim. }} < csharp gsharp' >4~
	< csharp gsharp' >4~_\markup { \dynamic p \italic più \dynamic p }
		< csharp gsharp' >4~ < csharp gsharp' > csharp\pp(
	csharp'2.\fermata) s4
}