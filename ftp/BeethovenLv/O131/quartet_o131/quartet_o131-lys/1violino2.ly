\version "2.6.0"

mIViolinTwo =  \relative csharp' {
	\clef "treble"
	\key csharp \minor
	\time 2/2
	
	\partial 4*1 r4
	
	R1*3
	
	r2 r4 csharp(\<
	esharp2 fsharp)\!
	d2.\sf\> csharp4\p(\!
	b d csharp b
	a b csharp) bsharp(
	dsharp gsharp,2) gsharp'4(
	\setTextCresc
		bsharp2\< csharp4 b
	asharp csharp b) a,!(\!
	gsharp_\markup { \italic dim. } a dsharp! esharp\p)
	d( b asharp csharp)
	d( b2 asharp4)
	b( gsharp a! b
	csharp2.) b4(
	asharp2 b4 csharp)
	\setTextCresc
		d(\< asharp' b bsharp)
	bsharp( csharp a! asharp)
	gsharp\p(\! fsharpsharp gsharp dsharp')
	R1
	r4 csharp2\p( asharp4\<
	fsharp!) fsharp( d dsharp)\!
	r b'\p( a!_\cr gsharp
	fsharp gsharp fsharp e!
	a gsharp c, b)
	e2.\sf\> esharp4\p(\!
	fsharp e! dsharp b~
	b d csharp! e
	a, csharp bsharp gsharp~)
	gsharp b'!( dsharp! csharp
	b) r r b(
	asharp fsharpsharp2 asharp4)
	dsharp,( e_\cr b') asharp~
	asharp asharp,( gsharp gsharp')
	csharp,\rfz(\> g'2 fsharp!4)~\!
	fsharp\p( asharp b < e, csharp' >)
	fsharp( b asharp b
	e csharp b asharp)
	fsharp'( dsharp csharp b)
	fsharpsharp( asharp gsharp! fsharp
	b dsharp csharp b)
	fsharpsharp( asharp gsharp gflat
	f d eflat f
	
	\key gflat \major
	
	bflat, eflat f) bflat(
	d2\< eflat)\!
	< eflat, c' >4\p r r aflat4(
	c2\< dflat!)\!
	bflat4\p( dflat cflat! bflat)
	\setTextCresc
		aflat(\< dflat,4. cflat!8) bflat4~
	bflat( eflat4. dflat8) c4~
	c( f4. eflat8) dflat4~
	dflat( gflat4. e8) dsharp4~\!
	
	\key b \major
	
	dsharp4\f r b'8[(_\> bsharp) bsharp( dsharp\p])\!
	gsharp,[ csharp,( dsharp e] fsharp[ e b) fsharp']~
	fsharp[( gsharp] a4)~ a8[ a( gsharp fsharp]
	\setTextCresc
		e[\< fsharp] gsharp4) fsharp8[( gsharp] a4)
	gsharp8[( a] b4) a8[( b] csharp4)~\!
	
	\override TextSpanner #'edge-text = #'("più cresc." . "") \textSpannerDown
	csharp8[\startTextSpan b( csharp d])~
		d[ csharp( d e])~
		
	\key a \major
	
	e8[ d( a gsharp] g)[ csharp( b asharp])~\stopTextSpan
	asharp b\rfz( csharp d]) e,(_\markup { \italic dim. } a!4 gsharp!8)
	csharp8\rfz[( fsharp]) r d~ d[(_\markup { \italic dim. } csharp d b])~
	b\p[( a]) r4 r
		\setTextCresc
		d(\<
	esharp4. fsharp8 d4) fsharp(
	dsharp e! fsharp)\!\> dsharp_>\!
	e\p( b' a b)
	a( gsharp fsharp gsharp)
	a2. a4(
	gsharp fsharp esharp fsharp)
	gsharp2. gsharp4~
	gsharp8[ fsharp]( e!2 d4)~
	d8[( csharp] b2 csharp4)
	d1~
	d4 r r2
	
	R1*4
	
	r2 a'4( b
	csharp2) fsharp,4( gsharp
	a2) r2
	r2 e,4_\cr fsharp->~

	% csharp m
	
	fsharp\p bsharp,( csharp fsharp
	e gsharp, bsharp csharp)
	bsharp'( dsharp csharp bsharp
	csharp e dsharp e)
	\setTextCresc
		fsharp(\< dsharp e fsharp
	e gsharp, bsharp csharp)~
	csharp( d csharp < d, d' >)
	csharp'2~\! csharp8[(\> e,]\! fsharp4\p)
	r2 r8 a8\p[( gsharp fsharp]
	e[ fsharp] gsharp4.) gsharp8[( fsharp e]
	dsharp[ e fsharp dsharp'])~ dsharp4( esharp8)[ csharp,](
	esharp2_\cr fsharp)
	d2.\sf\> d'4~\!
	d\p d4. d8[( csharp b]
	a[ b] csharp4.) csharp8[( b a]
	gsharp[ a] b4)~ b8[( a]) gsharp4~\<
	gsharp8[( b a gsharp])~ gsharp[ a( gsharp fsharp])~
	fsharp[ fsharp( gsharp a])~ a[ a( gsharp fsharp])~
	fsharp[ e( dsharp! csharp])~ csharp[ csharp( dsharp e]\!
	< dsharp fsharp >\f)[ dsharp( e fsharp]) fsharp2\sf~
	fsharp4(\> e8)[ dsharp]~ dsharp[( csharp] bsharp4)~\!
	\setTextCresc
		bsharp8[\< bsharp']( a4.) esharp8( fsharp4)~
	fsharp8[ b!]( esharp,4.) fsharp8( bsharp4)~
	bsharp8[( csharp] csharp,4.) csharp8( csharp'4)~\!
	csharp8[ a\rfz]( e'4)~ e8[(\> d) d( gsharp,])\!
	dsharp'!4.\p dsharp,!8( gsharp,4)( asharp8)[ asharp']~
	asharp[ fsharp']( fsharp,4)~ fsharp8[ fsharp']( gsharp,)[ gsharp,](
	bsharp2_\cr csharp)
	\noDynamic gsharp\p(_\markup { \dynamic p \italic {cresc.}} a!)~
	a8[ a']( a,4.)\< b''8(\! < a, a' >4)~
	< a a' >\sf a(\> gsharp fsharp\!
	esharp\p fsharp gsharp) < a a' >~
	< a a' > a4(\> gsharp fsharp\!
	esharp\p fsharp gsharp) < bsharp, dsharp! >\sf~
	< bsharp dsharp > < bsharp dsharp >^(\> < csharp esharp > < bsharp dsharp >
	< csharp esharp >\p < bsharp dsharp >^) < esharp csharp' >2~
	< esharp csharp' >2._\markup { \italic {cresc. dim.}} < esharp csharp' >4~
	< esharp csharp' >4~_\markup { \dynamic p \italic più \dynamic p } < esharp csharp' >~ < esharp csharp' >
		csharp\pp~
	csharp2.\fermata s4
}