\version "2.6.0"

mIViolinOne =  \relative csharp'' {
	\clef "treble"
	\key csharp \minor
	\time 2/2
	
	\partial 4*1 \noDynamic gsharp4\mf(\<
	bsharp2 csharp)\!
	a2.\sf\> gsharp4\p(\!
	fsharp a gsharp fsharp
	e fsharp gsharp2)~
	gsharp4( b!2 a4)~
	a( esharp fsharp a
	g esharp2 esharp'4)
	fsharp2( e!4 dsharp!)~
	dsharp fsharp( e) e~
	\setTextCresc
		e(_\< dsharp2 e4)~
	e2.( d4)~\!
	d(_\markup { \italic dim. } csharp bsharp b\p)~
	b d,( csharp asharp')~
	asharp b2( csharp4
	d b csharp d)
	e2.( d4)~
	d( csharp d e)
	\setTextCresc
		fsharp2.\< fsharp4(
	a! gsharp fsharp e)~
	e2\p(\! dsharp!4) gsharp(\<
	bsharp2 csharp)\!
	b!4\p( a) r fsharp(\<
	asharp2 b)\!
	a!4\p( gsharp) r2
	r2 r4 b4(_\cr
	dsharp2 e4. b,8)
	bsharp2\sf(\> csharp4 b\p\!
	asharp csharp b a
	gsharp b a gsharp
	fsharp a gsharp fsharp
	e) e'( fsharp asharp
	b dsharp, e gsharp)
	asharp( csharp, dsharp fsharpsharp)
	gsharp2. fsharpsharp4~_\cr
	fsharpsharp( csharp'2 b4)~
	b\rfz(\> asharp csharp b\!
	asharp\p csharp b asharp)
	b( dsharp csharp b
	asharp2 b4 csharp)
	b2( csharp4 dsharp)~
	dsharp( dsharp,2.)~
	dsharp1~
	dsharp2. eflat4(
	d f eflat d
	
	\key gflat \major
	
	eflat gflat f eflat)
	r bflat'( aflat g)
	R1
	r4 aflat( gflat! f)
	r bflat( aflat gflat)
	\setTextCresc
		aflat\< aflat( bflat, bflat')~
	bflat bflat( c, c')~
	c c( dflat, dflat')~
	dflat dflat( eflat,) r8 fsharp\!
	
	\key b \major
	
	asharp4\f(\> b gsharp4.)\! gsharp8\p~
	gsharp[ gsharp( fsharp e] dsharp[ e] fsharp4)~
	fsharp8[ fsharp( e dsharp] csharp[ dsharp] e4)~
	\setTextCresc
		e8[_\< e( dsharp csharp])~ csharp[ fsharp( e dsharp])~
	dsharp[ gsharp( fsharp e])~ e[ a( gsharp fsharp])~\!

	\override TextSpanner #'edge-text = #'("più cresc." . "") \textSpannerDown
	fsharp[_\startTextSpan b( a gsharp])~ gsharp[ csharp( b a])~
	
	\key a \major
	
	a[ d!( csharp b])~ b[ e( d csharp])~_\stopTextSpan
	csharp\rfz[( fsharp]) r d~ d[(_\markup { \italic dim. } csharp d b])
	R1
	r4 e\p( gsharp2_\markup { \italic dol. }
	\setTextCresc
		a2\< fsharp)~
	fsharp4( e dsharp\!\> fsharp\!
	e\p d! csharp d)
	e2. e4(
	d csharp b csharp)
	d2. d4(
	csharp b)~
	b8[ a]( b4)
	csharp2 fsharp,4( gsharp
	a2) d,4( e
	fsharp e d e
	fsharp) r r2
	
	R1*6
	
	r2 e4(_\cr fsharp
	gsharp2) csharp,4( dsharp_>)~
	
	% csharp m
	
	dsharp\p( fsharp e dsharp
	e gsharp fsharp e)
	gsharp1~
	gsharp2. gsharp4(
	\setTextCresc
		bsharp\< dsharp csharp bsharp
	csharp e dsharp csharp)~
	csharp( gsharp a esharp
	fsharp dsharp\! e!4.\> dsharp8\p)~\!
	dsharp[ fsharp( e dsharp] csharp[ dsharp] e4)~
	e8[ e( dsharp csharp] bsharp[ csharp] dsharp4)~
	dsharp8[ a'( gsharp fsharp] esharp[ fsharp] gsharp4)~
	gsharp8[ b( a gsharp] a[ b] csharp4)~
	csharp8[ csharp( b a] b[ d csharp b])~
	b\p[ b( a gsharp] fsharp[ esharp fsharp gsharp])
	csharp,4 r r2
	r2 r4 
		\setTextCresc
		csharp4(\<
	esharp2 fsharp)\!
	dsharp!2.\sf dsharp4\p(
	csharp_\cr e! dsharp csharp)
	bsharp\f( csharp) dsharp2\sf~
	dsharp4(\> fsharp e dsharp)~\!
	\setTextCresc
		dsharp( a'\< gsharp fsharp)~
	fsharp( b a gsharp)~
	gsharp( csharp b a)\!
	csharp2.\sf(\> d4)\!
	r8 gsharp,8\p( gsharp,4.) gsharp'8( fsharp4)
	asharp2.\sf(\> bsharp4)~\!
	bsharp8 bsharp,\p( fsharp'4.) fsharp8[( esharp csharp])~
	csharp[ csharp']( csharp,4. d'8_\cr csharp4)
	esharp2(\< fsharp)\!
	d1\sf\>
	csharp2.\p\! d4\sf~
	d1\>
	csharp2.\p\! a4\sf~
	a a(\> gsharp fsharp
	esharp\p fsharp) gsharp2~
	gsharp2.~_\markup { \italic {cresc. dim. }} gsharp4~
	gsharp~_\markup { \dynamic p \italic più \dynamic p } gsharp~ gsharp csharp,,\pp(
	csharp'2.)^\fermata s4
}