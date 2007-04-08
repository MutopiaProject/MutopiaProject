\version "2.6.0"

mICello =  \relative csharp {
	\clef "bass"
	\key csharp \minor
	\time 2/2
	
	\partial 4*1 r4
	R1*11
	
	r2 r4 csharp\p(\<
	esharp2 fsharp)\!
	d2.\sf csharp4\p(
	b d csharp b
	a b) csharp2~
	csharp4( e! d csharp)
	\setTextCresc
		b^(\< csharp d dsharp)~
	dsharp( e fsharp fsharpsharp)
	gsharp\p(\! a gsharp fsharp!)~
	fsharp esharp r
	csharp,(\<
	esharp2 fsharp)\!
	e!4\p( dsharp) r b'(
	d2 e!4)
		\clef "tenor"
		b'(_\cr
	dsharp2 e)~
	e2.
		\clef "bass"
		e,,4
	gsharp2\sf(\> a4 g\p\!
	fsharp asharp b dsharp
	e gsharp,! a! csharp
	dsharp fsharp, gsharp bsharp
	csharp) r r
		\clef "tenor"
		e'(
	dsharp gsharp e dsharp
	csharp e dsharp csharp)
	b( csharp dsharp)
	dsharp,~_\cr
	dsharp2( e)
	fsharp1\rfz~\>
	fsharp\p~\!
	fsharp2.
		\clef "bass"
		fsharp,4(
	csharp' e dsharp csharp
	dsharp fsharp e dsharp)
	dsharp1
	gsharp,
	eflat'
	bflat
	
	\key gflat \major
	
	eflat2 eflat,
	R1
	r4 eflat( dflat c)
	
	\clef "tenor"
	r f''4( eflat dflat)~
	dflat r r
		\clef "bass"
		dflat,,(
	\setTextCresc
		f2\< gflat4) eflat(
	g2 aflat4) f(
	a2 bflat4) fsharp(
	asharp2 b)\!
	
	\key b \major
	
	gsharp2.\f\> fsharp4\p(
	e gsharp fsharp2)
	dsharp4( fsharp e2)
	\setTextCresc
		csharp4(\< e dsharp fsharp)
	e( gsharp fsharp a)\!
	
	\override TextSpanner #'edge-text = #'("più cresc." . "") \textSpannerDown
	gsharp(\startTextSpan b a csharp)
	
	\key a \major
	
	b( d! csharp e)~
	e8[\stopTextSpan d\rfz( e fsharp] gsharp[_\markup { \italic dim. } a d, e])~
	e\rfz[( d e fsharp]) e4
		\clef "tenor"
		gsharp'4_\markup { \italic dim. }
	a2\p~
		\setTextCresc a~_\<
	a1
	a2.~ a4_>\!
	gsharp2\p a~
	a4 r r2
	
	R1*4
	
	r2 r4 a4(_\markup { \italic dolce }
	a g fsharp g)
	a2. a4(
	g fsharp e fsharp)
	g2. g4(
	fsharp e)~ e8[( d] e4)
	fsharp2 b,4( csharp)
	d1~
	d8[ d]( csharp2) b4~
	b8[ b]( a2) gsharp!4~_\cr
	gsharp8[ fsharp]( e4.)
		\clef "bass"
		csharp8( bsharp4)_>~
		
	bsharp\p dsharp( csharp bsharp
	csharp e dsharp csharp)
	dsharp( fsharp e dsharp
	e gsharp fsharp e)
	\setTextCresc
		gsharp,1\<
	csharp2( dsharp4 e)
	esharp2( fsharp4 gsharp
	a\! fsharpsharp gsharp\> gsharp,\p)\!
	
	R1*8
	
	r2
		\setTextCresc
		fsharp2\<
	bsharp1
	csharp
	a\f~\!
	a2\> gsharp\!
	\setTextCresc
		fsharp\< a
	gsharp fsharp
	e! fsharp
	g\rfz\! fsharp~\>
	fsharp\p\! e~
	e dsharp~
	dsharp csharp4 csharp(_\cr
	esharp2 fsharp)
	d\f(\> csharp4 bsharp)~\!
	bsharp1\sf\>
	csharp2.\p\! bsharp4\sf~
	bsharp1\>
	csharp2.\p\! << { s4 } \\ { csharp4\sf~ } >>
	<< { dsharp'2\rest gsharp,4( a } \\ { csharp,1~\> } >>
	<< { gsharp'4 a) } \\ { csharp,2\p\! } >> < csharp gsharp' >2~
	< csharp gsharp' >2.~_\markup { \italic {cresc. dim. }} < csharp gsharp' >4~
	< csharp gsharp' >4_\markup { \dynamic p \italic più \dynamic p } csharp4( csharp2)~
	csharp2.\fermata\pp s4
}